InsightsMetrics
| where TimeGenerated > ago(1h)
| where Namespace == "Processor"
| where Name == "UtilizationPercentage"
| summarize AvgCPU = avg(Val) by Computer
| order by AvgCPU desc