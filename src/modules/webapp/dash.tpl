{
    "lenses": {
      "0": {
        "order": 0,
        "parts": {
          "0": {
            "position": {
              "x": 0,
              "y": 0,
              "colSpan": 12,
              "rowSpan": 1
            },
            "metadata": {
              "inputs": [],
              "type": "Extension/HubsExtension/PartType/MarkdownPart",
              "settings": {
                "content": {
                  "settings": {
                    "content": "<h1 style=\"text-align: center;\">Project Dashboard (${name})</h1>\n",
                    "title": "",
                    "subtitle": "",
                    "markdownSource": 1
                  }
                }
              }
            }
          },
          "1": {
            "position": {
              "x": 0,
              "y": 1,
              "colSpan": 4,
              "rowSpan": 2
            },
            "metadata": {
              "inputs": [
                {
                  "name": "ComponentId",
                  "value": "/subscriptions/${sub_id}/resourceGroups/${rg}/providers/microsoft.insights/components/${name}"
                }
              ],
              "type": "Extension/AppInsightsExtension/PartType/AllWebTestsResponseTimeFullGalleryAdapterPart",
              "isAdapter": true,
              "asset": {
                "idInputName": "ComponentId",
                "type": "ApplicationInsights"
              }
            }
          },
          "2": {
            "position": {
              "x": 4,
              "y": 1,
              "colSpan": 4,
              "rowSpan": 2
            },
            "metadata": {
              "inputs": [
                {
                  "name": "options",
                  "isOptional": true
                },
                {
                  "name": "sharedTimeRange",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/MonitorChartPart",
              "settings": {
                "content": {
                  "options": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${sub_id}/resourceGroups/${rg}/providers/microsoft.insights/components/${name}"
                          },
                          "name": "availabilityResults/duration",
                          "aggregationType": 4,
                          "namespace": "microsoft.insights/components",
                          "metricVisualization": {
                            "displayName": "Availability test duration",
                            "resourceDisplayName": "${name}"
                          }
                        }
                      ],
                      "title": "Availability by Location",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        },
                        "disablePinning": true
                      },
                      "grouping": {
                        "dimension": "availabilityResult/location",
                        "sort": 1,
                        "top": 10
                      }
                    }
                  }
                }
              }
            }
          },
          "3": {
            "position": {
              "x": 8,
              "y": 1,
              "colSpan": 4,
              "rowSpan": 2
            },
            "metadata": {
              "inputs": [
                {
                  "name": "options",
                  "isOptional": true
                },
                {
                  "name": "sharedTimeRange",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/MonitorChartPart",
              "settings": {
                "content": {
                  "options": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${sub_id}/resourceGroups/${cosmos_rg}/providers/Microsoft.DocumentDb/databaseAccounts/${name}"
                          },
                          "name": "TotalRequests",
                          "aggregationType": 7,
                          "namespace": "microsoft.documentdb/databaseaccounts",
                          "metricVisualization": {
                            "displayName": "Total Requests",
                            "resourceDisplayName": "${name}"
                          }
                        }
                      ],
                      "title": "Cosmos Throttled Requests",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        },
                        "disablePinning": true
                      }
                    }
                  }
                }
              },
              "filters": {
                "StatusCode": {
                  "model": {
                    "operator": "equals",
                    "values": [
                      "429"
                    ]
                  }
                },
                "DatabaseName": {
                  "model": {
                    "operator": "equals",
                    "values": [
                      "${db}"
                    ]
                  }
                }
              }
            }
          },
          "4": {
            "position": {
              "x": 0,
              "y": 3,
              "colSpan": 4,
              "rowSpan": 2
            },
            "metadata": {
              "inputs": [
                {
                  "name": "options",
                  "isOptional": true
                },
                {
                  "name": "sharedTimeRange",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/MonitorChartPart",
              "settings": {
                "content": {
                  "options": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${sub_id}/resourceGroups/${rg}/providers/microsoft.insights/components/${name}"
                          },
                          "name": "requests/failed",
                          "aggregationType": 1,
                          "namespace": "microsoft.insights/components/kusto",
                          "metricVisualization": {
                            "displayName": "Failed requests"
                          }
                        }
                      ],
                      "title": "Failed Requests",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        },
                        "disablePinning": true
                      },
                      "grouping": {
                        "dimension": "request/resultCode",
                        "sort": 2,
                        "top": 10
                      }
                    }
                  }
                }
              }
            }
          },
          "5": {
            "position": {
              "x": 4,
              "y": 3,
              "colSpan": 4,
              "rowSpan": 2
            },
            "metadata": {
              "inputs": [
                {
                  "name": "options",
                  "isOptional": true
                },
                {
                  "name": "sharedTimeRange",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/MonitorChartPart",
              "settings": {
                "content": {
                  "options": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${sub_id}/resourceGroups/${rg}/providers/microsoft.insights/components/${name}"
                          },
                          "name": "requests/count",
                          "aggregationType": 1,
                          "namespace": "microsoft.insights/components/kusto",
                          "metricVisualization": {
                            "displayName": "Server requests"
                          }
                        }
                      ],
                      "title": "Server Requests",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        },
                        "disablePinning": true
                      }
                    }
                  }
                }
              }
            }
          },
          "6": {
            "position": {
              "x": 8,
              "y": 3,
              "colSpan": 4,
              "rowSpan": 2
            },
            "metadata": {
              "inputs": [
                {
                  "name": "options",
                  "isOptional": true
                },
                {
                  "name": "sharedTimeRange",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/MonitorChartPart",
              "settings": {
                "content": {
                  "options": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${sub_id}/resourceGroups/${rg}/providers/microsoft.insights/components/${name}"
                          },
                          "name": "requests/duration",
                          "aggregationType": 4,
                          "namespace": "microsoft.insights/components/kusto",
                          "metricVisualization": {
                            "displayName": "Server response time"
                          }
                        }
                      ],
                      "title": "Avg Response Time",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        },
                        "disablePinning": true
                      }
                    }
                  }
                }
              }
            }
          },
          "7": {
            "position": {
              "x": 0,
              "y": 5,
              "colSpan": 4,
              "rowSpan": 3
            },
            "metadata": {
              "inputs": [
                {
                  "name": "options",
                  "isOptional": true
                },
                {
                  "name": "sharedTimeRange",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/MonitorChartPart",
              "settings": {
                "content": {
                  "options": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${sub_id}/resourceGroups/${cosmos_rg}/providers/Microsoft.DocumentDb/databaseAccounts/${name}"
                          },
                          "name": "TotalRequestUnits",
                          "aggregationType": 1,
                          "namespace": "microsoft.documentdb/databaseaccounts",
                          "metricVisualization": {
                            "displayName": "Total Request Units",
                            "resourceDisplayName": "${name}"
                          }
                        },
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${sub_id}/resourceGroups/${cosmos_rg}/providers/Microsoft.DocumentDb/databaseAccounts/${name}"
                          },
                          "name": "TotalRequests",
                          "aggregationType": 7,
                          "namespace": "microsoft.documentdb/databaseaccounts",
                          "metricVisualization": {
                            "displayName": "Total Requests",
                            "resourceDisplayName": "${name}"
                          }
                        }
                      ],
                      "title": "Cosmos Requests and RUs",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        },
                        "disablePinning": true
                      }
                    }
                  }
                }
              },
              "filters": {
                "DatabaseName": {
                  "model": {
                    "operator": "equals",
                    "values": [
                      "IMDB"
                    ]
                  }
                }
              }
            }
          },
          "8": {
            "position": {
              "x": 4,
              "y": 5,
              "colSpan": 4,
              "rowSpan": 3
            },
            "metadata": {
              "inputs": [
                {
                  "name": "options",
                  "isOptional": true
                },
                {
                  "name": "sharedTimeRange",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/MonitorChartPart",
              "settings": {
                "content": {
                  "options": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${sub_id}/resourceGroups/${cosmos_rg}/providers/Microsoft.DocumentDb/databaseAccounts/${name}"
                          },
                          "name": "ProvisionedThroughput",
                          "aggregationType": 3,
                          "namespace": "microsoft.documentdb/databaseaccounts",
                          "metricVisualization": {
                            "displayName": "Provisioned Throughput",
                            "resourceDisplayName": "${name}"
                          }
                        }
                      ],
                      "title": "Cosmos Provisioned Throughput",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        },
                        "disablePinning": true
                      }
                    }
                  }
                }
              },
              "filters": {
                "DatabaseName": {
                  "model": {
                    "operator": "equals",
                    "values": [
                      "IMDB"
                    ]
                  }
                }
              }
            }
          },
          "9": {
            "position": {
              "x": 8,
              "y": 5,
              "colSpan": 4,
              "rowSpan": 3
            },
            "metadata": {
              "inputs": [
                {
                  "name": "sharedTimeRange",
                  "isOptional": true
                },
                {
                  "name": "options",
                  "value": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${sub_id}/resourceGroups/${rg}/providers/microsoft.insights/components/${name}"
                          },
                          "name": "requests/failed",
                          "aggregationType": 1,
                          "namespace": "microsoft.insights/components/kusto",
                          "metricVisualization": {
                            "displayName": "Failed requests"
                          }
                        }
                      ],
                      "title": "Failed Requests",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 5,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        }
                      },
                      "grouping": {
                        "dimension": "request/name",
                        "sort": 2,
                        "top": 10
                      },
                      "timespan": {
                        "relative": {
                          "duration": 259200000
                        },
                        "showUTCTime": false,
                        "grain": 9
                      }
                    }
                  },
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/MonitorChartPart",
              "settings": {
                "content": {
                  "options": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${sub_id}/resourceGroups/${rg}/providers/microsoft.insights/components/${name}"
                          },
                          "name": "requests/failed",
                          "aggregationType": 1,
                          "namespace": "microsoft.insights/components/kusto",
                          "metricVisualization": {
                            "displayName": "Failed requests"
                          }
                        }
                      ],
                      "title": "Failed Requests",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 5,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        },
                        "disablePinning": true
                      },
                      "grouping": {
                        "dimension": "request/name",
                        "sort": 2,
                        "top": 10
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    },
    "metadata": {
      "model": {
        "timeRange": {
          "value": {
            "relative": {
              "duration": 24,
              "timeUnit": 1
            }
          },
          "type": "MsPortalFx.Composition.Configuration.ValueTypes.TimeRange"
        },
        "filterLocale": {
          "value": "en-us"
        },
        "filters": {
          "value": {
            "MsPortalFx_TimeRange": {
              "model": {
                "format": "local",
                "granularity": "1m",
                "relative": "30m"
              },
              "displayCache": {
                "name": "Local Time",
                "value": "Past 30 minutes"
              },
              "filteredPartIds": [
                "StartboardPart-MonitorChartPart-52e983a5-971b-4ba1-8796-5046bdd4325a",
                "StartboardPart-MonitorChartPart-52e983a5-971b-4ba1-8796-5046bdd43272",
                "StartboardPart-MonitorChartPart-52e983a5-971b-4ba1-8796-5046bdd4324e",
                "StartboardPart-MonitorChartPart-52e983a5-971b-4ba1-8796-5046bdd4326c",
                "StartboardPart-MonitorChartPart-52e983a5-971b-4ba1-8796-5046bdd43254",
                "StartboardPart-MonitorChartPart-52e983a5-971b-4ba1-8796-5046bdd43260",
                "StartboardPart-MonitorChartPart-52e983a5-971b-4ba1-8796-5046bdd43266",
                "StartboardPart-MonitorChartPart-52e983a5-971b-4ba1-8796-5046bdd43278"
              ]
            }
          }
        }
      }
    },
  "name": "Init-Dashboard-${name}",
  "type": "Microsoft.Portal/dashboards",
  "location": "INSERT LOCATION",
  "tags": {
    "hidden-title": "Init-Dashboard-${name}"
},
  "apiVersion": "2015-08-01-preview"
}
