# FRISM light

Working Directory: FRISM_light_src
## initial run
Extract x% of sample from pouplation run
```shell
python frism_light_run.py -rt initial -md ../Pop_level_results/ -sn Dmd_G -yt 2030 -isr 10
```
## main run
Among x% of population, y% of smaple's tour will be updated.

```shell
python frism_light_run.py -rt main -md ../Pop_level_results/ -sn Dmd_G -yt 2030 -msr 40
```