Delivery-date: Thu, 11 Nov 2021 15:05:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mlAhm-0008IG-Ga
	for lore@lore.pengutronix.de; Thu, 11 Nov 2021 15:05:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mlAhj-0006NO-2C
	for lore@pengutronix.de; Thu, 11 Nov 2021 15:05:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAX1eiD4xTDe56jsw8dE145zN65WnlbbkA+uCVUvnuU=; b=tAw39jxzWDnopB
	J/QMMdvrhs6K6oXQZLZbN2MgKLlyS1jXjOFb9KgKpJmJf09G2IxC/OT4108TcYfDHTGKsA0Nvw73o
	/jSfuEBny5srSUP+tt4d8nkFzlY7QOuEwVydcfAavumiL7rxWNZ3X4BUCB2lQ57yNb0jCIabiecRT
	mRzwElDSwzqnZlxyoNNsZMQgk0blli24r7OW0HqT2BA9MwuN+OfcsLK3tKhXzXRkEzX9nYNRvaxQi
	aZwjW2V/uqBqLezGkhxsfPUd3aPiawHlfXeTyAAugDALPYUPQt0ZvK7lbEKIORIlQoptFHPJ0Pljf
	H4KGSYpAlYTp50s5FnYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlAg2-0086EF-LM; Thu, 11 Nov 2021 14:03:42 +0000
Received: from mail-eopbgr20077.outbound.protection.outlook.com ([40.107.2.77]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlAfx-0086D8-69
 for barebox@lists.infradead.org; Thu, 11 Nov 2021 14:03:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LiUOoPYWWt+jl+i+/sQbZTjlMYiyPdftWFAxydnYsbjuyPBS3gazmXtyVaQCUg50CUaIvbChMynHS5aYhUNU5JiSYumMwMs7ogX7PDG9UiRka7Rg7o12E3a4M/FrLGuQF4ZJ3el9xifW48YL15cmcufpzRigMZ4JRzBct5DcTQbZxaDl8cw0zsS7vH5KM3ostqnpWKoBfrXJtPZqAse0aPHhav+UWSpJH8RUN0exFda1G0pF1/D0kbOr1oiVfZ9ngeK3dAbMklpCRMUKrXAJK27izZFwkWfc4qFyQlxwD3pCa3OMBQZgodwgr0BSm4H1ufotGeDEv9DO5eGri8zR3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mXww9MNKjiV4q3ywV7Q5d2XVfGYvV55+WDU9BVTSEp4=;
 b=Sl01UUXMC9E/yLXRxYQbF/ZcbsXfe+pw3XjFj+gGtU/MPJx+k5YyiscdZKA9Pqe127pc55cA7Nxd4EORoiQ0ljWyeJWLyP6ovfEEqlRwZrh1kxR1Kj3YF521tNBw5uSVTjvrdyDe+slQtIVV4yVw5SjsXjIPsFdN5hf0B6Bd+8WWuEVjGs8mVE69DjhcxaMFITkPzut58ZupbeAH1+oC6e5Atzpg5dhkNONJb4erKvMfUnOMSn2yTTFyXKRbVP/SzEe2sT0G2fTkEgehuiDtBdSsfTieBvWqxwYNZC6YVhlQtPmWgZOgyg+s0a4EwCsE/58kYDf2nZFYDv4D3PZDHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mXww9MNKjiV4q3ywV7Q5d2XVfGYvV55+WDU9BVTSEp4=;
 b=o5C772Uw3rePANshHKTE759zfJ+l+1K5HlqXUBez1Yg/CJlQwEsI80KCxh9nApclbDwU8RHJAwXqQq2uJyzwhEg7D8Lfp/Q85MpaUjaRk8FNipUSDa2n2heUpUM5Vtxgz9Mt35KChBnte477MLsDhseu0Fj0VULlvPY1tYwmZrs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6330.eurprd08.prod.outlook.com (2603:10a6:10:263::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.17; Thu, 11 Nov
 2021 14:03:33 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda%6]) with mapi id 15.20.4669.016; Thu, 11 Nov 2021
 14:03:33 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Thu, 11 Nov 2021 15:03:14 +0100
Message-Id: <20211111140316.1646962-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211111140316.1646962-1-michael.riesch@wolfvision.net>
References: <20211111140316.1646962-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0147.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::21) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from charlie.fritz.box (2a05:1141:1c9:7c00:2971:328c:3026:3149) by
 ZR0P278CA0147.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:41::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.17 via Frontend Transport; Thu, 11 Nov 2021 14:03:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b8a3aa32-0d5d-4535-2583-08d9a51c0c72
