## simulate a event with 2% probability
runif(4, min=0, max=1)>.98

## Find the probability of at least one defective tire
N = 1000000 # number of repetitions
n = 0 # number of occurences
for(i in 1:N){
    if(sum(runif(4, min=0, max=1)>.98)>=1)
        n = n + 1
}
n/N
