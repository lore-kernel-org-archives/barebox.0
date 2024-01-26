Delivery-date: Fri, 26 Jan 2024 08:53:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rTH1y-003w4W-2k
	for lore@lore.pengutronix.de;
	Fri, 26 Jan 2024 08:53:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rTH1z-0001hN-Ii
	for lore@pengutronix.de; Fri, 26 Jan 2024 08:53:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mQB8lNTn7DYXF9G3tLUqGynIPL6zpVGrQALIJgyGEvY=; b=j4stG2ZNRltvianp44pfOFmMqX
	usxXiCQSuviYPlzpDcN0NpSAaKRJYTX/nESSHeFdinDjLGZ3Zg8nS3CH1QmsyMupjoI9rMJngb4d3
	0Yfv+jFxZo/CLxb4txAJbRtQ1EYbIhVSawM0MUjRS5UqvjgYuO6ATIkqqmWtskvO+QKA1syYlkNpb
	OtaA5+aWADwnwIZCVlk3rjiKbwA95mQ0y7xJzgG4jkmIVPazqZLCvYJTbI9cvkn1FsFj3gTMf939g
	kshlM7L087tfmlDHS2mh7b9YVybhlM7tnlOW6Zr0wQT7YlimkEeXXv+CRyW7/PZcmcIeYfPNnq+Sr
	XOlNPYig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTH1M-00000003Ov9-23fS;
	Fri, 26 Jan 2024 07:53:04 +0000
