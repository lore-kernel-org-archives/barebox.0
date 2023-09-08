Delivery-date: Fri, 08 Sep 2023 12:19:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeYZv-00877c-KZ
	for lore@lore.pengutronix.de; Fri, 08 Sep 2023 12:19:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeYZt-0006aI-3i
	for lore@pengutronix.de; Fri, 08 Sep 2023 12:19:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WrcQzRwQHSjU9tPhBrhB1rbZZMbxxJiXajZ5PZ6VqQk=; b=0hG8fIdWPdgOW27MRHBl47VZVf
	mFgy5SVMyRrr3mejiR4oI7mQIqH1ESo3SUNyurxRNW8cODfgaXTdVyMIX97TnsAGlRAyKEN+Z1UYT
	bCyjWe9Pha6Pgb8GS0E6xVXo8YFcv6Nqk5C0NEdmBqhSuC/e+uQs+hPrWkqM64isqnMq114fx8yXG
	llRGwPQZT/tfutvITgIQxPDVQStbkZpBi9bebdMRvhmQ+vfSJwRxCHJ2uf1If8K34mVch4NBUVoIo
	z3p+j5f1lL2PP9B2joqSUW0qQnONey8EuadAW2IzyWaaJqpd4pj5IfAwAzpOIQQLObvuLWuU2FspX
	b3l5XLTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeYYA-00DTMi-1f;
	Fri, 08 Sep 2023 10:17:18 +0000
