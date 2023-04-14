# Transformation

map(func)             : returns a new distributed dataset formed 
                        by passing each element of the source through a function
filter(func)          : returns a new dataset formed by selecting those
distinct([numTasks])  : returns a new dataset that contains the distinct elements of the source dataset
flatmpa(func)         : similar to map. It can map each input item to zero or more output items. 
                        Func should return a Seq rather than a single item


# Action

redunce(func)            : Func takes two arguemtns and
                           returns one is commutative/ associative/ can be computed correctly in parallel
take(n)                  : returns an array with the first n element
collect()                : returns all the elements as an array
takeOrdered(n, key=func) : returns n elements ordered in ascending order or 
                           as specified by the optional key function
