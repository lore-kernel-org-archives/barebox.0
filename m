Delivery-date: Fri, 25 Feb 2022 15:50:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNbv8-00A1VM-Nr
	for lore@lore.pengutronix.de; Fri, 25 Feb 2022 15:50:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNbv4-0002qX-Iv
	for lore@pengutronix.de; Fri, 25 Feb 2022 15:50:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=izGR5cuDvtfQHSopDrFSQ15yKrsUUSmDLaoxGS27hpE=; b=qPA78FK1s5VCHv
	dkEV3QATrOS9kBmn0HK+PsvsT+32kwM6oq57G+08uRi7aF0nrtqeTEA52wnobolX3O8cD8P9R7I9M
	zTv3kLsV70jX9Z0XLYDsCzKK7TEfaqi6L79TFw7BsrABgeFBsuw8q8OgAzvYVyRXkEg+fwSQwoTzn
	eKAWiONPNFg7Xx1pus+v9LV0qYyIusNfh0vkr3pPOp9UmyK9Z33aJJlFRkSBGSy8FGDd4NDty9owg
	wem5L9DaZWHtIgDwexXuFq6tBwwBNDGWxCx5lq8vjB2Hkv58BEzEbOF/kaCaVYAkauo+7qzpqRI87
	ftHXE4axOPT/ov/3F+QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNbtX-005RnS-4C; Fri, 25 Feb 2022 14:48:31 +0000
Received: from mail-db5eur03on0617.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::617]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNbtH-005Rep-2K
 for barebox@lists.infradead.org; Fri, 25 Feb 2022 14:48:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kSz25/7xLochaCyTI6aPLABcWtNYrFiW6vGWP+pub7XuRfPXuSh5ybsYQvDTl91zfXVJolXIiYe6voz/gjiuZTTrTgtYrgQNJqG7MRnaea6AVp9q/aptH30lD1HjmkIb3y1Qmrk07sCL4TI6PVY5pdmsWUTtvZwcZSmKtD48EJtzj2fVfjrt089CPbeb4aioeTX8OCVCi/xWbqEDQA/jSfU7wztBVGhKpRFtS8xMA9blKMj921EyCs6H/OVS+O4f9j+F6mfVl7380uoyXet8ja/g3aeYLXzgyLv8OoW1ExJNASMCafSMJtf7BujWTzr5klopZdYiCQZrkgmj1bEY3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9/lCkUAlvSEcRMLWb5C42OgOK23Y9+11gh4xojLdgdc=;
 b=Ts2FCj4h6kO+tAR1MQPsTfvcFIGdd+qPEhqQrUrUPv58hth7UnuP4T8xo8ZKM5WiFnfBmwxAeUKT/peabaf2LBIJUuopO6oHUqTL7AmpJuT7PB9TLtNuT7I8+NL42FhtgeHzXK/IkH5SfXcfQdM1TmCq81rzlFcS6MObWHfzDpWCdAZIr39LgP8N1qfUO9Nn/Q4T/AxvB3tEiPobC2InC5rHqz5I3pgEYLxKZgM69KjUxII3HvoBiEGmGbKsKDAeXwtkIkXC0FX1hl+LIi3K8FFhEJtR9HOxvbVjwx20MUeVjTTu38L4OadKU67AY2WhocceWW8cABJsG0daGykOQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9/lCkUAlvSEcRMLWb5C42OgOK23Y9+11gh4xojLdgdc=;
 b=PqZWZOkWh4NQ3fzm+8vzoSbwkQRKHr3/TP67B4ADJlDOTCWOEvO49jaeDk1F0q40K3aaGi8oqraxSn+TGPYiQPCKDGAoOiOUUF4icG7iYWjkCZDqUiQc+kus2XYO+ie9aFvmiSc3rDL7SIkqsAiVT31rP1vg86bwhOicLq3J1hU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 AS8P192MB1397.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:3c4::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.24; Fri, 25 Feb 2022 14:48:00 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36%3]) with mapi id 15.20.5017.025; Fri, 25 Feb 2022
 14:48:00 +0000
