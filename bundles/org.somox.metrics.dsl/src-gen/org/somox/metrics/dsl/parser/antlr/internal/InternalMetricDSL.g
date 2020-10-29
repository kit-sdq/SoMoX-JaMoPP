/*
* generated by Xtext
*/
grammar InternalMetricDSL;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.somox.metrics.dsl.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.somox.metrics.dsl.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.somox.metrics.dsl.services.MetricDSLGrammarAccess;

}

@parser::members {

 	private MetricDSLGrammarAccess grammarAccess;
 	
    public InternalMetricDSLParser(TokenStream input, MetricDSLGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "MetricModel";	
   	}
   	
   	@Override
   	protected MetricDSLGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleMetricModel
entryRuleMetricModel returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getMetricModelRule()); }
	 iv_ruleMetricModel=ruleMetricModel 
	 { $current=$iv_ruleMetricModel.current; } 
	 EOF 
;

// Rule MetricModel
ruleMetricModel returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((	otherlv_0='import' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getMetricModelAccess().getImportKeyword_0_0());
    }
(
(
		lv_importURI_1_0=RULE_STRING
		{
			newLeafNode(lv_importURI_1_0, grammarAccess.getMetricModelAccess().getImportURISTRINGTerminalRuleCall_0_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getMetricModelRule());
	        }
       		addWithLastConsumed(
       			$current, 
       			"importURI",
        		lv_importURI_1_0, 
        		"STRING");
	    }

)
)	otherlv_2=';' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getMetricModelAccess().getSemicolonKeyword_0_2());
    }
)*(	otherlv_3='extern' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getMetricModelAccess().getExternKeyword_1_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getMetricModelAccess().getMetricsExternalMetricParserRuleCall_1_1_0()); 
	    }
		lv_metrics_4_0=ruleExternalMetric		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMetricModelRule());
	        }
       		add(
       			$current, 
       			"metrics",
        		lv_metrics_4_0, 
        		"ExternalMetric");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_5=';' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getMetricModelAccess().getSemicolonKeyword_1_2());
    }
)*	otherlv_6='Metrics' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getMetricModelAccess().getMetricsKeyword_2());
    }
	otherlv_7='{' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getMetricModelAccess().getLeftCurlyBracketKeyword_3());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getMetricModelAccess().getMetricsInternalMetricParserRuleCall_4_0()); 
	    }
		lv_metrics_8_0=ruleInternalMetric		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMetricModelRule());
	        }
       		add(
       			$current, 
       			"metrics",
        		lv_metrics_8_0, 
        		"InternalMetric");
	        afterParserOrEnumRuleCall();
	    }

)
)+	otherlv_9='}' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getMetricModelAccess().getRightCurlyBracketKeyword_5());
    }
)
;







// Entry rule entryRuleExternalMetric
entryRuleExternalMetric returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getExternalMetricRule()); }
	 iv_ruleExternalMetric=ruleExternalMetric 
	 { $current=$iv_ruleExternalMetric.current; } 
	 EOF 
;

// Rule ExternalMetric
ruleExternalMetric returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getExternalMetricAccess().getNameMYIDParserRuleCall_0()); 
	    }
		lv_name_0_0=ruleMYID		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getExternalMetricRule());
	        }
       		set(
       			$current, 
       			"name",
        		lv_name_0_0, 
        		"MYID");
	        afterParserOrEnumRuleCall();
	    }

)
)
;





// Entry rule entryRuleInternalMetric
entryRuleInternalMetric returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getInternalMetricRule()); }
	 iv_ruleInternalMetric=ruleInternalMetric 
	 { $current=$iv_ruleInternalMetric.current; } 
	 EOF 
;

// Rule InternalMetric
ruleInternalMetric returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='Metric' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getInternalMetricAccess().getMetricKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getInternalMetricAccess().getNameMYIDParserRuleCall_1_0()); 
	    }
		lv_name_1_0=ruleMYID		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getInternalMetricRule());
	        }
       		set(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"MYID");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_2='(' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getInternalMetricAccess().getLeftParenthesisKeyword_2());
    }
