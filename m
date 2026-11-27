Delivery-date: Fri, 27 Nov 2026 10:42:34 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xWsTS-003mU6-0t
	for lore@lore.pengutronix.de;
	Fri, 27 Nov 2026 10:42:34 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AEE11202492
	for <lore@pengutronix.de>; Fri, 27 Nov 2026 10:42:33 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=qjVelq+1;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=FizA9Sp0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=leica-geosystems.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795772554;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=SLskh9+5ocgcLne5OBXZ4b0y9V2PvKJ0l9fgQwYUIJE=;
	b=XCxSWApdFr9WoDfMOEBeSMWCOkE9LbqdSxWDJw6Ql36bb/IINsRf1SmqCC/pAZVzQFjKHG
	AHU/HN+eLlS7tlkM2z0wT1GaMKv/7+IyTqEssQ1yL8nbdDIHBgAut3SRIm+7fcgSNUgDtg
	+SdF9b3uW/iMjIVJX7/2QSlqzEXzKx7UW8Cg+m0T9N8gpGiJ461ZLWzI2d+3u5rO2PKMgk
	Y2YzSkGZOVv9aTXgblGM87S9BFp9EUAa/kxIWTWDyV16WaQAomgR7Urym4Uorf5QTjkhI+
	5xy7ru51ezeFgyqiEK5aj8D8zJk/whys7BTsi3qqBOv1+7/q7ytFY6kwb3sXQQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=qjVelq+1;
	dkim=pass header.d=leica-geosystems.com header.s=selector1 header.b=FizA9Sp0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=leica-geosystems.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795772554; a=rsa-sha256;
	cv=pass;
	b=F85cte3DsMWkYOJILUfFJBolgplYEPA5oJTf3oWbEu7vUiG8QONV94MoUUUCZVFq0gndZ/
	FKy51COkgMGo7y8GMj33S1Zq0tWT2GfI7dGU4GcNz0zuk/0co50BzxPLdOQpSJMQf0lsgw
	EP8fOis1YXTtm23p8vZ4Z/xP/uwEP0QOIHQ0aF4XaCPD5TKyLlirEcryrPGfH73tujmwxk
	fQ+/3XrR0cgXCfeLL0QGW0x6povpT1ud8tex1xNmjfqnr4pxHysLqQQatLP6dxD1y9XmI+
	5a6Pk5wN0W4hOufuq/RZMcEklqKBMqcB/iYqJ2Hb+dm7L508G6BvIFBy2ZRewg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SLskh9+5ocgcLne5OBXZ4b0y9V2PvKJ0l9fgQwYUIJE=; b=qjVelq+1chj61ocKD84wUox+Qr
	dgr40C5L5glk8C8JnA7Q+kr+IXeoOxvNLJEMZ1vYvfgGxwKmlrZ/jcfebpmzFvUX2qSUDxyLjkcAZ
	40y2rt631Eg+uYth+KO6EMpMNu7JoySNaomoW1YgZcxv49JGoZevuIqmWle6+xYmBi9vr8oy5o3SC
	KUV/ol26n+qttfh0mY5YGyhcJ1GS5sF4ZaVlEThZcbfs065c1w1OOpEmMeEcFlRk4FBDLGthoFIHb
	bI3BtF76sYM2sGbEoGb9qU5c4c/iWrW+H4Pm8OsNb4tMlt3DMEPGGwoLtNDXgzDnYNGARKDpt/+BL
	9BfIBP4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsBM-0000000FQ1w-1Fz9;
	Fri, 27 Nov 2026 09:23:52 +0000