From: Joacim Zetterling <joacim.zetterling@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Date: Fri, 25 Feb 2022 15:47:50 +0100
Message-Id: <20220225144751.4160843-4-joacim.zetterling@westermo.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220225144751.4160843-1-joacim.zetterling@westermo.com>
References: <20220225144751.4160843-1-joacim.zetterling@westermo.com>
Organization: Westermo Network Technologies AB
X-ClientProxiedBy: GV3P280CA0055.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:9::27) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 900ddc48-b7cd-4da0-4cbd-08d9f86dd180
X-MS-TrafficTypeDiagnostic: AS8P192MB1397:EE_
X-Microsoft-Antispam-PRVS: <AS8P192MB1397ED36333140E5630B8AEF9C3E9@AS8P192MB1397.EURP192.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1TvqNEabBQqyORFRarGhFnlOAQnbzjQxsnOqHMGl9vtHtBYdsb8MdjRsHeTxtb+lJdT/nMQ7RwfU/HYjk4vo11gzK06UxHudAZ+dcl5r7l55NjSYWISSaZO6e/so4IcxkeeL5gNZP8Fnj4T4VZw6WfWbABvxC4z913nP6hEZ6eZnPE+a6U1jr4JaN3TzdLmJ/0lwAff2ZWN5NDREoXqybuhB6xDO1H08MBWbOkFqvsPNlo+l39HqlQNgx6klWTGBUF420uhiHIZ09FrEqQ9t2Y7wmuZrDvNx9KPESU0V2D1HaeFMkDncuEurbXwaQJjnFP/5nzZEMq1FwNSwVei3cHzZRgso8uMZQDFrl2+i2SXZxAvycDtHSiUtZOBSFbTOOdV81k7EfgAffDtIwxIqQJunRnd4A0G6qLY55tdRl1DKamh32e5SfgkHUbkZ7+jcN+hXNXQVAWR2mJdNBORRRzp4HAEznFccvQwhUWhFMrQIPl5IFXqn3teyOTqrTZwCtsb+QgGpsK3AE1c8AN/N1xKd7IpAwfbMyNIRMMu2bD+mw63GTe7urfiQKv2gsqBarTxCjJnWq9p1+bdZaBcYFa+NYdflvRtKkTg0HgIn+qv8Lj0GOIenoojmx627xKqS/GKb26FFV/+wDuji8gzej0Y6GLWVdmezyMhqMLhyz6x1QIzHPMbTWBc1Fs/5lekzE18ATskYTTdz+ETe/ZSSW44pUyqINrmmWmEdQ9LRBBNhUN/xcbJ/3ZL2RCoJTXSK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(316002)(36756003)(66556008)(66476007)(66946007)(8936002)(5660300002)(2906002)(2616005)(4326008)(86362001)(8676002)(6916009)(52116002)(36916002)(38350700002)(6512007)(38100700002)(83380400001)(508600001)(6506007)(186003)(1076003)(6486002)(44832011)(6666004)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?h4jKHw9bDM/Qiw7t57c4NeB5dZ/bYgXoGhZElY4GI2JSiKCMmx+CL4h04b9M?=
 =?us-ascii?Q?YjMejAMj7lX987P9extOA879urWtWzOH9Hgp0RMSPk87S+jcPHA1igCwqYH3?=
 =?us-ascii?Q?yrV6AjNB4JijAwjflPfptefK0GFhT9Vb/ZPwInkxt+C6/LrikUQh1bbAxoEW?=
 =?us-ascii?Q?cf+UtdsVD6qnUxSQ/XbX4RLuraD4thnkkIGESIxhVTfvlZgL9mqkXiF3ZGZJ?=
 =?us-ascii?Q?PoFb6kvNAxsHp7wkR/PLdD3WNDg6+0nJ17a92fpClELWbrBCj+K0VTatnnH0?=
 =?us-ascii?Q?MkEAY763XK7r8VjDpzVRVSvwo7EfHlwcQRhaqyp+qVzh8TtDuUCmKENlgSgv?=
 =?us-ascii?Q?sVkMFuCs8p6XAAk1z6JOoPDMgNUXXAf+WqBSOMkzB1+zESj2DLzLCrlkaDYo?=
 =?us-ascii?Q?MptCAycllltu/t6XpRrT1qDonXkzY4IQ7kU4Ixg+zvFIJN9CrFmZeYxUO6MN?=
 =?us-ascii?Q?1pIytAw5CCR9rZqAtlvE6UdaApFIeo3Jm5fQtq50r98V5R218BM2DFYqUmFN?=
 =?us-ascii?Q?OdNT3ibSbXO2pO7LHjLoaPv9SNShzm5Q5WUIIRSfV9aWHbFjXCNbokv4KQkp?=
 =?us-ascii?Q?dzrHJVWlM6Py3TIzVcHuShKsUqhRZc4U6XA3iZjDWC/hPjTyr+8N4w+RnLCJ?=
 =?us-ascii?Q?pIEArEljmrVuiYkjoUSqoux62Sfw/m0fYCqPwrqC8jD2qgykAobgvm4xVSDf?=
 =?us-ascii?Q?eAAeFgFyTeqfDEkici0AMYWe8k/mYrQ0/ZcAvOkOgLdR+M/ar0lu2gK02Nqt?=
 =?us-ascii?Q?leqwqNRbRJTp+g7ojUsKPkDW27QRM1wv2f4sOEELzkAZ6RC4dyaq/70qPH1Y?=
 =?us-ascii?Q?1hMBFL13eWeRe4PhwISWK7YUmpMPAoRZjl9cOjPZzHDXHNIm5QHvmfWalUCZ?=
 =?us-ascii?Q?gNZhNxAMU1uN+hO6Je6crzoxQIcYNvWXQUK3A6rTlL/S6HcD+QQqAtdIWk70?=
 =?us-ascii?Q?bAELgagWfaXslPM8Ep449+/hs7x9esoWbSwWYCP4Ym5CaJonmDgZrHtWc5W8?=
 =?us-ascii?Q?u+hmbj1VdvLyhR8kQETULR8gMLXKXuHc7E/xswSvRimK1pzACTYlblPycen9?=
 =?us-ascii?Q?efdKDa9V2g/pTyt2cOmf0fFTqVj4B/pKMVB9ulXQUOf5otwmWQ6DlC0ZF6qT?=
 =?us-ascii?Q?PMOcRmIoz6pwi0+McU+05jFO7azMsTftIRCfFVRm46PWmqf7GZ+7+ylfx6Ig?=
 =?us-ascii?Q?EPRz28YCcj7kEXqgq0ptbKSYC4RKP2s+GZDcNwvOBBWgj1twk2e/BZQYFdFN?=
 =?us-ascii?Q?iCEJN3/0HSPmDdSlL477vq6+g9VxiJJC12wITwOQQmLekuhIyJz2lHzkEfmU?=
 =?us-ascii?Q?M8DYc53ld6hw5pli8vgXT6Wj4m/kr5B/OoHSFoeeXdSHV+RbAmeuRxWVfYSa?=
 =?us-ascii?Q?+JXe3cTyNubDgfcfw0DI/j9w9XbAVVz/RKJNV4uDnrTDLO7ROc7o8b2nFrMH?=
 =?us-ascii?Q?Z7IoC5WQ5jCVZCKzcl5PTKCOHv+BFEnhGkARYWcJXcjtYkuDItxGj6fPCZTy?=
 =?us-ascii?Q?rC6Eq4/RCRYBKHaEliUQvFteVBxb28/RUtZ5lMVnHKRsJQZIv0OF5r7cAoaB?=
 =?us-ascii?Q?+LDRgCuSBkjDE6k5ZnCEQ8eZgdAYBmEWWaQ+FMBHQG7XZPRbN7aCHPyElTHv?=
 =?us-ascii?Q?d6Wip5EWrn2ztqpJUs5gn0Q=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 900ddc48-b7cd-4da0-4cbd-08d9f86dd180
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2022 14:48:00.1637 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X+wfiw/KxE4jQ/BQtXTh7Vpkm+xdsah2DWU+42qcIc9R9PHVDxggwSfDuUTSJdH4bHOaPKdIarJjBobDFT5V7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P192MB1397
X-MS-Exchange-CrossPremises-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 06
X-MS-Exchange-CrossPremises-Mapi-Admin-Submission: 
X-MS-Exchange-CrossPremises-MessageSource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-OriginalClientIPAddress: 90.229.138.185
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-Antispam-ScanContext: DIR:Originating; SFV:NSPM;
 SKIP:0; 
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-Processed-By-Journaling: Journal Agent
X-OrganizationHeadersPreserved: AS8P192MB1397.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_064815_156120_50D7C592 
X-CRM114-Status: GOOD (  14.77  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] ARM: imx: Correct mem size calculation for 4/8/16/32 bit
 bus width
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The imx8mn has a 16-bit SDRAM bus width access but the calculation
of the memory size treat it as a 32-bit width bus which makes the
memory calculation to be wrong (meminfo wrong and memtest fails).

