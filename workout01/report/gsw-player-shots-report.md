GSW-player-shots-report
================
Coco Chen

#### Introduction:

Basketball stats were generally a nightmare for basketball coaches and analysts, for it requires significant amout of time and effort to acquire and compile. For most audiences, however, one of the most valuble and exciting data is often shot stats. In this report, I have compiled field shot statistics for 5of the most well-known players from Gold State Warriors.

#### Motivation

It is tempting to be able to predict the results of a season based on how well a team has done in the past. Indeed, many coaches and analysts have tried to do this, and these data also become important indicators for clubs and individuals decide how much money and time they would dedicate to a particular season. Among all available data, effective shots is probably the most direct one to analyze.

#### Background

The Golden State Warriors are famous for generating winning strikes every season. However, he statistics may not seem particularly outstanding at first glance. Many people might expect to see a close to 100% shot made. The highest total shot made stat among these five players is 0.54, created by Kevin Durant. Nevertheless, these stats are not surprising given the competitiveness on the court. Warriors are probably among the best shooting teams across NBA. Two of the highest shot made percentage seasons in NBA history are both from Golden State Warriors, and one of them (the highest season) are data we used to write this report.

#### Discussion

Some of the warriors are especially great at making two point field goals (Yes Iguodala, that’s you). Andrez Iguodala has a 63% percent success rate shooting at two point fields. Kevin Durant also has a success rate of 60%. However, compared to Iguodala, Durant also has a high success rate making three point field goals at 38 % success rate, providing him the highest success shot rate among the five players we have analyzed. Stephen Curry is also another amazing young shooter. You probably already knew this fact. Klay Thompson and Stephen Curry are probably the two players who make shots the most frequently. Iguodala, Green and Durant made 371, 578, 915 shots while Thompson made 1220 shots and Curry made 1250 shots.

#### DATA

<img src="/Users/hanluchen/workout01/images/gsw-shot-chart.png" width="80%" style="display: block; margin: auto;" />

``` r
shots_data <- read.csv("/Users/hanluchen/workout01/data/shots-data.csv")
clean_shots <- shots_data[c('name', "shot_type", "shot_made_flag")]
clean2 <- filter(clean_shots, shot_type =="2PT Field Goal")
clean3 <- filter(clean_shots, shot_type =="3PT Field Goal")
pt2 <- summarise(group_by(clean2, name), total_shots = sum(shot_type == '2PT Field Goal'), made = sum(shot_made_flag == 'shot_yes'), perc_made = made/total_shots)
pt3 <- summarise(group_by(clean3, name), total_shots = sum(shot_type == '3PT Field Goal'), made = sum(shot_made_flag == 'shot_yes'), perc_made = made/total_shots)

tt <- summarise(group_by(clean_shots, name), total_shots = length(shot_type), made = sum(shot_made_flag == 'shot_yes'), perc_made = made/total_shots)
pt2
```

    ## # A tibble: 5 x 4
    ##   name            total_shots  made perc_made
    ##   <fct>                 <int> <int>     <dbl>
    ## 1 Andrez Iguodala         210   134     0.638
    ## 2 Draymond Green          346   171     0.494
    ## 3 Kevin Durant            643   390     0.607
    ## 4 Klay Thompson           640   329     0.514
    ## 5 Stephen Curry           563   304     0.540

``` r
pt3
```

    ## # A tibble: 5 x 4
    ##   name            total_shots  made perc_made
    ##   <fct>                 <int> <int>     <dbl>
    ## 1 Andrez Iguodala         161    58     0.360
    ## 2 Draymond Green          232    74     0.319
    ## 3 Kevin Durant            272   105     0.386
    ## 4 Klay Thompson           580   246     0.424
    ## 5 Stephen Curry           687   280     0.408

``` r
tt
```

    ## # A tibble: 5 x 4
    ##   name            total_shots  made perc_made
    ##   <fct>                 <int> <int>     <dbl>
    ## 1 Andrez Iguodala         371   192     0.518
    ## 2 Draymond Green          578   245     0.424
    ## 3 Kevin Durant            915   495     0.541
    ## 4 Klay Thompson          1220   575     0.471
    ## 5 Stephen Curry          1250   584     0.467

#### Summary

Although Golden State Warriors have outstanding effect shots statistics. It is never the only data that determines how well this team does in a season. Evaluting an NBA team is much more complicated than what could be concluded from pure