(
(
		lv_shortName_3_0=RULE_STRING
		{
			newLeafNode(lv_shortName_3_0, grammarAccess.getInternalMetricAccess().getShortNameSTRINGTerminalRuleCall_3_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getInternalMetricRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"shortName",
        		lv_shortName_3_0, 
        		"STRING");
	    }

)
)	otherlv_4=',' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getInternalMetricAccess().getCommaKeyword_4());
    }
(
(
		lv_description_5_0=RULE_STRING
		{
			newLeafNode(lv_description_5_0, grammarAccess.getInternalMetricAccess().getDescriptionSTRINGTerminalRuleCall_5_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getInternalMetricRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"description",
        		lv_description_5_0, 
        		"STRING");
	    }

)
)	otherlv_6=')' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getInternalMetricAccess().getRightParenthesisKeyword_6());
    }
	otherlv_7='{' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getInternalMetricAccess().getLeftCurlyBracketKeyword_7());
    }
(	otherlv_8='parameters' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getInternalMetricAccess().getParametersKeyword_8_0());
    }
	otherlv_9='{' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getInternalMetricAccess().getLeftCurlyBracketKeyword_8_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getInternalMetricAccess().getParameterNumberParserRuleCall_8_2_0()); 
	    }
		lv_parameter_10_0=ruleNumber		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getInternalMetricRule());
	        }
       		add(
       			$current, 
       			"parameter",
        		lv_parameter_10_0, 
        		"Number");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_11='}' 
    {
    	newLeafNode(otherlv_11, grammarAccess.getInternalMetricAccess().getRightCurlyBracketKeyword_8_3());
    }
)?(
(
		{ 
	        newCompositeNode(grammarAccess.getInternalMetricAccess().getDefinitionMetricDefinitionParserRuleCall_9_0()); 
	    }
		lv_definition_12_0=ruleMetricDefinition		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getInternalMetricRule());
	        }
       		set(
       			$current, 
       			"definition",
        		lv_definition_12_0, 
        		"MetricDefinition");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_13='};' 
    {
    	newLeafNode(otherlv_13, grammarAccess.getInternalMetricAccess().getRightCurlyBracketSemicolonKeyword_10());
    }
)
;





// Entry rule entryRuleNumber
entryRuleNumber returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getNumberRule()); }
	 iv_ruleNumber=ruleNumber 
	 { $current=$iv_ruleNumber.current; } 
	 EOF 
;

// Rule Number
ruleNumber returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getNumberAccess().getParameterParserRuleCall_0()); 
    }
    this_Parameter_0=ruleParameter
    { 
        $current = $this_Parameter_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getNumberAccess().getConstantParserRuleCall_1()); 
    }
    this_Constant_1=ruleConstant
    { 
        $current = $this_Constant_1.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleParameter
entryRuleParameter returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getParameterRule()); }
	 iv_ruleParameter=ruleParameter 
	 { $current=$iv_ruleParameter.current; } 
	 EOF 
;

// Rule Parameter
ruleParameter returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='Parameter' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getParameterAccess().getParameterKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getParameterAccess().getNameMYIDParserRuleCall_1_0()); 
	    }
		lv_name_1_0=ruleMYID		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getParameterRule());
	        }
       		set(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"MYID");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_2='(' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getParameterAccess().getLeftParenthesisKeyword_2());
    }
(
(
		lv_shortname_3_0=RULE_STRING
		{
			newLeafNode(lv_shortname_3_0, grammarAccess.getParameterAccess().getShortnameSTRINGTerminalRuleCall_3_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getParameterRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"shortname",
        		lv_shortname_3_0, 
        		"STRING");
	    }

)
)	otherlv_4=',' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getParameterAccess().getCommaKeyword_4());
    }
(
(
		lv_description_5_0=RULE_STRING
		{
			newLeafNode(lv_description_5_0, grammarAccess.getParameterAccess().getDescriptionSTRINGTerminalRuleCall_5_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getParameterRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"description",
        		lv_description_5_0, 
        		"STRING");
	    }

)
)	otherlv_6=',' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getParameterAccess().getCommaKeyword_6());
    }