Received: from mail-norwayeastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20f::7] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsBI-0000000FPxP-1BHD
	for barebox@lists.infradead.org;
	Fri, 27 Nov 2026 09:23:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NOdlqtkWPpiDkSsBQ4Zbh2OrNJYyhqd3RIrYMCDcOXAcizVOnHSPVJpq973791GB3Mk55PW9gIVKYTcSGqKsHrXQKKbem4U0J+oDZtIaw3C6tWgKUpSkLJU/yOmko9yyJItmF4KuNDDdzxtJ1rcJMu/zipMUERTcnobDBOqfTvX0RqCtI58+1pyj7sryK9i0GLX00yCvURZlQG2EVbpZV/zPI9mhoBTOIDR73K1ylo4EUkrHKc9kF+Eb5l4rarnLm8gQZNzTInDtngaYdylD8g0TJSHXIkHEo/QGPnKjiQk01VlwdzSK93m+2Hg4sFLMAudJyAU9tkPpfgL+BPCARA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SLskh9+5ocgcLne5OBXZ4b0y9V2PvKJ0l9fgQwYUIJE=;
 b=a44oMtGWj/vEsfb5VmIXwbKlDZP4ZQ1WlyrPuGyThDQylD4r9/5prWHRA0JRLHW5Et/PK9wDBqJLM5cTGSCPIzO32oNXRymRwOS3nsz1geziiHe0ma2zcPps37ZLVsFFimS5wQvFsdUFOCmU2HrpCQ/SIkf5xYjvJYf3+N5LCDUvmqxhMXEFiBik132cMT8T+U9/EHFaO6xJB6x7k3iuQ2tNBKKKR4BsKGwe0Lykkpr7oFamasB8oqmebTeyo9WdrKZ+xDyXxx/WSFVPSTAuEC32xdKugK2Zz7hcAYuNDwzkO7fmewRRdTpKfEtxU5RcRW3fDhIFf704mwiTVufy6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SLskh9+5ocgcLne5OBXZ4b0y9V2PvKJ0l9fgQwYUIJE=;
 b=FizA9Sp0/r/oXilJFill+iK9AvTGkEOkADdtRDBACRiPxlmrmGEY4SdeT+gV9mQypTwwY/XlAIkucyzTo3ErL57qz/IF2u27TV7yEpO8oCZWzxdXX7VmHuW1/KcssH3lJG1iZCN5O4bS1D883YTQBpU7uNTpsYQ+jklJLTNVCKk=
