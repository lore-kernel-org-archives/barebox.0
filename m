Delivery-date: Thu, 11 Nov 2021 14:42:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mlALV-0006wk-6u
	for lore@lore.pengutronix.de; Thu, 11 Nov 2021 14:42:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mlALU-0003iV-0G
	for lore@pengutronix.de; Thu, 11 Nov 2021 14:42:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18CtPN4FIwqmFmhuUsHgzMiAsEsJxK3c9+4d2nff8zE=; b=FkoBXGu0qTaztZ
	XKUcVzVCCubPfeOABSLeEXmT23KAJdJ9aD5yqCYKcw5DLb+hsb0dk6bnrE996cZ+Jz9eXgwltIkKJ
	eUa44ZSUr1PMt6DcBk2XUfEKMXjJTzwqEvvMab2WZbZxH64IimJlx+pN79DJnPZBxB6WvrRzlDb4H
	+v44jx7MMsPHEW5IniOT5cVqh1iu5zcCzhpNhl9CvOJ04qRLJyNQOo8yWteJXRNZDTJppydcbR3J+
	hmg4WgHL4fXK5PzpgCMfWLqN8KG1KVJmB/l7l9eZHaLQ1X86g0EfycP3uV15gIHM+xw6OzqUKQ1Xj
	9uA3Dc5+irzrpTWPYBmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlAJw-0082WX-6e; Thu, 11 Nov 2021 13:40:52 +0000
Received: from mail-eopbgr70083.outbound.protection.outlook.com ([40.107.7.83]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlAJq-0082Ve-Sk
 for barebox@lists.infradead.org; Thu, 11 Nov 2021 13:40:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yh6x8SYpmQB98OIrSWrsUN6IuLbZG8FfdIap+zBu1tPOqkAXqnE8wtDBCf9lCDyE16gDh1UnQAwbvO7as87s2GSCIJO1n939xdt9sWZ/GvaxSfFPtNtTo2jKvk1ljpcS9AnIJLIg0LnlZjNYnGbGlbw8IlxyEkV8KT6grgGrNPMVsBaI+JqfaL/TQjOiZTctCWsNs7OfOrz41jS262FaEl7JMfypOdAQhxKVVq+75cejD4w8cQiq5ktxOEwUh1DjWX+DCG+v0hoTSqWiOoF34cgQIC1UOJaxXI81dvjL/w22+A7wUvUiTvUHn/2GJ5NDESkUQeLFizayn6w6FpZJzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uVSG4c1XVl3rmNOziqCNqwTGE7ymWqUNKtE08hd3gSw=;
 b=Dr5dZeEoEPbPWpb7veckbZSd5wfsaWUZiMhO+qPEN8aTBg0dR1g4ZGl/3a8ak/QtKGKyviI1ATtnN5KU1QnamIHHDNUmA4N2lS/BceBOeuWA7+mWex9U+r8zkbaiDuizgY21bFde19zBQg53e3YiVq7VFaNPkcBEUCJreB+fBX/7XlezV2ouNR7MCD4BUMhlja57h2SFlW+xE2NeWe2ldCvBvtf/7i7wFuXq5fVbB8IMrkb17NNwXZfxFLQ5NiPSzo1u5WitAIBY+ItY2Mi0NYa5c85dGSTZiQTTbwqg/WBh3I6/FyNCoDmvpYjsdUGi5YS9mQj8Gb+H/KwWSgvT+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uVSG4c1XVl3rmNOziqCNqwTGE7ymWqUNKtE08hd3gSw=;
 b=rU8DCmU1QOUpTNwhUlAApcctyGop77BROhAMqgcbCvDSr3nX4CzkDAC2OCtRF/38dENOZDA6yhdBXmAOoQg9kMBdtf4MwsmkLzuklVyj4GufAnztQssdiHCyvW+luoLIlG4eolkoEIHj40SyjAaVliZS/Rzwl9daw8+mhc+DvOg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6874.eurprd08.prod.outlook.com (2603:10a6:10:2ac::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Thu, 11 Nov
 2021 13:40:40 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda%6]) with mapi id 15.20.4669.016; Thu, 11 Nov 2021
 13:40:40 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Thu, 11 Nov 2021 14:40:22 +0100