X-MS-TrafficTypeDiagnostic: DB9PR08MB6330:
X-Microsoft-Antispam-PRVS: <DB9PR08MB63300CC0CFD178AE799B97B3F2949@DB9PR08MB6330.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:363;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cZHbeVQt/ctIEauI+U/kv2t+JFbx0yIjUbwH66Hpv0/JSt4dxiJtuQ8RgYMRlLmifYj4EwU1RG3DcKwySAWqAc3B1ru0kUTVk9QIZnM88PFzzXs5xGLJBgl+Bn1gOvILXT8txI4uzLzCyM6HQ9qWEPEjhwC+f82otHpFiIUi2nxhwIqSA8faAymqiI21Eh1mE+rKjGyz16XZT3mCnMMviAXaNkhUE/di5PXBPOZqSR3SzO0/NtCZaYdCH8rfim66FEy/UWZVL9mWgb5U9oCbVI8xL3GN7lkk9tKOiMCjdUnvn9vaALSrLy1mODAest2nCcimzbOAihaxBSl1BKScFddIUMsR/6bgkuSCRZ+feNCu3h0O2tyyCyxfZNDZOMW/oEZURoohkqVkpfmGpCMkJxnSdkZiO/qJ+8O5Isw0jA4gyG7ya9LicocvnyJ/8QEyJknaLW+Xa7fjcTuVRLMneNn7pEeLeRRP4I85FhkHUhIUvdvQGyOoaMcxPh3M4h/5JWQFF2E3+akyhcLl521I2mbFu438CbuIANJ9Sq63zefnhSG6N1G5/rcARqQ+NWo+T3ZFbcUDAyRUvvXobCF5LJMZznv65TGGkcO4n9n8IUyIHxil0rcMG8AXRM78zWNq2FPNxzJkS8wIIZjqKHYiYg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(39840400004)(346002)(366004)(396003)(107886003)(8676002)(186003)(38100700002)(6916009)(2616005)(6512007)(508600001)(44832011)(5660300002)(6666004)(8936002)(2906002)(6486002)(1076003)(86362001)(52116002)(4326008)(66556008)(66476007)(66946007)(316002)(83380400001)(36756003)(6506007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cYc7CiIVgwjXBulz9bcbUE0HOnGwEA+sNzUf8arf3ZWv1PDXNK05W00wn7i6?=
 =?us-ascii?Q?wBuXn48vGScCCh5G3qQd7J/VdwpEvqemrf8zwnztAzyqUf16cjMTBgR6SoBy?=
 =?us-ascii?Q?PD4X2lPxeWNUMtUSdEvw1NKKDLpHVX4e9ZCfcv+ss/WjRQGSN4P52giwDW+1?=
 =?us-ascii?Q?hDTFxOt11zyPB4LyosnEUlg7QOxHBVQAZAPzht16YgZtHJj7pPaWaQxkpZ/L?=
 =?us-ascii?Q?GiNutO3hcAiccFB9EPV90yzJsMo7CyWGSQ/dP/syfrsJkxp/DFbJT6iQDx58?=
 =?us-ascii?Q?hamUGFQzVQlZNWFNKVMnVW27hceoPnTKaZBR0jHj+CBM8bc2JjtyqgTqOyLZ?=
 =?us-ascii?Q?wpNm3sKlmC6RuXIMH3ZMlCiGO1e8S+SujWLhgWj4G4btzMhVeOSPubyyPYyf?=
 =?us-ascii?Q?TqLDIrNHFfujpDxFnm2HVn7eTr14rU5Ig2rrDf2+yvKcLm85J8hgUjpqFyVe?=
 =?us-ascii?Q?duqbenSwIY9R1EnKFHfjC0m5/vkQj33L4a/JCb3oYMu0j1ld3RtsybpGRGfY?=
 =?us-ascii?Q?gxjy4967G56QIHJiEg9M1dm+gSMd/vfYDiQhKTv2rgH8dYg/zlpUIoD/sbRZ?=
 =?us-ascii?Q?btWDXTpuY/Gd4UIKEYd4Evc7jwFw4f/3J/HUKj+e8J/+bxhb9mMF+8ym/8CN?=
 =?us-ascii?Q?fv+gwVHuPY/WBjmPH1/UIi4Dbcp7Q1eCMB2kGvTFC6kl1TMbmYrqgRD9ypcQ?=
 =?us-ascii?Q?NJWJLgARg7I3csfWMf+AoSuEShECi7JfZi4YOpupKntP8DTrI2STwnKoLsV1?=
 =?us-ascii?Q?TR5BZndaRsHGT2vfH9UQHpOEXkR7bzYY1BtVXrlCKWqFz8H1HvW4yeimsSie?=
 =?us-ascii?Q?C7vVDyHSUYsuT3RN6SRjGzvfrzofXzCpRUV4nCfl0CJ/nL0xLOJQcP+q1Xb0?=
 =?us-ascii?Q?jc9btftFr7jQDuuN2AWWpnVQp4aBhb2fP7tgke6lQUPXpwp2ZERawQOUar2N?=
 =?us-ascii?Q?ypyhNpnMrbK6NI+ckfsNUSxt3gnghyIsINRI4auCbsxs5CwlpNhpHgAphXG4?=
 =?us-ascii?Q?KX2ZGM+4U60p5fyDSa5wYyZhxOuOa173b9UXSdGJnuM+md/6Eq/vcPVeSPOX?=
 =?us-ascii?Q?Fn6hqSGuntMMLcEZQjC73GUo/FF9qLYwSmTlblzFHfvorUJZ5JTq/qhycmqQ?=
 =?us-ascii?Q?HG2Kd4KE5RhzNGIx0uzyAHLPW4r65eOkEz4mvam9P3JWBLGKTAB7SvWoqpoO?=
 =?us-ascii?Q?INy1K83jSEkNd3Kf+K2UX10JC1CBH4QKfY/PBWRpy0eYJjyDLpleMkLhHFRD?=
 =?us-ascii?Q?dTYYKsvp+RFhoqcJA0/7KmYmMt5pEvwh5ja/1rUMTGVkYC26GI4agOM9RQ+f?=
 =?us-ascii?Q?m5y5iOpDDwaOtGnCzUI5Na8XcZaymKQkkUBKk0TUN2TKcVrXeCr64YDoXXky?=
 =?us-ascii?Q?9NqQ0eVapFTEUsqqkJR0qTTGrTMtveEDL6TodUybvKYEm8kDVjNFU/r6RCFG?=
 =?us-ascii?Q?Lvlr1IQeNiL+y2LB8tM37Nt84DoIMe9xWzLZf2WW18TOypHrhVSTnc3m3XOq?=
 =?us-ascii?Q?6uvV7B8Pq8pMr2scEWVKGURw8kI/bcDov5G0HCsxYVd8pN9nP9sTraO3Py0L?=
 =?us-ascii?Q?+zu8sHIE7iY2d6qaVfkLMC+4TCSEjyt823tNLbI7vOZdXg1Bo3aMZ1cNxqPu?=
 =?us-ascii?Q?LrCW7yMmoBVOaJF/IgzRul1FNxGyXPJFiO0UM7FVIomgvROVRMuS0MMYD/mm?=
 =?us-ascii?Q?DRnWIJtJEyNYZ9lmsauDLNl5Y9bNiewjcUWQgvfynMOf+S/rUnqxJDxs6uL1?=
 =?us-ascii?Q?jwNZOu3nmw=3D=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: b8a3aa32-0d5d-4535-2583-08d9a51c0c72
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2021 14:03:33.8089 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k2HHedpToDx+BLW7K+8DZ1yowniHvOeFmKGHqWW8e4SVdQUG5iAHpD83dVbQX/yz5hfOgwfDdQy2J6yeyKa/w0Eom4T6nvsIFD6dDGBLGz0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6330
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211111_060337_258146_004AABEF 
X-CRM114-Status: GOOD (  10.70  )
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
Subject: [PATCH 1/3] arm: rockchip: rk3568: fix mmc boot source instances
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The mainline DTS for the RK3568 EVB1 introduces mmc aliases sorted
by the addresses of the corresponding controller. This commit
fixes the instance number and aligns it with these aliases.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/mach-rockchip/rk3568.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/rk3568.c b/arch/arm/mach-rockchip/rk3568.c
index 234c6d22d..95f462eca 100644
--- a/arch/arm/mach-rockchip/rk3568.c
+++ b/arch/arm/mach-rockchip/rk3568.c
@@ -144,10 +144,10 @@ struct rk_bootsource {
 
 static struct rk_bootsource bootdev_map[] = {
 	[0x1] = { .src = BOOTSOURCE_NAND, .instance = 0 },
-	[0x2] = { .src = BOOTSOURCE_MMC, .instance = 0 },
+	[0x2] = { .src = BOOTSOURCE_MMC, .instance = 1 },
 	[0x3] = { .src = BOOTSOURCE_SPI_NOR, .instance = 0 },
 	[0x4] = { .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
-	[0x5] = { .src = BOOTSOURCE_MMC, .instance = 1 },
+	[0x5] = { .src = BOOTSOURCE_MMC, .instance = 0 },
 	[0xa] = { .src = BOOTSOURCE_USB, .instance = 0 },
 };
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