There is a difference between the imx7 and the imx8 familys.
The imx8 family has a device config field in the master register of
the DDRC controller which the imx7 family doesn't have (the bus width
is 32-bit as default).

The device config field together with the DQ configuration tells us
the actual bus width of the device for a correct mem size calculaton.

>From the imx8mn reference manual:
+----------------------------------------------------+
|    Field      |     Function                       |
|----------------------------------------------------|
|    31-30      | Indicates the configuration of the |
|               | device used in the system.         |
| device_config |     00b - x4 device                |
|               |     01b - x8 device                |
|               |     10b - x16 device               |
|               |     11b - x32 device               |
+----------------------------------------------------+
	...
	...

The imx8 supports a bus width of 4 bits or x4 (device_config b00).
This is a problem for the calculation of the mem size when it only
handle the bus width in bytes. Therefore we must treat the mem size
calculation for the half bus width (width = 0) in a special way.
Do the calculation with one byte width and then divide the mem size
by 2 later on.

Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
---
 arch/arm/mach-imx/esdctl.c | 30 ++++++++++++++++++++++--------
 1 file changed, 22 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 0e11033b81ae..29333340318b 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -320,6 +320,7 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 #define DDRC_MSTR_LPDDR4			BIT(5)
 #define DDRC_MSTR_DATA_BUS_WIDTH		GENMASK(13, 12)
 #define DDRC_MSTR_ACTIVE_RANKS			GENMASK(27, 24)