Received: from mail-db5eur02on2062a.outbound.protection.outlook.com ([2a01:111:f400:fe12::62a] helo=EUR02-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeYY0-00DT5T-1Z
	for barebox@lists.infradead.org;
	Fri, 08 Sep 2023 10:17:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jmHJWv1Rr/DxtlXKfoC0L1CyPslPu4KH/e4VpAg2elJwAxuAknOvA2heKmHZkaR6RQXDNpsbfaN1//iaRTgczGwS0LTjm9v3t/vF5BtY0QjEjSpunGWH78spYGHz909PbraMqSmFbA6nSLf/X04VxAh2UGZAICjuNSKIn6H77aKg7X33uDP01pyveOczSgVnGSQwFwY2p6eLuH6U3RfgCwiDv6gxPzAj8UexPCXaHd/xwQIGi7hN/kMwg5uTckPDAeosXVAyox+PsduT2bT7Ed2Q1fV1oIhuDKhL1fHiHgEAnEDNa9/HI+yLy7Yu1dNAVxlvPHG2OLrkA9PrUExrZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WrcQzRwQHSjU9tPhBrhB1rbZZMbxxJiXajZ5PZ6VqQk=;
 b=DFsZ+OFn2u1MNcy5iZNF4Cn/SPp1echa0AQPGvbg/H1taXwjtz9OLpRCkoj6gC1xqO/x9q6cvQr+hXZ84A31pfGVFBh3D/4/xS1LLcsFR93cKL82wXFCKlE9rGhUQcUp2MZ4pPQCapqcm2uhhtqD2VvtRcQ8eouPvXwnfsuioFSMqhKIAQtRyFBEukW1spWzdk3NzVjd62jJn1P8LcF5s1yB+Gus/F8FZWLTMt5nyVEGpiVAW7Z9SwQXSytTNtghoJSPz6tvR4+szTtox30o2ow1nFQlFBv4cr2y6SNiGc3rUNYOviOfG5+xRN3lsMqwWd+G6bExYxlxCqpSKJxpcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WrcQzRwQHSjU9tPhBrhB1rbZZMbxxJiXajZ5PZ6VqQk=;
 b=l95hQr378Vsv9Vc58LTLqLmuXK2w7K2molp27Y7XNzL+UfLIciXKVDlofehE/kfmWv46KLLX6SBUVaYU2pOj0a/PP/MWjeS4MpMruiuSClaiQbryiO32CK/DNjUhmy444fpUovtd1YnNM5NCV7eiZa3JMHFSv6+GuEZhay6PQ8c=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from VI1PR08MB4544.eurprd08.prod.outlook.com (2603:10a6:803:100::13)
 by DB9PR08MB6332.eurprd08.prod.outlook.com (2603:10a6:10:258::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 10:16:58 +0000
Received: from VI1PR08MB4544.eurprd08.prod.outlook.com
 ([fe80::2912:dcec:8cc0:f0ba]) by VI1PR08MB4544.eurprd08.prod.outlook.com
 ([fe80::2912:dcec:8cc0:f0ba%7]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 10:16:58 +0000
From: Gerald Loacker <gerald.loacker@wolfvision.net>
Date: Fri, 08 Sep 2023 12:16:46 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230908-bugfix-i2c-rockchip-v1-1-f8235d811f6b@wolfvision.net>
References: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
In-Reply-To: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Gerald Loacker <gerald.loacker@wolfvision.net>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694168217; l=2706;
 i=gerald.loacker@wolfvision.net; s=20230502; h=from:subject:message-id;
 bh=gLberEkQTaO7rTaSNA3vSeAgmrxWamuruhfAWKh+g4Q=;
 b=7L+g3TAdVCoc73QGJVmw1Vh0INAF7R0ur2vmd44fLno+qrHWuubqTmgTePJXsPiBn0dISRgX1
 wEga2F7VruzC0JJFzZuvhTCghTdQHHAfAsgz+KbvltV8wJp21meUe2W
X-Developer-Key: i=gerald.loacker@wolfvision.net; a=ed25519;
 pk=UXhp+obGMUOjknszonesnb29P6a2Kk/K5eBuz62ggVE=
X-ClientProxiedBy: VI1PR0102CA0030.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::43) To VI1PR08MB4544.eurprd08.prod.outlook.com
 (2603:10a6:803:100::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR08MB4544:EE_|DB9PR08MB6332:EE_
X-MS-Office365-Filtering-Correlation-Id: 869dcb07-dd61-4384-d901-08dbb054bc16
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d8BitEUGVM1PPEp9goWtAYKiHXcKKJIhqksIihSDRG2WmwF6Vp+/GXMjmTcE72GzWRi1tKUH7XjYXAUd6+6eL35P3aJKjRzn39Cir12fML8ZO4eUOXklDgxpovijFlz1RRrHEpruyIBWHxUcOkwPe7UuNlLB8g2sqIDiHzgpPShJ3yUvBGWj7kp61LIMjAs0zKsOxZHj/QZO2lakM50gzgJsYhfqHZu6fp3EU1qtguz75seORdylBAxy/F4sIP/7RBEKeqU/Ot0DPEfjuvnc1JHdAub7E3o1GrsCCvu0iUB4Xln2FxChvcXbqltIIrzdO7l00SpEJZuMa3ONSaHRuBtdvBP6LWhxDY+RhRVe0MSYD0DGO2FbByKTMtw4N2Zn53xidtkDiJhT4HifpYiauamrOZ9A+Q12RtzCt8xb1BgiTWT3LPWiL3F9EF1ktRZ7HwP4OalUH4EIdO6jEHNB48AH1bOhdf6wgg+1onvGF0J3DGBjQrXT4hrIpmjuiMHOqGHMTpw5l3/wwZdihnJWidHX3tLta92FMbIvwx2cEii2HAEsts6IjMviaCidxDTgg9vxAc26eQtcpF9hzVn25TeivtyhBdt5ApnlOHrJQNUYX3KIRzP451zeez7YTDdr
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR08MB4544.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(396003)(376002)(136003)(39850400004)(451199024)(186009)(1800799009)(316002)(107886003)(2616005)(44832011)(5660300002)(6506007)(6486002)(478600001)(6666004)(66556008)(66476007)(6916009)(6512007)(52116002)(66946007)(26005)(4326008)(8936002)(83380400001)(41300700001)(8676002)(2906002)(36756003)(38350700002)(38100700002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NkYrUExEMTJkN2hQcFNvalI2Nmc5OGpBanNXcXJybHZPSTZDK295WmNUTnZk?=
 =?utf-8?B?ZWU5c2lmZ3BmTzFtWVlmMEc0RmgzdWxxWXljWTgvUVRGSms3Vllqc2NDY0Uz?=
 =?utf-8?B?ME5rVlN4aWlvTXpEeHk1VDZReTBrY2t4NHJVN2xLOHJCM2ZJMGh4UDlHSThB?=
 =?utf-8?B?Q2FhVFEzcm5sTkh0d3lmOTVZd2p1a3J1bjV2UzdDQlphMFdCaGtSYWd1RUlt?=
 =?utf-8?B?d1VGc2pId0N5Z1d2L0tubjZic2xWMmdZYkszd0M5aDdIOG16T3FOaFpFZWVt?=
 =?utf-8?B?VFJNOTIvbEdTTGQrK3pqZHljWE1KNmRrWlJNUFdnV1BtZEtuWXk4d0ZnRVJk?=
 =?utf-8?B?clVUY3ZLdmxnWVFBT1QzejBINVpFMEhYMklDd0c4NTEwaDhDL0R6cUFrMWZt?=
 =?utf-8?B?ejZuVHczTDh2SlVPSTl6bExoc2drdFNhbHgrT3lTT2h4L0t0VlZFUjJPZGEw?=
 =?utf-8?B?Q2p0RDZJeHVrV1R4MEFPaDJmblo3L0VmV245UGNQeEZnQ2lvdWNtQTRVY0Z1?=
 =?utf-8?B?YzAwK2RuWFZhZXNwWEIwZWJHQWJ1UVc1dUVoUmtUL0ZRang0L2c3N0xPT3U3?=
 =?utf-8?B?K2J0Ymd4Rk9kZjltd043OWZOWjFlS1I2aHVVTU9ESDN3VWtVamFVOGN2eElx?=
 =?utf-8?B?ZEV1Ym4xVC9mLytCYUNkS2RnQ1lQYUZqMFhPSTRMZ25Ia1pRakx1WG9YL0xP?=
 =?utf-8?B?T1crMmZNTWsvOW1QNDVFQnN6NkRoVXhiSDIrcERCbDZiRmVYWGkraE4zUHRQ?=
 =?utf-8?B?WmQxK0xTVmM5dS9nTExJMmZFaGE3UXhXcnBpSXJBUy9BZE9qRnpEb1pOeTZn?=
 =?utf-8?B?Uk5wRU9HcGxZd3hFZWVZWTF5SXVtTFJCRStrUzEyRXF5ZXZXNU5EMXlvd3lW?=
 =?utf-8?B?UmtoNStQaFFBYW1WWEZoL1dIR2NlOUhadzdUaW1TVVFNdVVKSStWeklMVFh3?=
 =?utf-8?B?b0k2Zldva016WFFCNUJqVkxOaXJuWEJ6a2t4bjlYQXpXdjQ2b2Y3TjVSdlFI?=
 =?utf-8?B?SElNTUVUanlWM2dNaFd6am5GbXJISFc2REdVR1hwNk1vb0hSVFMzd0VUaVc1?=
 =?utf-8?B?SDdnU2lQdkhlVUlvcXk5azZHK0IySERtOXU0QjNkTHJRVHRleXd0RkNKUUdC?=
 =?utf-8?B?WWlnV201Wjl0UTdFcWlhOGN5bXI4VnJRcE9laGlZb3hpQ01VNDBxUkNBYUU4?=
 =?utf-8?B?WjFmdzVJVXp5Q000K3BMWWVXWlprMjZVV1ZEVHNHdUlITk05RnhJOXBxcGZE?=
 =?utf-8?B?V1BzOExrczhHam5nckw1a24zSGt2c0ozaTFSbjRJYm9OcFFYeDh5RStPNEw1?=
 =?utf-8?B?dDJDMDB0U0YvVXJOY0pVS3lLYXQ4RlQ4NkR6a2Zaa3JJMWtMOUxjL0ZuQW1j?=
 =?utf-8?B?WG1OejBWSmF3Z0hzZWIwZkpUUmwya2F5RG9zbjAzMHR1cnljUjF0VlpnaXpM?=
 =?utf-8?B?RjMxSk9nbk5ZSmM5aHNyY25aTHoralVPa2V5UktheEx2WU5wN0l6aFBYWkx0?=
 =?utf-8?B?K1NrcHFYRjVac2ZXRUY5S0RhQ0cxdnNtNFRJUEptRHFKempTSlRGU2M4MUNz?=
 =?utf-8?B?K3RBL0VEeTdIcFhIcmUwUlhlZk9PNms5TEMzaUlnTC9hVUdicGtPNm9nY04y?=
 =?utf-8?B?MnhUR0xFendhSEViRTQyWTQwam4wS2tCQlBUcWhFVUJ2UUd2ajlvWGFHcWtm?=
 =?utf-8?B?Q1JlZTVjQnZ3Y1d4RUEvZmVDVDV2ZENmUjZlNENiOUtCbjd2dlRQS2JNTTha?=
 =?utf-8?B?RDJCUU1CVjBONEJ0dW9OZTdhdU9kTnluZjRyWFMzRE1RNm1zWWIyWHRFcnQr?=
 =?utf-8?B?N3lzMCtYbHpKcTRldVVFdEpycTZCMUloUWVPZElPV1RkQUNLck9UekppbFRR?=
 =?utf-8?B?L3QxenEvZVR2NmZVUm1CZkx1MVdqc0h2cHNIMEhudmwwa0I0eU0wZyt1dTRF?=
 =?utf-8?B?V0VBSnYxV2RnQlFzN2owdjRMRzZWSWROblU2Tjd2S2VWT0x5MzJsRU03NWgy?=
 =?utf-8?B?OG9JaVNJTndDWTdGN1BxZVN0UkhyMFZVNEhJd0dwMy9zY0JSZ1UvT29hTUtn?=
 =?utf-8?B?VGZ4dWFHbTYzeHJ0UzJQT0tYMnp5UE9vdTUzMkRnZGd1cUdxQ3o0TGwxSkNG?=
 =?utf-8?B?enlwckJTQ2N2VGdDZERtOU80eGhWWmo0UUliZVNsVVlRTm93bGhvNnYrVGND?=
 =?utf-8?B?R3c9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 869dcb07-dd61-4384-d901-08dbb054bc16
X-MS-Exchange-CrossTenant-AuthSource: VI1PR08MB4544.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 10:16:58.3314
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7T39IfVulsk7ZHR3tIVz4Nin+xXAncifhukgKvwrM1i2zg3d5SeSPFsk9MMcPTK7TiYHI46KQtqY8FSlm1qOjEkRibAORoZIAp3JQXAd/tA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6332
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_031708_571764_9F166941 
X-CRM114-Status: GOOD (  10.57  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] i2c: rockchip: fix i2c stop condition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i2c bus gets disabled without sending a stop condition. This violates
i2c timing on the clock line. Fix this and include all related functions
(rk_i2c_send_start_bit, rk_i2c_send_stop_bit, rk_i2c_disable) onto the same
level.

Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
---
 drivers/i2c/busses/i2c-rockchip.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rockchip.c b/drivers/i2c/busses/i2c-rockchip.c
index 23bf4a55d7..1bca3e9913 100644
--- a/drivers/i2c/busses/i2c-rockchip.c
+++ b/drivers/i2c/busses/i2c-rockchip.c
@@ -222,10 +222,6 @@ static int rk_i2c_read(struct rk_i2c *i2c, uchar chip, uint reg, uint r_len,
 	dev_dbg(dev, "rk_i2c_read: chip = %d, reg = %d, r_len = %d, b_len = %d\n",
 	      chip, reg, r_len, b_len);
 
-	err = rk_i2c_send_start_bit(i2c);
-	if (err)
-		return err;
-
 	writel(I2C_MRXADDR_SET(1, chip << 1 | 1), &regs->mrxaddr);
 	if (r_len == 0) {
 		writel(0, &regs->mrxraddr);
@@ -294,8 +290,6 @@ static int rk_i2c_read(struct rk_i2c *i2c, uchar chip, uint reg, uint r_len,
 i2c_exit:
 	if (err)
 		rk_i2c_show_regs(i2c);
-	rk_i2c_disable(i2c);
-
 	return err;
 }
 
@@ -315,9 +309,6 @@ static int rk_i2c_write(struct rk_i2c *i2c, uchar chip, uint reg, uint r_len,
 
 	dev_dbg(dev, "rk_i2c_write: chip = %d, reg = %d, r_len = %d, b_len = %d\n",
 	      chip, reg, r_len, b_len);
-	err = rk_i2c_send_start_bit(i2c);
-	if (err)
-		return err;
 
 	while (bytes_remain_len) {
 		if (bytes_remain_len > RK_I2C_FIFO_SIZE)
@@ -370,8 +361,6 @@ static int rk_i2c_write(struct rk_i2c *i2c, uchar chip, uint reg, uint r_len,
 i2c_exit:
 	if (err)
 		rk_i2c_show_regs(i2c);
-	rk_i2c_disable(i2c);
-
 	return err;
 }
 
@@ -387,6 +376,11 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
 		struct i2c_msg *msg = &msgs[i];
 
 		dev_dbg(dev, "i2c_xfer: chip=0x%x, len=0x%x\n", msg->addr, msg->len);
+
+		ret = rk_i2c_send_start_bit(i2c);
+		if (ret)
+			break;
+
 		if (msg->flags & I2C_M_RD) {
 			ret = rk_i2c_read(i2c, msg->addr, 0, 0, msg->buf,
 					  msg->len);
@@ -394,6 +388,9 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
 			ret = rk_i2c_write(i2c, msg->addr, 0, 0, msg->buf,
 					   msg->len);
 		}
+
+		rk_i2c_send_stop_bit(i2c);
+
 		if (ret) {
 			dev_dbg(dev, "i2c_write: error sending: %pe\n",
 				ERR_PTR(ret));
@@ -402,9 +399,7 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
 		}
 	}
 
-	rk_i2c_send_stop_bit(i2c);
 	rk_i2c_disable(i2c);
-
 	return ret < 0 ? ret : nmsgs;
 }
 

-- 
2.37.2



