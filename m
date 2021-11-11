Delivery-date: Thu, 11 Nov 2021 15:05:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mlAhm-0008IQ-Ln
	for lore@lore.pengutronix.de; Thu, 11 Nov 2021 15:05:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mlAhj-0006Nh-S1
	for lore@pengutronix.de; Thu, 11 Nov 2021 15:05:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VeQIuVK2pF+bg/7qrcTExW2kY7pKZTunK+3RtOnZ0ls=; b=op/NzYjkh4+op+
	6yJX1RV0noagAwGlTATUr1t4XLGKu5udZoG9UPmQ9o3CntMIRZp+x3/EWXLSfjTYzr8EzYJd1yThv
	T3cqdBbzggShB8Uf2yxUlC9ghlroZDuZWU43J4ltgyI0hMqV8Q5h3YtX0v1VWgjozn+Fd126uvSnf
	WHShHcG8C34wZc0miHENp0Tj9EGJU1Nb8L/niJ62sTVzP3w3/VFHnrnJUgUGgOnsUnKxXrgvDMRwF
	uyvWO0yFKwW2jY3mqDa6wvcqJ/ZR4bK61A5VKEKhqwEvlnG2PDmETefqh6pVTdQbbB9roOeuJIOAx
	X3i6sep2BgcdZVZ25Gvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlAgB-0086H5-Vh; Thu, 11 Nov 2021 14:03:52 +0000
Received: from mail-eopbgr80052.outbound.protection.outlook.com ([40.107.8.52]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlAg1-0086EA-0V
 for barebox@lists.infradead.org; Thu, 11 Nov 2021 14:03:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oNP3VGLEp4X1V73bsFhsL8GBPCn0TSclhpPLfp+zL8Q7Zlwv6NGEErcRs1Gu44KvsIB4Xj21FKrLK9PgYKuQdeqzRTaWdxOVzziKuPC/pHVA9RkpD16M0KnDiJnh1IWDu0b+ExBlrTG0cOK0Y9HGbjNNONBphWE8Nr/BN8OoVFBQvHCvTYxqlneYxp8Lk9nhiD/h7MkBeKLsI3Q5WyHgzGqj2t4SqjH8AXcyaLdhJTZRGez+bwifICNuYNdDOcxtikKO4Y0UHGtNVnviELrJ8Im7B7l1Y17im04xlmfQAaZ8fZmgSPLhbcDtP3UIC4YLrFV9F/mFgWX8x2xhmpXUOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xGLRAPIJvc9UkMuF9MibfjQj7HpsZIimf+pVNOXvrdo=;
 b=S6+JoBFc7XDP3dWd+gyY5dE+ztT6k2dmsbAYfHCmeOVOrS4MUnF25ue2ZO2osuYS6gdPYpC07wupWnSE+goGazpTP3I7M8KO9flHlcxYRsryEQf3rv0KPIG78XuozIXLbWBW5gkY5fSCurr9FHM0Y1DcEEZAkZnCFxh4RTfVHRKpjjKD+w8v0zuhsfo9o3FGk7dvtlYu/ZKaPzNs6pzXX2ekBGXRgx/RwBJR4XAUMnxaMkd8cd4CdurhXFezLGGyiZBw6UJxPNL+axquVNrPvuixL+FzO9m4EWYiTQuj67XxHGIxIAHr+AAScXxNVhtNVOlTnluSEfP6nZxaw108oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xGLRAPIJvc9UkMuF9MibfjQj7HpsZIimf+pVNOXvrdo=;
 b=lUc3CutEdQlD28hRc1BVUR7Vl0YhN/SDrDrFXeW9POLN53VChTAlQcjOCdNcSfG/EdrRhLclGMrMRK7d421K7AU0SU/fRODBNF1P9Cv0Mr9n/JIVYFyZthSMceb/3oqpnatdpcs3lybK3mm4bG9woW26nI1zt1jWQ+8WXR65FCQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB6PR0801MB1944.eurprd08.prod.outlook.com (2603:10a6:4:73::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.13; Thu, 11 Nov
 2021 14:03:31 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda%6]) with mapi id 15.20.4669.016; Thu, 11 Nov 2021
 14:03:31 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Thu, 11 Nov 2021 15:03:13 +0100
Message-Id: <20211111140316.1646962-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: ZR0P278CA0147.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::21) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from charlie.fritz.box (2a05:1141:1c9:7c00:2971:328c:3026:3149) by
 ZR0P278CA0147.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:41::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.17 via Frontend Transport; Thu, 11 Nov 2021 14:03:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4ee36816-e239-44fe-5c20-08d9a51c0b54