Message-Id: <20211111134024.1645816-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211111131116.GW25698@pengutronix.de>
References: <20211111131116.GW25698@pengutronix.de>
X-ClientProxiedBy: ZR0P278CA0129.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::8) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from charlie.fritz.box (2a05:1141:1c9:7c00:2971:328c:3026:3149) by
 ZR0P278CA0129.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:40::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.19 via Frontend Transport; Thu, 11 Nov 2021 13:40:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 33897ea1-f2b9-41a5-edaa-08d9a518d996
X-MS-TrafficTypeDiagnostic: DB9PR08MB6874:
X-Microsoft-Antispam-PRVS: <DB9PR08MB6874A130799051EF36B49011F2949@DB9PR08MB6874.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tCEyCWdHkELQuHmYAd3nU8ZCxtbKZEiPXmzLC2lSlLQvvE2qR1WWppeWdFBJKAYMPBoqX1B2sjhvs2tXg1ZU2UVeADoYvF5dMeybUefoft1JZnYmMM1SdvJEVmPuocsj3H8G738HsMv8QBBTGuyE0+l3AzdL14xsItkM6+1l0dmo0YfIG3Bchyx/+mGuJD/5O8zPWk5B3oMKq+asJ6J0dUYQST/0wJkoLGHZRmhPX+ssQegDZl65cOD+3eCBs2t/KMu01VZmNPV7cadYIZJSuGGys4uosom53CToG2qX5qQqauip06UquxCOJ8DQCJkfmcjTW84Iv1Nwi8/B+M04NNRnXM4pT6cmBGdFGNnCH4buI5xPSRTClb/YcDBley4XC5ReiHEukuu1abGLZ9q7wEUFo7VToHwvraCa8VS5W0uFnJY86zoTxRf2zeumiGUJIofAafu7YFtQjqViEW0DBzhZofOziPSGjzETOHkq3CarYMg5TfzWET0w21pMxjHLli5STMr4JunSSN8JXmhIkWghKC1NlEf+jWn/uPsmHztXOSAzZoKa32kL+kTrD3lQsQuT6tR5kej9fq0HgszB1dSDTe2MKy5nAuaX4baXcY51ToU+EYPSbuOr9B4bgqCKqJlzoTHYzu7ygvqDZns+fw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(366004)(396003)(346002)(136003)(376002)(6486002)(4326008)(6916009)(38100700002)(44832011)(316002)(86362001)(2616005)(2906002)(1076003)(8936002)(52116002)(508600001)(6512007)(6506007)(5660300002)(4744005)(8676002)(83380400001)(66476007)(66556008)(6666004)(186003)(36756003)(107886003)(66946007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QQQLqX81qPtUvPm+bRltH2qOnXCTJmwda5L2Y7a5nuwSdFEYNAl+qc+QvU4M?=
 =?us-ascii?Q?ksqCvZa8Pp6kD3zvC045EMCFUwyuvA0ZJFDIQviu70J+hfWNaQPGwWffqJfP?=
 =?us-ascii?Q?XKZ/7aET4DaRSrNEptGGwC+CY05RcxC43sIAmrJ2gLv1PyuJ6oS/l/kNrp1H?=
 =?us-ascii?Q?BE7DZznZD+Rz6gDaBeW8/bN/KrNhU4JtM5DRkOIRsd5J3OiejskwT6LegHBs?=
 =?us-ascii?Q?xU9foxPhAO8b+VgieoccuDPf8I4n1hovdz+LWB8j9gWtwLC1102m/33cxGsn?=
 =?us-ascii?Q?2r8PuHOo+U0/wJiGkNEDkffPL/WLghgTwlJSiJXnjXi3rQGLXti53cMDBpsX?=
 =?us-ascii?Q?JaL2fpH54NJw1fJjRHIzzPiQPnj05L5qCzhOtXjfogWL14ccv0IN7FRlvx7Z?=
 =?us-ascii?Q?0KMZpMXWoN/EFMJxMuYQGHxVdGbg8Uo4OE7keKUHaDh3jU2SLZkNO9zC6wgW?=
 =?us-ascii?Q?Jk3eF/yyVE4gP4bseE8QfLyIUvs00MWXm1bFjQab7XefWQWsuL/XIp0TlwnD?=
 =?us-ascii?Q?oTFgobJWiykoMlTu5iNyVfO+6bFHBc/ksbEliE1x0qTEOwuTYrI1KOWqc4ng?=
 =?us-ascii?Q?Akfvep0njjpkOjPkG7FFkSF4sQ1FxXpuZm//FC6SstUXkuYCov3TbTItnsFg?=
 =?us-ascii?Q?HcqOy1OJnNRMYOFtbyXOVayhrNCnU2Rju7EQobQimsdeuVujbzW+e0M6eIQd?=
 =?us-ascii?Q?Mtau8ec79tlguUuFssCpTU1CsGRYIi8iPbqt9c1Ti9zs5cx6F1Khjl4S8qlo?=
 =?us-ascii?Q?q9VI2V+ThCppirtI3RPnX0TbPVjlPtOQhYZRtG9Ol7vfy2rMDbPyNzk+ebFi?=
 =?us-ascii?Q?00beQK/FGdDa7cfqlfPW2AweGjMkcfLYbe7heK2bBOF9FYrjyR5MLyGgbPaD?=
 =?us-ascii?Q?TFgjweoyCZAzv6vSEqGQCYOR6xZD/Ssm7rbVqVPOwgSi83rheMSDAm125Jpe?=
 =?us-ascii?Q?shV14eNBcGLkfKEFzsc2V4ANOCsObePg5LnPGpN8rvg3E9CXvmiJyZZimCRy?=
 =?us-ascii?Q?XDkPIufS4hNpCULvO4sBFB3rdRvdbpCm1odhQ/sEfB0QQPpFjbw1WyHWjot6?=
 =?us-ascii?Q?3H1YZaELoNn1tqOGLQXygB3sHf7EYMJfZvPZMUB8ar3DcKA72y5dphmIihiN?=
 =?us-ascii?Q?Ol2/QALj9ZetvBlKcM/Cf1aLTrBcfWJVWkLWs09Upxccap7VMXm5+ek0hRrM?=
 =?us-ascii?Q?zVvnR+bLMtBz7wENJCkoJZSRsikPIQS3zs/1rx3XR3QMk8gpSTe1snnHKC/W?=
 =?us-ascii?Q?fLoG1ZfHfwd5/9OaN1U4+Y96S3957buEjDeAyclHnyoYwqDDW2tR9bk11Bx8?=
 =?us-ascii?Q?Eg4rjUgQOAeVDKwfXW0bR5gRxfqWd9KFrnuXtOUpecUDEDXkV1mW5Wm9EpQC?=
 =?us-ascii?Q?mbP2z52FcQ9Jmxm2YBZbIjEDqQk/geyWSP+NLd5HbUTofa4QHcgg/4Sf/7r6?=
 =?us-ascii?Q?dsnRIImV0hXyg+Ddd3jkGGbK1QWYvO53+s3WvmZ9PWJVi6kAaHI7VsEs/45K?=
 =?us-ascii?Q?6hiCam8KJ0jGJ8nzGm4wS5bRJSrIWwIxL2o7oI7j6hVy0hHiqqJObxKwjzHe?=
 =?us-ascii?Q?2YG4QAHC2BbJqtvRTNOw9fzhUL8c3jSxNa8lODTXzwDP/6/9nv278GULETKV?=
 =?us-ascii?Q?sumDo5VimHwOFA1zLqjdU75RsN3gIadKXyY2zgpHavk7YsEGYSdoBiSQYPk/?=
 =?us-ascii?Q?GyOBWI6hj03OlUt4opdBt199SWnRRaSvhTV00SmZ/6OR3VjHuXtXy3uDZ1ez?=
 =?us-ascii?Q?E5dLQ52lZw=3D=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 33897ea1-f2b9-41a5-edaa-08d9a518d996
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2021 13:40:39.9680 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hexI5Djct+bX5YfuEIuruk0Y5ecw+A6dWf9VLCQQzCbiDnA/WgrPMAN8B3BGEHtuP+LvzPDf8XdlAgc7+Pa6mJsIkSZnu1YgsCxhfBgupSY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6874
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211111_054047_040084_3983D761 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [FIXUP 0/2] arm: rockchip: add support for the quartz64 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

For what it is worth:

Fixup 1 fixes a constness warning.

Fixup 2 provides a minimal barebox-specific dts, featuring the
required memory node. However, it is pretty much copied directly from the
RK3568. It boots but could possibly use some revision.

Best regards,
Michael

Michael Riesch (2):
  fixup! arm: rockchip: add support for the quartz64 board
  fixup! arm: rockchip: add support for the quartz64 board

 arch/arm/boards/pine64-quartz64/board.c |  2 +-
 arch/arm/dts/rk3566-quartz64-a.dts      | 12 ++++++++++++
 2 files changed, 13 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/rk3566-quartz64-a.dts

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