+#define DDRC_MSTR_DEVICE_CONFIG		GENMASK(31, 30)
 
 #define DDRC_ADDRMAP0_CS_BIT1			GENMASK(12,  8)
 
@@ -364,7 +365,7 @@ static resource_size_t
 imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
 		    u8 col_max, const u8 col_b[], unsigned int col_b_num,
 		    u8 row_max, const u8 row_b[], unsigned int row_b_num,
-		    bool reduced_adress_space)
+		    bool reduced_adress_space, bool is_imx8)
 {
 	const u32 mstr = readl(ddrc + DDRC_MSTR);
 	unsigned int banks, ranks, columns, rows, active_ranks, width;
@@ -387,15 +388,20 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
 		BUG();
 	}
 
+	/* Bus width in bytes, 0 means half byte or 4-bit mode */
+	if (is_imx8)
+		width = (1 << FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr)) >> 1;
+	else
+		width = 4;
+
 	switch (FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr)) {
 	case 0b00:	/* Full DQ bus  */
-		width = 4;
 		break;
-	case 0b01:      /* Half DQ bus  */
-		width = 2;
+	case 0b01:	/* Half DQ bus  */
+		width >>= 1;
 		break;
 	case 0b10:	/* Quarter DQ bus  */
-		width = 1;
+		width >>= 2;
 		break;
 	default:
 		BUG();
@@ -422,7 +428,15 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
 	columns = imx_ddrc_count_bits(col_max, col_b, col_b_num);
 	rows    = imx_ddrc_count_bits(row_max, row_b, row_b_num);
 
-	size = memory_sdram_size(columns, rows, 1 << banks, width) << ranks;
+	/*
+	 * Special case when bus width is 0 or x4 mode,
+	 * calculate the mem size and then divide the size by 2.
+	 */
+	if (width)
+		size = memory_sdram_size(columns, rows, 1 << banks, width);
+	else
+		size = memory_sdram_size(columns, rows, 1 << banks, 1) >> 1;
+	size <<= ranks;
 
 	return reduced_adress_space ? size * 3 / 4 : size;
 }
@@ -470,7 +484,7 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
 	return imx_ddrc_sdram_size(ddrc, addrmap,
 				   12, ARRAY_AND_SIZE(col_b),
 				   16, ARRAY_AND_SIZE(row_b),
-				   reduced_adress_space);
+				   reduced_adress_space, true);
 }
 
 static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
@@ -512,7 +526,7 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
 	return imx_ddrc_sdram_size(ddrc, addrmap,
 				   11, ARRAY_AND_SIZE(col_b),
 				   15, ARRAY_AND_SIZE(row_b),
-				   reduced_adress_space);
+				   reduced_adress_space, false);
 }
 
 static int imx7d_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

