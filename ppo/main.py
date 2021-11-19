import numpy as np
import tensorflow as tf

from MicroRacer_Corinaldesi_Fiorilla import tracks
from MicroRacer_Corinaldesi_Fiorilla.ppo.Agent import Agent


def max_lidar(observation, angle=np.pi / 3, pins=19):
    arg = np.argmax(observation)
    dir = -angle / 2 + arg * (angle / (pins - 1))
    dist = observation[arg]
    if arg == 0:
        distl = dist
    else:
        distl = observation[arg - 1]
    if arg == pins - 1:
        distr = dist
    else:
        distr = observation[arg + 1]
    return dir, (distl, dist, distr)

def observe(racer_state):
    if racer_state == None:
        return np.array([0])  # not used; we could return None
    else:
        lidar_signal, v = racer_state
        dir, (distl, dist, distr) = max_lidar(lidar_signal)
        return np.array([dir, distl, dist, distr, v])


def fromObservationToModelState(observation):
    state = observe(observation)
    state = tf.expand_dims(state, 0)
    return state


if __name__ == '__main__':
    print("tf.version = ", tf.version.VERSION)
    env = tracks.Racer()

    state_dim = 5  # we reduce the state dim through observation (see below)
    num_actions = 2  # acceleration and steering
    chunk_memory_size = 50

    agent = Agent(state_dimension=state_dim, chunk_memory_size=10)
    done = False
    # observation = env.reset() #prima osservazione
    # state = fromObservationToModelState(observation)
    # print("state in input of the net is ", state)
    # action = agent.choose_action(state)
    #
    # print("returned action is ", action)
    #
    # observation_, reward, done = env.step(action) # prima mossa
    #
    # print("obs_ ", observation_)
    # print("reward ", reward)
    # print("done ", done)
    #
    # agent.remember(observation, action, reward, done)
    n_races = 1
    N = 20;
    n_steps = 0  # conto gli step per fermarmi ogni N

    for race in range(n_races):
        observation = env.reset()
        done = False
        score = 0

        state = fromObservationToModelState(observation)

        agent.training2(state,env)
        #
        # while not done:
        #     state = fromObservationToModelState(observation)
        #     action, prob, v_value = agent.choose_action(state)
        #     observation_, reward, done = env.step(action)
        #     n_steps += 1
        #     score += reward
        #     agent.remember(state, action, prob, reward,v_value, done)
        #
        #     if n_steps % N == 0:
        #         agent.training(n_epochs= 50)
        #
        #     observation = observation_
