Delivery-date: Tue, 04 Jul 2023 19:57:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGkHV-00F8Wr-7e
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 19:57:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGkHS-0007ip-Fa
	for lore@pengutronix.de; Tue, 04 Jul 2023 19:57:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wb8yC3BqqSSz6PPzFauiQcftVj8pjWpCjs5+UFYbQxE=; b=K080/0/GGe5xXvTUpq7zbJBMyt
	Xg/m3wnJ9WSq0QqwpL9Lf70dE8MmFKY2fCJkko8tUDsNX8HR2cbq5fWmtdF7wCBUjb831YHDS2xj4
	hkm8Iigj+5Ov+RrjegTnRqq5hpGD9jOVosEBAOb0DS1VUDZ4n1rUUVhf/41RNA9D6jUAcsr/ouVm0
	N7Wk2Lf70lNVXicCHOs9euq9Wabnox9Ozj26AzbCCJkIkSR3skC/YhH9fT4Lpdb4ZuTzIU86ikf+c
	lZGx3tj5C0Ca/Aq3C99OA1jMls/05Q75vCcBUjLJ1IPhz6xw5wprdHuKNdaEe6tgXSEYkudAgEA4j
	9A2mWMpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGkG2-00DynU-2D;
	Tue, 04 Jul 2023 17:56:10 +0000
Received: from mail-am6eur05on20609.outbound.protection.outlook.com ([2a01:111:f400:7e1b::609] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGkFw-00Dymc-0A
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 17:56:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NRVRbAqFIJmO+yec7VGQu6+Fvjg1nTGZEvQjtLHHsfRS8WtuLt0/XOyJmHBtysLhz9iXv2h5MUngUEf61drx3ygOZ9e+diS6TT7KUxvQwbVO0HoyosbgaoSV8P+OG+WJu0RC5RlFAZ16ZXsPwpjmzLPsj0guPcbQFbJ4SZirsp5g7sy2lnP+DEwpFGZc9Spp6qHcmtM4nSgIqHOTyqqDdQS8x8H3lbI9Wwly38Iw2MZ0AurJGE7gA+RxuWAslBh+f5LNU1jrhwZa65r+p8GaNGJRVrOJq3j73hau9ru6iU1jWmjkuWrDDyp7TJHWoA0DHE4ieB+tVQ5EtjSTXf6Mcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wb8yC3BqqSSz6PPzFauiQcftVj8pjWpCjs5+UFYbQxE=;
 b=aaB/leoeSqFdTBuCgj4empiQv4nfc6RnsGimMGXE7P8fubDq1uJG1BJjs7H1H7a9ny38SSdYjQ4TWyLGICSfJc1fQmWHuM4ysNThUps4VmWObwz9eDmCjYj0hEtQ3Kt+AoxBs0X9fXOn4l1Fhgz4ugKO5YownDWbwMH50PEtZX0tR8ZSwjZc+kE1FKLGJAI41Tu29nzOyM4XKHedvvDvhcAbmye0JOG9JDAJ3mHGCFYr/aM8BRlYwhmJeL1BxtrSwSaQmW7yUZCjTFwyNculY1dBjRN6neETKQb4tIRMLmGv1LHhJWzKMi53lBA6PEa8dPvBEN51NcymkQa7dY4Gew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=t2data.com; dmarc=pass action=none header.from=t2data.com;
 dkim=pass header.d=t2data.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=t2datacom.onmicrosoft.com; s=selector1-t2datacom-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wb8yC3BqqSSz6PPzFauiQcftVj8pjWpCjs5+UFYbQxE=;
 b=Wa+i51PZCk+3l2uUge3nbyrd/nZ05/tmr4a0dLsFHlow2YL1cd9Wtah4jIP+emGKIYEC9GVLY11OQYhxDqW8IeyESxl3yM4LGt0yrU347LrElmf2zMUv8VRZ9lm+FYfGAksHubs9iqHe5AQ2EjkHFtRyS8dFfOPxfyY1P5uXx/s=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=t2data.com;
Received: from DB9P251MB0618.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:334::22)
 by DB9P251MB0617.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:335::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Tue, 4 Jul
 2023 17:55:53 +0000
Received: from DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 ([fe80::e5eb:ef7c:9c9c:45e9]) by DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 ([fe80::e5eb:ef7c:9c9c:45e9%4]) with mapi id 15.20.6544.024; Tue, 4 Jul 2023
 17:55:52 +0000