(
(
		lv_defaultValue_7_0=RULE_DOUBLE
		{
			newLeafNode(lv_defaultValue_7_0, grammarAccess.getParameterAccess().getDefaultValueDOUBLETerminalRuleCall_7_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getParameterRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"defaultValue",
        		lv_defaultValue_7_0, 
        		"DOUBLE");
	    }

)
)	otherlv_8=')' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getParameterAccess().getRightParenthesisKeyword_8());
    }
	otherlv_9=';' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getParameterAccess().getSemicolonKeyword_9());
    }
)
;





// Entry rule entryRuleConstant
entryRuleConstant returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getConstantRule()); }
	 iv_ruleConstant=ruleConstant 
	 { $current=$iv_ruleConstant.current; } 
	 EOF 
;

// Rule Constant
ruleConstant returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='Const' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getConstantAccess().getConstKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getConstantAccess().getNameMYIDParserRuleCall_1_0()); 
	    }
		lv_name_1_0=ruleMYID		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getConstantRule());
	        }
       		set(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"MYID");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_2='=' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getConstantAccess().getEqualsSignKeyword_2());
    }
(
(
		lv_value_3_0=RULE_DOUBLE
		{
			newLeafNode(lv_value_3_0, grammarAccess.getConstantAccess().getValueDOUBLETerminalRuleCall_3_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getConstantRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_3_0, 
        		"DOUBLE");
	    }

)
)	otherlv_4=';' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getConstantAccess().getSemicolonKeyword_4());
    }
)
;





// Entry rule entryRuleMetricDefinition
entryRuleMetricDefinition returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getMetricDefinitionRule()); }
	 iv_ruleMetricDefinition=ruleMetricDefinition 
	 { $current=$iv_ruleMetricDefinition.current; } 
	 EOF 
;

// Rule MetricDefinition
ruleMetricDefinition returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getMetricDefinitionAccess().getWeightedMetricParserRuleCall_0()); 
    }
    this_WeightedMetric_0=ruleWeightedMetric
    { 
        $current = $this_WeightedMetric_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getMetricDefinitionAccess().getStepwiseMetricParserRuleCall_1()); 
    }
    this_StepwiseMetric_1=ruleStepwiseMetric
    { 
        $current = $this_StepwiseMetric_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getMetricDefinitionAccess().getRatioMetricParserRuleCall_2()); 
    }
    this_RatioMetric_2=ruleRatioMetric
    { 
        $current = $this_RatioMetric_2.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleWeightedMetric
entryRuleWeightedMetric returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWeightedMetricRule()); }
	 iv_ruleWeightedMetric=ruleWeightedMetric 
	 { $current=$iv_ruleWeightedMetric.current; } 
	 EOF 
;

// Rule WeightedMetric
ruleWeightedMetric returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='WeigthedSum' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getWeightedMetricAccess().getWeigthedSumKeyword_0());
    }
	otherlv_1='{' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getWeightedMetricAccess().getLeftCurlyBracketKeyword_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getWeightedMetricAccess().getWeightsMetricAndWeightParserRuleCall_2_0()); 
	    }
		lv_weights_2_0=ruleMetricAndWeight		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getWeightedMetricRule());
	        }
       		add(
       			$current, 
       			"weights",
        		lv_weights_2_0, 
        		"MetricAndWeight");
	        afterParserOrEnumRuleCall();
	    }

)
)+	otherlv_3='}' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getWeightedMetricAccess().getRightCurlyBracketKeyword_3());
    }
)
;





// Entry rule entryRuleStepwiseMetric
entryRuleStepwiseMetric returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getStepwiseMetricRule()); }
	 iv_ruleStepwiseMetric=ruleStepwiseMetric 
	 { $current=$iv_ruleStepwiseMetric.current; } 
	 EOF 
;