X-MS-TrafficTypeDiagnostic: DB6PR0801MB1944:
X-Microsoft-Antispam-PRVS: <DB6PR0801MB1944694AE504A7FD37A1C636F2949@DB6PR0801MB1944.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F685KCj6jY9Jes2/lZ7Z4L6l3R9But40a+EcDo27JaO/jMjMw3cBA60AQPpoSHXmKitOnC4TxaDoakx9e39SGfGmCCI4/y3cmk7Xt9wH9fDZcKNCSFjw+oRbFJ8KVCX7W9gTWiZHCW/Lptpu7rvOANzOEuMtirVipGRf/FOLNM828QYU302r3eZ/GOm2qS/wy4a4d7mFz2TxPX6RQ1jm+EtjLclv5aq3o9aewi6g4WEIfFLed73hIlY9YjYLfVDKLfLc7BPuzi70ujOsreoYXYye6/gY4xY1hsEutgy+tMUvAMLiRrz66tA4VJq7K6xpTuRMDqmNpCyGQ9QW48IpGHuea5yYjbvGglnMW3yt+P+OxByVDsQT/eG1Le2ESuAF/35/ynTNAnY3mPPn5rv1sBcO9gY8XH2RQsJ9r2IesUbOACuhpyRombo2Eqyz9ndVB6CS+l0b2wzsLCuyQqMSO+sYQuXLHJW3QphVRqq3m0b9M0x4WTMpFUPaL3zgGtxeIFh/0FWYzyIWJG3U8GIQRQLE1CjggXvuPldx2jGIKLo9y6HS8GS1gZGugy9Ii+gyASYEIz9oajUgn5nLpTwgCm1nnDZTTI/yUoplbhFmkbLbnnHSQxlsTlA7PBMTpLVr3Dk4ZUDK0ipOgxekW59DEg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(366004)(136003)(396003)(39850400004)(6486002)(83380400001)(2616005)(8936002)(6666004)(107886003)(4744005)(4326008)(186003)(5660300002)(508600001)(52116002)(1076003)(316002)(2906002)(36756003)(6512007)(38100700002)(44832011)(6916009)(6506007)(86362001)(66476007)(66556008)(66946007)(8676002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oeZ6IEmpXxumlQJrLgbHbLCSPvKSlsVchR6eiTRKNS2ksYtdu45HevqluHrX?=
 =?us-ascii?Q?WS85mlr9WWgZLeQuChgXTuW3lCCgS+BnXFWG5LrlJ7vc4voJtuHO4HEJey5U?=
 =?us-ascii?Q?CslNLEsl6/F2STrsxfag7kQOo61LK9kV+QI8Zn2+FFfJy723F2eeJ9Hi5gry?=
 =?us-ascii?Q?Pj9pJ0lwgghlC4QOB1WMbggVXpcEpRBeQ8jjlJ5/LxbGHbW6h5U5Qlx3+W2b?=
 =?us-ascii?Q?YuiBoPhDXxp/LlZKitQGXd7CPY5YCq8B50PAneqBKkjFtcQpF9GKMi2M+L4+?=
 =?us-ascii?Q?hgCRix2Fpm7lOWG7TIcn0o8LhhX/W5cQ3hHlyj0HCkrsNbqQfofkfgP9/DsX?=
 =?us-ascii?Q?dU4Jk4HlsHEJQ9RVXDylj7wRruHMbBQEhLEd8vysCj4ZKdmYJ/+Oro8DgFTf?=
 =?us-ascii?Q?4mIzsn5+6DPXUv3nM72UtvYBwq5c6QHZJoBbAqYIIPnxHWUtjJnYdBVPyxAF?=
 =?us-ascii?Q?SKNcCP6Nm+bMxHSh7dXlbH2RDcB3QdbbbjwFoAf6SQChPrqvWcRhsBpNrREW?=
 =?us-ascii?Q?B+1QXNRnTFKIVW+RGf/efZdILXQ5acRPFHj4DuShp0+jP7qNkAYabmr2n5lU?=
 =?us-ascii?Q?Ffh2gbleNga738+tAlrTdZqGkVe3RFXVbB6icUi9TO8f6U2oWdolLcdRXoSs?=
 =?us-ascii?Q?IT60YyckcNAMSelP76U5bv1QcCacDjs8OMtzXNuP0vQpA9AB0Qd2jhsrdqrM?=
 =?us-ascii?Q?eNHPGqNV/7CyLWFRdP9pzJcEdVWCmq2BQmGKQnq0ExROHzVEn3Bv+CV00o0s?=
 =?us-ascii?Q?2AwhPgu7DFxRYSE6y9PJKxiMwVuZBUQPz1rDmIxvROUWm6S49bIKTY7DXqw+?=
 =?us-ascii?Q?qpskB0Dv4I8qwC0JfSAchJahuVfmX6hTq8jvboZFjpyD5c1JOCQgJXgRF+R5?=
 =?us-ascii?Q?WBISplakUTbVoxNL6DXzYJ3EEPM0ZXGoNwkNfJ8O3j8cbRJZ4mX24qpKqqJC?=
 =?us-ascii?Q?L+4UwA3GEELMJUo86D6wJR9dgOSa2bi28qqVtCiWSdUeADW8yOv2Ss9zp941?=
 =?us-ascii?Q?srOxGFD8K1JjqH8/jqdajUxpTvrPqOH11myML0Ot652uLQpuAr/ToCOo1eNM?=
 =?us-ascii?Q?I3NcCc3h46Nwe+mf4An67IycZ6i/HYbXdQaz3hvuIl2Y1HMEjE26F3N7g1n3?=
 =?us-ascii?Q?4UQ/9Sg4UiBx3WwEKZWCvz6IXiNKMKzn8VyPjXThu86hxsI2oHDuJVCXLB3Z?=
 =?us-ascii?Q?ORl2K1aLnFzhnhhWe5nDeDvjZdRcvosRywTSdRBbKd4OK91Xk3vh1A2uMd5Q?=
 =?us-ascii?Q?DKOmLbux+Uy1VEd4wWOP+qOdL6/20je0+O+hLGMbKEJ9HBbl23nAaBlkPhSS?=
 =?us-ascii?Q?uxSW8FHV6P2qcBcIlOfW/b/UWf9FOgf5V+GDl90yKpgpLRt7Vx8T7Yvwb0Py?=
 =?us-ascii?Q?xujI7xFEqGOEXwbS4JYN3xsobxFK1JEBuTfVYI6BmH8nyIVxCcExjIJTUKoY?=
 =?us-ascii?Q?DGilGZ6ybjjpnfKZcD1r+IC4fCgdRsDqjXgvK0GwFs3TDZlmgczh/AQYtCgs?=
 =?us-ascii?Q?3hjZqje5VToUb7av2jbQlurJF41QVRxIz2upnngPtrg95o51DoVtykRTKSer?=
 =?us-ascii?Q?AJ8g5oof1MZDBduqmYgmw/NrHRfdGmzsQne6Msd8pHV+6GVf++bye2b5rDQf?=
 =?us-ascii?Q?s3UDAJGLWQOGB+pgmR3l2aUMCCjetKPc2mMRtWs2qbbtOSOcCkx9PXow4JKI?=
 =?us-ascii?Q?ganYiVgQkTqZJS8l2x52qdmiJziE1I09P/aM72myMPvo42dkb2evHSnW5m96?=
 =?us-ascii?Q?s40uFtiKvg=3D=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ee36816-e239-44fe-5c20-08d9a51c0b54
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2021 14:03:31.8610 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r1xVWWmE6ktiD6ShjRtr/MS0m35AQxq+vo/MXC+2JgnQQ89CpswH/0+a+XhTFCDcX46KyEq7ISYZRokINgXGGTNw8ZHTqgEaqn+9SeX/aWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1944
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211111_060341_082612_1F6941A0 
X-CRM114-Status: UNSURE (   8.43  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/3] arm: rockchip: minor fixes as preparation for mainline dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

These patches fix bugs that are bound to pop up once the mainline
device tree for the Rockchip RK356x are pulled into barebox.

Tested on a Pine64 Quartz64 board, further tests on a RK3568 EVB
will follow tomorrow.

Best regards,
Michael

Michael Riesch (3):
  arm: rockchip: rk3568: fix mmc boot source instances
  net: designware: rockchip: remove unnecessary clock pclk_xpcs
  pinctrl: rockchip: use alias rather than full of name

 arch/arm/mach-rockchip/rk3568.c    | 4 ++--
 drivers/net/designware_rockchip.c  | 2 --
 drivers/pinctrl/pinctrl-rockchip.c | 2 +-
 3 files changed, 3 insertions(+), 5 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