From: Christian Melki <christian.melki@t2data.com>
To: barebox@lists.infradead.org
Date: Tue,  4 Jul 2023 19:55:35 +0200
Message-Id: <20230704175535.1183448-1-christian.melki@t2data.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVYP280CA0001.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:fa::20) To DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:334::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9P251MB0618:EE_|DB9P251MB0617:EE_
X-MS-Office365-Filtering-Correlation-Id: a129eca7-1ece-4b85-6236-08db7cb7e88e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C7Fjyh0BHIX9VrbnuGPKaoeXnRsG/AynDVsats3AcNZwXbJTAAgyIxX5lp1J98/rVxVhW8BVToJLL+iGx4t/D1lpkWh1ZKsFwd1n1/lO2K4WqI9jAVj5AebSSbV4G1z125N0s2l2NFsE56UonBw8WSs0XjqeFEMQcIgS5iFO3j37zSJWXZWZM+ZyuzKRqq/ePgp3carTy4Acg46LqGO1sIG+UeHcwrLPh7E6zNL+a2xFgMs7vLUnjU3y4MKsxedqxwejrOyJZjuy7MRm96NucPY6eQhoP25cAR2fMIThG0exDuA4SFtv3ryx6odU00s/dN3Gv4QARc9Z7E+N0gjpP/cj8erVN73IQpjJTk/R8T1mR4y28ZU8wxPH+YeEBdliD+Sma8P5G2RMFKePBxDg9C1qcmI8stN6dyStkEhpVFsikzKvKk23EkUF31g+uMWcPHlqm47Bd92Vh2EibQjzgIWw3xLZRigjwX3H6uCwqqGYbx+qz8Sgw2qZLDLElFbWqbNnn0IfG+B7EU+HvRxXBjFS68ZOTAN0q9fbONmty/1itUpNG6U2RmlK+OvuLpbp7KYEs3TrUh63uppWK87aSwtsTFz5mgmbIlDX+jFIN4yucph0G8l507NdnFe2QzSh
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9P251MB0618.EURP251.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(396003)(366004)(346002)(376002)(136003)(39830400003)(451199021)(66899021)(2906002)(41300700001)(8676002)(8936002)(44832011)(36756003)(5660300002)(86362001)(186003)(2616005)(478600001)(26005)(6506007)(6512007)(1076003)(6666004)(6486002)(52116002)(316002)(66556008)(6916009)(66946007)(38100700002)(38350700002)(66476007)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?md7Hgr1yDX4PIb+SvE7NlXBYM1VBgxVml5vMXcyFCsijnb8hhWwTZWtCaW1a?=
 =?us-ascii?Q?bUpBDTFEKNzNMkFK0lZB/B8FXPp2UhQkwxnn40WIPC5rb/W6yGvCLPVP9pm7?=
 =?us-ascii?Q?qJ0koio0VcX285DbOeSEEvpoV/20LxcI+NonzPiGbnfjRhdGGB7I4c1sTj2E?=
 =?us-ascii?Q?uEkMO4xGl+do4htMvU/M2Wlxdw+I2j1qf/XEcRoyd+DkTc+GVR1ZkL8vekXC?=
 =?us-ascii?Q?oCDFS9wDR88WavCBYnQI2NZrTRaRNrKlsVyDzhpKdQTVJ8VqFOCulLu1FMIa?=
 =?us-ascii?Q?9QIdU0YopdQpPuU5n03i7yoesB1nuaqjAwbKqUgnPmnNyCzIc8YUu4bnkWhb?=
 =?us-ascii?Q?bpzM3vjDlBT52rJl6d8yYLcBOidj5yqfAyJp2fyj5lQRMSScWSJFTVqyEGOS?=
 =?us-ascii?Q?OSflan35tHHbFXgHqm3iYeT9v2uopUDOI/6Md+o54zwXSEW404t5H4xw0Gd/?=
 =?us-ascii?Q?auH+tJEFK8i+yLZby3zltq6YzupC5koGYKiqlFCFTiFxrWeh0LSXh9HQAl4h?=
 =?us-ascii?Q?7tMCAwShj+0pCoILABQs9r3oAWA8t0lBhWOrwRSkDYg+LoUlO1GzDcbX4Q/z?=
 =?us-ascii?Q?LXIJtBxkdfWOBrvf0Sd2vk5Da5ohS5nNiqKlwdvj6ufwVFMY6gCbK0YI9ULd?=
 =?us-ascii?Q?T9bRFu+hBBgF1ehjmbxbGcvEZgqgEaJ6WpoiqQgMW1Qg/xan19DKpeNYWWvA?=
 =?us-ascii?Q?2BgxoopwXJ/TO8swomAdpwZgvpgHPvf4Il5+BF1tdcwjlwiCGZ+dS0hegbUf?=
 =?us-ascii?Q?v4SmDW8tKELa3nhK7zRWjgSTwPJDhnRSOadOS8IQR3ncN99q6tiFwbc5qtMm?=
 =?us-ascii?Q?Bc1YL4Tr70qiCjD5v5aBlLTa/SRBCFe61oGJa++bBZ62WbfP/OvUa5LUmYKb?=
 =?us-ascii?Q?cWCT9HyaxINJfPMd00cAImgG5OvBx5aEoQJmKUuY2sknqo4ePSZJIyPwnBGm?=
 =?us-ascii?Q?pRgOqidoE/1/dUAc0NWoyQh3Hc7uUeK5WL9VFiANK6Jd11YdgWxbe8njg0TA?=
 =?us-ascii?Q?3EOXx5BfVckfCdE4E+PFTVGBcW1jCIIoKkz39Lw4k3qs0FcBLWjvzLwSkqyY?=
 =?us-ascii?Q?HCUmfy1KXUEtQ3x5Dg57E5B6iDyl/Hwi68IWD8yplpNhoLD+y0GJE//I7EpB?=
 =?us-ascii?Q?fEsidzipAH/J3cIrWvNqLOBTE3knJG6eYMgH7SBOGcuKuwm4DtQfR+m51FaV?=
 =?us-ascii?Q?OapGfaPtR3mg/u8TzZRFWks9utsufrvTpp29T7x52QIpThMOWOZeLRLphfUX?=
 =?us-ascii?Q?y3jR598hGnhnAPAATeDDt7/yHZr6xDY399nuqeF3GpHKq4uuLcY9HRxhVBSV?=
 =?us-ascii?Q?k7R2K+CeykzHZGoIMviAVAbKWEUWv34MFQo/cG0f3CORerj4BQw1KUiVTWaJ?=
 =?us-ascii?Q?IPJ6YV1riBvy0zS/M8nmHuqruwhiU5+YNWOrY0tTLEpAIHiBGERzxqVIbWZY?=
 =?us-ascii?Q?x9pp40enjHzPjJrdlqqaReT28vnMVLWXMOqiryBncwmDz4NYtShwEFN1ukMG?=
 =?us-ascii?Q?mWj/ZVscXQQ9okaUfDzUj+KW5msjikrkTS/A2w0AWlv+E18Pk+dWQIUqhCEt?=
 =?us-ascii?Q?Qb+w8jeZTR5oPEYuXLbV6TpMmtJ+2IFo96LVC0Q2XQRk+JLHTAZUcj7U82BO?=
 =?us-ascii?Q?4g=3D=3D?=