Received: from mail-he1eur01on0608.outbound.protection.outlook.com ([2a01:111:f400:fe1e::608] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTH1H-00000003OuK-2yo8
	for barebox@lists.infradead.org;
	Fri, 26 Jan 2024 07:53:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gvo5a0NyPsTXR2m+bJrjikA+KbMoFYojCnGZ2ha1wYSvYNsGoGTGIBzcgflKiTFDWJAE/2JFcEyx3HwSR4qNttvFLqua2DZC3Cn1aRyntinQ/ZjIlUv+lZS5haZU8+aeB6XVQuZfLq7LFdMXyjotEUc1z3QXutKiiOaqMg1/HYoLK3rJsKrTqYS3fNDyCBpDlK/zKj3/OdJrVJaeRof9O54cpR/bKG6okYcoCDcxp6VeurFn2XG+wCXfN7BbgmoGDBO/poWRxU3mEfrR6v7orZxOAi/opsrLqsyRXNBFud9yqw1HRwPHtnsYz54yjzMtiY/8FB8PMQPq7MImt0xOEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mQB8lNTn7DYXF9G3tLUqGynIPL6zpVGrQALIJgyGEvY=;
 b=PtsL/t2rvf2GwSvRSyzqiGRPetXi4agtAx+eEflTlUULm8T8LN/ftBxlW+n/5OFhpCASJADKg4aWXZPnHaScjGcYOlCS/W/Z9Dv4yIE+Boarqz2zrUEJTtfbhahtTryKL0ifGjang9ccRLKeDv2ss0vYI1+xCUUqYJ5yEOZ7lEFL0e9fjhiPvoigAk+g5bAtCo+fDPyd4ufLa4KC3TT4/Cvs6uK6ziAg79e5SBDQ1G1SJlmcY4sPAB0flz+6ElPNEqg9pNjZ1n3f1slQH5JOnk2EoP8MTdHdqE9BhHSJe6r/XeUxzXn3kwL5+xyvO36Seh01VGWkiDVUIIH3eRypdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=t2data.com; dmarc=pass action=none header.from=t2data.com;
 dkim=pass header.d=t2data.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=t2datacom.onmicrosoft.com; s=selector1-t2datacom-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mQB8lNTn7DYXF9G3tLUqGynIPL6zpVGrQALIJgyGEvY=;
 b=XJSNyJ4WvSEHUM/i3Hu7yxAkBeaf02/mJKwON3AA0VfDK8KHp4MoB5Rt1c9/50kVVaAt5KaKi/nfiBIioNc7i1kWoIWBhmEduzC5OqVg2E/okbN9xfigYMiaCnXE+pXLjhZllh8IHiezudN+DJg/kldEyFSE1bNay+1AvrV2s50=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=t2data.com;
Received: from DB9P251MB0618.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:334::22)
 by GV1P251MB0795.EURP251.PROD.OUTLOOK.COM (2603:10a6:150:52::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.15; Fri, 26 Jan
 2024 07:52:45 +0000
Received: from DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 ([fe80::1398:9f4f:da3f:1862]) by DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 ([fe80::1398:9f4f:da3f:1862%3]) with mapi id 15.20.7228.022; Fri, 26 Jan 2024
 07:52:45 +0000
From: Christian Melki <christian.melki@t2data.com>
To: barebox@lists.infradead.org
Date: Fri, 26 Jan 2024 08:52:31 +0100
Message-Id: <20240126075231.1285729-1-christian.melki@t2data.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3P280CA0043.SWEP280.PROD.OUTLOOK.COM (2603:10a6:150:9::7)
 To DB9P251MB0618.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:334::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9P251MB0618:EE_|GV1P251MB0795:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f21948f-6064-48c8-4c31-08dc1e43c80e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Lj7Y+Y20pxrH2BfgoCpCZi6OXCCSDyUgupvOgZWWB8dkGSebUYyuko2uiHi3I2Hr3TsaN/z0ELbMvjRvLa9FuU4HcPxAVe3OeXLW0tikIujthwce7ExLivaqZg7E62CyxUzD8GY/xU5hcZtcd/p5N3wwyjF6zEdtdYvy7V4RVPK1UyG/HaeQ8q2jyMk+slbU7t4XwIG30zm2rCqILiGl5L8oNHSoKw7EXa9UKozzW896yMrRezULSfggNicpmPRk/myK1mHeUb1QQE8YueKVD/JRE/tK0lCBTrHl8F60D8657+zLMsm8s2Gd1uTCHLFyJ1nVphxeCO0kjSLooWX63OcsTLnM8U2s534H/p3ZFOOoMSn2wWl26t4OUvqwdnG3FMmo+EHBAZ3rkX0oRF7Mazj30Sj22ZcQPk1gKU91Jhyh1x/iX6z7vb2E5YfsTyEFmTgDSs6LhROzmuIsk60RisTSDPpRPUE2kL6nyQF+yJufa71QPUenibrseFUVlvHPBINUxxBnqhaYbXmlMwA6AoR/MJJikIrzKnFAV7bL3TSBZWjSr+iV8qYncoWgVEr+w3ze1uR4AydWOfvF8uVkzGukNyvIdb5Lo21NnlTWdd4kJHTDS2g8mlVFrY7IheXc
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9P251MB0618.EURP251.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(396003)(39830400003)(346002)(376002)(366004)(136003)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(86362001)(44832011)(4744005)(2906002)(5660300002)(36756003)(38350700005)(41300700001)(2616005)(6512007)(1076003)(6666004)(38100700002)(26005)(6486002)(478600001)(52116002)(8936002)(8676002)(6506007)(66556008)(316002)(66476007)(66946007)(6916009);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SNEIMCRZQoS9/T8ZhWiEW3ad4EaeDpnOmNRyfKar/w5YkGwnUxNDoZx1D7LT?=
 =?us-ascii?Q?Fw0zySmtpD1pA4o6Dyhyho1+4fp/SmhZhIsb6Jnnp2kbu7ld9iKAFXJgLh2d?=
 =?us-ascii?Q?kkm+CIAjeLIwaZcU5+nKIKo4zDZzsSdAq2t+WFwdgp7borYEhC/cilAbZ2GC?=
 =?us-ascii?Q?vl55yBUs81t0H3NqclPMK+WKrjGsL9Ym5xRLJiUF5vpDaFCwporSbpZF/IT5?=
 =?us-ascii?Q?nXKIj25bW7d60E+RWHlMH+rvUBWuXnSI0Mj8LCiFKxmSKh1s15n1P4nNWr3A?=
 =?us-ascii?Q?1xp80VxaRysTCekOZUQG5aFeq+W+dyc+Estl/kbjAAC13KbqZxJB6LYoGQ4z?=
 =?us-ascii?Q?40t4Jm7HTCsQ3VDqph9Bl+4M9yBE/aUtKY4M2oelwY7vlz20csZFUnOcUfgF?=
 =?us-ascii?Q?kNvA6I9w2oR03GIZeOReOLk4hrEziWkUbXW90ziO5sApLh1oyj9udG6Vi/tq?=
 =?us-ascii?Q?uCTOi+i9DPGpYFYSdlO7woc66ornE4NgJgCaxIIE9/yzS/6Pqw1x3C2khNR2?=
 =?us-ascii?Q?oMIxXV1868mEVMqEZLZvqXAmTyDmjjCjWFkfMYcfbtXF57PpFptQM/ggJrxf?=
 =?us-ascii?Q?zvjppHy7e82NpD3EAYxasVSDd7gLHNGPdQwr2+PTBQQEmH9JETYl7datxG/A?=
 =?us-ascii?Q?j++HUMUOq1/8NsW6rq9tinjYRr1Oj+MlgXZUeuZyGFwHUoXGxKxax/WO+U9H?=
 =?us-ascii?Q?7D87EXcT5kZl7UX5tUUnCfD+RICmgRYxj9CwIRdpMOajpdyLOm4j5ZlGUZvl?=
 =?us-ascii?Q?ZxRPKEwXlmE2tuirTAhvvAKJ6W+VcSgr4vuzUK6L3G7jETCkiyG6Ofz/naXp?=
 =?us-ascii?Q?LeyJh4sxAQxQbIH+KdEvgfuZbdOmafwD72I0eTmUCtRhN5/GbDfWDmGfCH3y?=
 =?us-ascii?Q?w/OKksR4xVo+Rm/rqHa2sU6STvb7ZxOCmZWkhhIypyzgu+Dkk49cxXBqMWtb?=
 =?us-ascii?Q?zCU1OW9Gk8gTgxbsQxjNHYdktJO8WWFO6FHgSeDatLtEo1r92tRIK9n05qaS?=
 =?us-ascii?Q?PxnmegecqblgsyJSAdxL2Tt6QcPNfXk35PbV8rdyKzmyixNINdWck+Ac1joe?=
 =?us-ascii?Q?uxkLpWXrq5E1iKvTjY1pW4sLrugSHK4Ex9F3inJzMAHdqiytc9OdR00N3V6t?=
 =?us-ascii?Q?9dI4HwV59/WK/rx+nSqg0BneWeUWVaDyQzTyEJJbFRrFBwUEUnOEgEtrzhX/?=
 =?us-ascii?Q?oE3nCpmPz+0Huh8iq5Zz+xEObmb7yu8FBBi5R5seTxeMAryNkT0SerEV/Iqn?=
 =?us-ascii?Q?Lw328+9SoB/EATxPsKW/mu9yXFzUrII9W8QI64u6azR3Ocdr9fEg4QynLoze?=
 =?us-ascii?Q?8UmnyZkFIyUhZcWsqCQP8f9TVMNuYlARyXLkXcDOkbjDBUw9iNyed0G85dLX?=
 =?us-ascii?Q?UnkyjV6Byv/ZN2+rZ3jNv58rlT3AmKtBc7HISwORFBvEld5sq2T2sCX7RHY8?=
 =?us-ascii?Q?p5ZpIcjHhx6KLF7M+q5evIh0zWajsGAHU33EqCc5oxLTP090h8ZCoNfSdQev?=
 =?us-ascii?Q?Ua0fTpVFZuRs0uJuyENeUUxmErKvZJPhggA+gZZwbWOm3YfZz6g4MvAvB5LH?=
 =?us-ascii?Q?cwRk5fanFqpD3RQrDlvQoOJeU0ajRm0tD+Sy5IvWDcKqi97VCtfq1kXghde2?=
 =?us-ascii?Q?gw=3D=3D?=
X-OriginatorOrg: t2data.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f21948f-6064-48c8-4c31-08dc1e43c80e
X-MS-Exchange-CrossTenant-AuthSource: DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2024 07:52:44.9614
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 27928da5-aacd-4ba1-9566-c748a6863e6c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CiN6dpXxTsTeqr4dud0S1zKhBTGwSnz3MkfKgguJP6xEfIMiyMgONfMxOmgSaWIfjOHmQwugC29jVfoFrynGlYKF0jEUpwfbS1pj4P/DBdE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1P251MB0795
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_235300_482561_4A7C16B1 
X-CRM114-Status: UNSURE (   6.49  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] barebox_imd: Add IMD sections to mpc-85xx.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Seems PowerPC in general is missing the IMD sections.
Placement might be suboptimal, please correct if so.

Signed-off-by: Christian Melki <christian.melki@t2data.com>
---
 arch/powerpc/mach-mpc85xx/barebox.lds.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/powerpc/mach-mpc85xx/barebox.lds.S b/arch/powerpc/mach-mpc85xx/barebox.lds.S
index 764854a860..6e348d4db3 100644
--- a/arch/powerpc/mach-mpc85xx/barebox.lds.S
+++ b/arch/powerpc/mach-mpc85xx/barebox.lds.S
@@ -68,6 +68,8 @@ SECTIONS
     PROVIDE (etext = .);
     _sdata = .;
 
+   .barebox_imd : { BAREBOX_IMD }
+
    .rodata    :
    {
     *(SORT_BY_ALIGNMENT(SORT_BY_NAME(.rodata*)))
-- 
2.34.1