Received: from OS6P279CA0044.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:32::13)
 by GVXPR06MB8874.eurprd06.prod.outlook.com (2603:10a6:150:11d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.662.6; Fri, 27 Nov
 2026 09:23:41 +0000
Received: from CPH1EPF00000523.eurprd05.prod.outlook.com
 (2603:10a6:e10:32:cafe::68) by OS6P279CA0044.outlook.office365.com
 (2603:10a6:e10:32::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.662.10 via Frontend Transport; Fri,
 27 Nov 2026 09:23:38 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 193.8.40.99) smtp.mailfrom=leica-geosystems.com; dkim=none (message not
 signed) header.d=none;dmarc=pass action=none
 header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 CPH1EPF00000523.mail.protection.outlook.com (10.167.241.134) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.688.5 via Frontend Transport; Fri, 27 Nov 2026 09:23:38 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Fri, 27 Nov 2026 10:23:38 +0100
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Subject: Re: [PATCH] watchdog: imxwd: don't claim a warm reset with fsl,ext-reset-output
Date: Fri, 27 Nov 2026 09:23:38 +0000
Message-ID: <20261127092338.2046709-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <c1c28d10-9b06-408e-9c16-321465638c5a@pengutronix.de>
References: <c1c28d10-9b06-408e-9c16-321465638c5a@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 27 Nov 2026 09:23:38.0266 (UTC) FILETIME=[FC145FA0:01DD7E50]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CPH1EPF00000523:EE_|GVXPR06MB8874:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 1e238ca3-9d88-4efe-4f05-08df4c681ec0
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|1800799024|376014|36860700016|82310400026|261026121527099003|10067099003|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: FXbXJDcyHjRf5wrZ60l1M1vh6QRp80YAjz1Fg0Q30lMcaB9kRACQFVQzXtjraMG7yyuP0qOBvNcy5a+xb3JrTyhGSwh35kytx63EkvAwcJWQ9yFrRhT6GtnGsGfUqvLiXKssTUw4t3YLZjAuHB38Yw/JrZhfultSLmDpJqwY6iALx++LS60xBc3L3PGLsoU9yxTQ5cpfs401lNHGBoL6YFfaktQRMxKsybi3iVRlr9fBpgZKtmmq06LTPFw4Ih9z+grm6/FuB955FQaCRUAy71FXJGaY07AKdfgW76sHUJfizGa1zyQTdB6M9vcIvOuRv8Q9b0EPLRJoFhHwAFknBUCQip8Ae16macmNgETHcn0wk1+tjxku/hPnh3pUkkt3FjnFoXhT8KLywg+TRt+ddvBzaXjNFLYe05KiWG/+9EML32tZ3VH9XNEkGyZRjAPntzCcUCeLV2/qPTDytE/09K0yLTy8CvHwQfFFqpO1HRBSdLYdZ8G5ysxipEdKzfvEWPOE/xia9jbUtqiCOBpAfx6jsVjJoKQmgtM8QoLkYmAe6JqpwqTYrVBBjLuqRpjf/ccWN8VxJ3A8vMUv22TOoXFZ5DpuEpZGqZYxSZJ5cG+I73LC3o9WMfuhDyCO1/e+DCOiq+wEzLPpSwd0HRiY6Bi7KNq0r0iM5GzGiLV2KzKzdvvxjgi/gNaxUo3b8npNif4aopNdKSSFHrv5sS+u2A==
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(376014)(36860700016)(82310400026)(261026121527099003)(10067099003)(11063799006)(56012099006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: fXZjrc5a86brAPJeBcTAYr8NXmOukG+1y2IYPMhn0pw51MXC44lQRQ3BtTnR409Y7e0vQS4DQf2Yowa4fvAIAoRhWMpHrzDzDhB54d68BTf5hka3KbiWfu5QnQxHdDY9E/9vL8X+HnhB4bX43E0ADvY1ADbiSsDgYL/6kDobc0KgUstI3aBGdKWVO+CrjY3cCUYLNRQGeQ2/y4SusHTrnBdfjMYqNUlJc2svsmOJQgNOLk+n3qcTQTj306PIZGyewnyNjc/GUD6DnNftK8oRIzUTnzFmat1UuanCulZDIqeTLjMt23heDZPJ4RBLTYSBUZUKfXToQ5tpV2LKdr/nZtiS4+zBA/WIgSSkQF84UWqjNgvcliz6ZehUxM8DnuQ/mushUYh8+rAkiUk3iB8MwlFidFE0o3oJI/RZzvwKf4nipmtwSfKgDIE0tVCMQ2Xz
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2026 09:23:38.5038
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e238ca3-9d88-4efe-4f05-08df4c681ec0
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: CPH1EPF00000523.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR06MB8874
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_012349_134610_237FC1E2 
X-CRM114-Status: UNSURE (   4.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Ahmad, On 11/27/26 10:12, Ahmad Fatoum wrote: > so a
    reset -w should not be toggling WDOG_B. Did you observe the > toggling or
    infer it? Inferred, and wrongly: I missed that imxwd_force_soc_reset() drops
    ext_reset for a warm restart. Please disregard this patch. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a01:111:f403:c20f:0:0:0:7 listed in]
                             [list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: leica-geosystems.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 DMARC_PASS             DMARC pass policy
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Stat-Signature: t5bn34usc9d6nux1zp8g6hghnowbu4y8
X-Spamd-Result: default: False [-6.94 / 15.00];
	BAYES_HAM(-2.53)[97.88%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[leica-geosystems.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,leica-geosystems.com:s=selector1];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a01:111:f403:c20f::7:received];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,leica-geosystems.com:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[johannes.schneider@leica-geosystems.com,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: AEE11202492

Hello Ahmad,

On 11/27/26 10:12, Ahmad Fatoum wrote:
> so a reset -w should not be toggling WDOG_B. Did you observe the
> toggling or infer it?

Inferred, and wrongly: I missed that imxwd_force_soc_reset() drops
ext_reset for a warm restart. Please disregard this patch.

Thanks,
Johannes