X-OriginatorOrg: t2data.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a129eca7-1ece-4b85-6236-08db7cb7e88e
X-MS-Exchange-CrossTenant-AuthSource: DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2023 17:55:52.7821
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 27928da5-aacd-4ba1-9566-c748a6863e6c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mn6vd6Y7RCVBwZK/HSfTaDX5DWDUOCeFM1qdr+sL2X78vMeB5Sq/c1GmOod66d11OdnZod6CAlfXUI81S+phcpyBPMiboWXvL/2WGr8gQAo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P251MB0617
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_105604_141591_CFA88C0F 
X-CRM114-Status: GOOD (  10.92  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net.c: Don't forget about the first fragment.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It's possible to request very large messages using
the current code base. F.ex. UDP datagrams with the tftp client.
The tftp servers will happily reply with fragmented IP frames.
All these frame parts need to be dropped as BB currently doesn't
do fragment reassembly.

The current check was for fragment offsets only (0x1fff).
But the first frame has fragment offset 0 and would slip through
this check. That could result in a seemingly OK frame
for the tftp client, but with broken data.

Add check for the MF (More Fragments) flag. Should cover the
first packet too.

Signed-off-by: Christian Melki <christian.melki@t2data.com>
---
 net/net.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/net/net.c b/net/net.c
index 19161d2e82..b842041d59 100644
--- a/net/net.c
+++ b/net/net.c
@@ -678,7 +678,12 @@ static int net_handle_ip(struct eth_device *edev, unsigned char *pkt, int len)
 	if ((ip->hl_v & 0xf0) != 0x40)
 		goto bad;
 
-	if (ip->frag_off & htons(0x1fff)) /* Can't deal w/ fragments */
+	/* Can't deal w/ fragments.
+	 * Ether a fragment offset (13 bits), or
+	 * MF (More Fragments) from frag. flags (3 bits).
+	 * MF - because first fragment has fragment offset 0
+	 */
+	if (ip->frag_off & htons(0x3fff)) 
 		goto bad;
 	if (!net_checksum_ok((unsigned char *)ip, sizeof(struct iphdr)))
 		goto bad;
-- 
2.34.1