// Rule StepwiseMetric
ruleStepwiseMetric returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='Stepwise' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getStepwiseMetricAccess().getStepwiseKeyword_0());
    }
	otherlv_1='[' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getStepwiseMetricAccess().getLeftSquareBracketKeyword_1());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getStepwiseMetricRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getStepwiseMetricAccess().getInnerMetricMetricCrossReference_2_0()); 
	    }
		ruleMYID		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_3=']' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getStepwiseMetricAccess().getRightSquareBracketKeyword_3());
    }
	otherlv_4='{' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getStepwiseMetricAccess().getLeftCurlyBracketKeyword_4());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getStepwiseMetricAccess().getStepsBoundAndWeightParserRuleCall_5_0()); 
	    }
		lv_steps_5_0=ruleBoundAndWeight		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getStepwiseMetricRule());
	        }
       		add(
       			$current, 
       			"steps",
        		lv_steps_5_0, 
        		"BoundAndWeight");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_6='}' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getStepwiseMetricAccess().getRightCurlyBracketKeyword_6());
    }
)
;





// Entry rule entryRuleRatioMetric
entryRuleRatioMetric returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getRatioMetricRule()); }
	 iv_ruleRatioMetric=ruleRatioMetric 
	 { $current=$iv_ruleRatioMetric.current; } 
	 EOF 
;

// Rule RatioMetric
ruleRatioMetric returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='Ratio' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getRatioMetricAccess().getRatioKeyword_0());
    }
	otherlv_1='{' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getRatioMetricAccess().getLeftCurlyBracketKeyword_1());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getRatioMetricRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getRatioMetricAccess().getNominatorMetricMetricCrossReference_2_0()); 
	    }
		ruleMYID		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_3='/' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getRatioMetricAccess().getSolidusKeyword_3());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getRatioMetricRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getRatioMetricAccess().getDenominatorMetricMetricCrossReference_4_0()); 
	    }
		ruleMYID		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_5='}' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getRatioMetricAccess().getRightCurlyBracketKeyword_5());
    }
)
;





// Entry rule entryRuleBoundAndWeight
entryRuleBoundAndWeight returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getBoundAndWeightRule()); }
	 iv_ruleBoundAndWeight=ruleBoundAndWeight 
	 { $current=$iv_ruleBoundAndWeight.current; } 
	 EOF 
;

// Rule BoundAndWeight
ruleBoundAndWeight returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='<' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getBoundAndWeightAccess().getLessThanSignKeyword_0());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getBoundAndWeightRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getBoundAndWeightAccess().getUpperBoundNumberCrossReference_1_0()); 
	    }
		ruleMYID		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_2=',' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getBoundAndWeightAccess().getCommaKeyword_2());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getBoundAndWeightRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getBoundAndWeightAccess().getWeightNumberCrossReference_3_0()); 
	    }
		ruleMYID		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_4='>' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getBoundAndWeightAccess().getGreaterThanSignKeyword_4());
    }
)
;





// Entry rule entryRuleMetricAndWeight
entryRuleMetricAndWeight returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getMetricAndWeightRule()); }
	 iv_ruleMetricAndWeight=ruleMetricAndWeight 
	 { $current=$iv_ruleMetricAndWeight.current; } 
	 EOF 
;

// Rule MetricAndWeight
ruleMetricAndWeight returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='<' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getMetricAndWeightAccess().getLessThanSignKeyword_0());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getMetricAndWeightRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getMetricAndWeightAccess().getMetricMetricCrossReference_1_0()); 
	    }
		ruleMYID		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_2=',' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getMetricAndWeightAccess().getCommaKeyword_2());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getMetricAndWeightRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getMetricAndWeightAccess().getWeightNumberCrossReference_3_0()); 
	    }
		ruleMYID		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_4='>' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getMetricAndWeightAccess().getGreaterThanSignKeyword_4());
    }
)
;





// Entry rule entryRuleMYID
entryRuleMYID returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getMYIDRule()); } 
	 iv_ruleMYID=ruleMYID 
	 { $current=$iv_ruleMYID.current.getText(); }  
	 EOF 
;

// Rule MYID
ruleMYID returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    newLeafNode(this_ID_0, grammarAccess.getMYIDAccess().getIDTerminalRuleCall_0()); 
    }
(
	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getMYIDAccess().getFullStopKeyword_1_0()); 
    }
    this_ID_2=RULE_ID    {
		$current.merge(this_ID_2);
    }

    { 
    newLeafNode(this_ID_2, grammarAccess.getMYIDAccess().getIDTerminalRuleCall_1_1()); 
    }
)*)
    ;





RULE_DOUBLE : '-'? RULE_INT '.' RULE_INT;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

