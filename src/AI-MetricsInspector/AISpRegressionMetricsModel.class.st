"
I am a subclass that defines which are going to by my primary metrics and which are the secondary
"
Class {
	#name : #AISpRegressionMetricsModel,
	#superclass : #AISpAbstractMetricsModel,
	#category : #'AI-MetricsInspector'
}

{ #category : #inspector }
AISpRegressionMetricsModel >> inspectorTab [

	<inspectorPresentationOrder: 0 title: 'Regression Metrics'>
	
	^ AISpRegressionMetricsPresenter on: self
]

{ #category : #inspector }
AISpRegressionMetricsModel >> inspectorTabContext: aContext [

	aContext withoutEvaluator
]

{ #category : #accessing }
AISpRegressionMetricsModel >> otherMetrics [

	^ self collectMetrics: AIClassificationMetric subclasses
]

{ #category : #accessing }
AISpRegressionMetricsModel >> primaryMetrics [

	^ self collectMetrics: AIRegressionMetric subclasses
]
