Delivery-date: Mon, 05 Sep 2022 13:28:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVAHQ-007RBq-JC
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 13:28:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVAHN-0005JC-75
	for lore@pengutronix.de; Mon, 05 Sep 2022 13:28:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i083IiYjK6dW1GZRXnqsQOm+9NQWLK80thm4kEXaFXI=; b=PU2M2Kwl8Qm27xspppq6YiO2YL
	Wf2LmY7S7LfWBwJ80oBD/sRi/DCq42a0nWj17osiuszdzGLYXYCHikCLX1v6khZj7eUO8sJHwLgoI
	OoDHG/pPOJfq0cCaT+AGeHMZL0McqDAWnI450YyxBEjJGpH7R/J5ka9hf9qJU6JbNOjbWhcml4VXn
	zkIOc7t+L2591laJKf8B831IzN2d6+i2ZgH6Tg0pQGXPFWGEkQBS7rTzovQUo2fXO+8HONzubJCjF
	9Cd+Bjj4WB0gRjS/g4WOhDmCi3c8vEbV1jXagOslosTl2arDEzQzS4fCYdFDx5LT2I/btt67mhHNI
	3b+Hkcaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVAF9-001CV3-AT; Mon, 05 Sep 2022 11:26:22 +0000
Received: from mail-eopbgr80075.outbound.protection.outlook.com ([40.107.8.75] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV91b-00HNfO-QI
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 10:08:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HYFNbyff7EGkpPWBfiopIhjgut6ScTjW8VOc9ksqP1ia3czM1NmJbJFa4eWqgWGs2fQYKEOn8nIKj59/OACI7S6tcdDolONaq2QEZPWNxcm4PGMDkHlcIthdQlR22yp3IH9z0nb2k+ECYLuU9hIW7/GFRAkmjIKhWyFSlRp8Z1mTY/YVghCHodVpZnR/i28COpwBslE9LDeY5eKXqZdI/CNL0PuxBE7b/E/nfjwemqIUHY6qvzGyqu8fpbuWpereSFmTyA+wMxzYbSml/69cxsjuuPM2s9G5e/F0WyRjiJuW2Bi17/khfLATHN3Mizh3VbqR4rfEKmnnExYm3Epihw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i083IiYjK6dW1GZRXnqsQOm+9NQWLK80thm4kEXaFXI=;
 b=Co1XiULYMdrPPqrSCDxdy/caD/+KJ3oivA5/Xrrt4n8geOQKcY30uAjmIbyQp0ghMbwhOWmOTWuh7wPc34yEQZ2XlAdW+YkZaaBMrIbSfBU94pwQn/jFgGpYupPnmPSGymzeoETCftmS8Ra7eUZCHmOBJ0R11Wsn+qqfsqSGh47pTlPWLiZXu/HIYFQiH27d3ReHdnvFAPy50bZdNOcLBNiTqLnhSZSPa+bEMnKrNeXqFilyKyufc/WJwaBt2A6axfT4NAKI3ewxII7WNmuo9379eIxILIujxJfduzHrSp5U/iqJ9cYP7waBVGt/xzQF1GI/VhGLsPeGMWaRlLY20w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i083IiYjK6dW1GZRXnqsQOm+9NQWLK80thm4kEXaFXI=;
 b=crbd/7ORLX+6bHkMAIKqKeN/H7PSCHqWoKOnXuBGEIParLSVxtjBzfZ0hzUNOK4Xxx0D7VxFQQ36DVsbx4GF8PJM84zQg8Zg4zgFGsrTzAr8h36IRRI8tA2230wVpUDAcnFe+E5/rO8ZRz/QBNp32OcGodVUDnVyd2uZ9I4oi5c=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AS8PR08MB8063.eurprd08.prod.outlook.com (2603:10a6:20b:54c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.16; Mon, 5 Sep
 2022 10:07:33 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::f1b2:3979:a31a:c30d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::f1b2:3979:a31a:c30d%9]) with mapi id 15.20.5588.011; Mon, 5 Sep 2022
 10:07:33 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon,  5 Sep 2022 12:07:17 +0200
Message-Id: <20220905100717.150557-3-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905100717.150557-1-michael.riesch@wolfvision.net>
References: <20220905100717.150557-1-michael.riesch@wolfvision.net>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: ZR0P278CA0176.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::21) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b1c89701-45fc-408e-0065-08da8f267174
X-MS-TrafficTypeDiagnostic: AS8PR08MB8063:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	pVlpbtZUoREcgD3L8/sMeHZZg4aBGaN73PFOm1EoabfYbXs3htqHuAJevp7g3seeH9GKdGuGnICH0sX7+OXURyORb1rS5m3YJI7dt1FTi07/XvEWU6/tpZfqe2MP945V7PkevXAMNpdOcQbxlGta9nK/Dzt3xU06BWiAuV2+wOTYUAePqa0gS4Sp7b7X8nYb8mcszpwXRElFjkBmGMkgqVEabl0gRFFlnnfPLR0nj4Za+BXD8H+DSDQYwNT0ax5HZ23RAB9aBbj28L0KxMKEmnO+QuLpFk2mFSECPuPM0PITH9Eo9RsLo9I8M/V9LMBZeOffuaQGSEfegjcaXyvNpudzz8hDoZb5zANjqak0auj+gwWVJ4tab8lKXBWELjbBG6Vtzjd5qmJqIOwU8CSXzenWiZTlLjy55pfBOZhh3WLGkCpgxJ7ifoh0olCVRo4fRi3SyKfFV2XzXXfnQDF6HTQO5COHCGqQfmHDsEXuLbIE4JaFrPG2r8NHOuf2RIgILBxD8TvFOfv5cbB+CabkEVy5pmh/COpvtv+sJG3yzYdb38KyNJoIIYgaFpcBVCVUHTmOuLYZGJhpM6pzrVDcdtW9McrCKO0FZESPp22hcdIDfeemewh1DsTQOkWBuGRcfg3g6ofEl8GKyjUGecw44qC+bnawIc7kyph++IEoy7exa7xVgQ0X01QaYxzobljsQb7JtIRSnhegmPLi1qzgfQ==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39840400004)(346002)(376002)(136003)(396003)(366004)(1076003)(186003)(6916009)(2616005)(316002)(8936002)(52116002)(36756003)(6506007)(86362001)(38100700002)(41300700001)(66476007)(6512007)(107886003)(2906002)(66946007)(6486002)(83380400001)(478600001)(66556008)(4326008)(8676002)(5660300002)(44832011)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?VG2kgXd/TGkY3AvUocZopQfindbqWWaA70lDMMicC0esds2SzJ0YUgAqi5K9?=
 =?us-ascii?Q?SAC4eeuVecnBgqziPmYSypwFi8p8bOyEgjVqw8MtFhmQaPY8XBbuFMQgP3ji?=
 =?us-ascii?Q?RdgieSSXF2G2ROMtzpe65CWr3lhyVMoPxAFQWiHqJ7GgylUVbEtPcqsESK8j?=
 =?us-ascii?Q?DuZhYa9Kf0dpNMRpqwNyQmDhVF976oHkTJVG99cs/9pMZnK6KtzFfS8Nc0cU?=
 =?us-ascii?Q?mfp8tfuyWOn7DhNih10NwTpdsgL1cXARcUESQQUlHoBrarGWgw+8NRLzOTGC?=
 =?us-ascii?Q?0wAcQfVeD1fv7jFJ5jrp/JGQPmLR0dH3Z1Lzj2J3zOX6oWJhniv3wh8x0EdI?=
 =?us-ascii?Q?trGv2CfaJ3lDO0CkPUzHgn7jsVqx0xjKzeCJ0bT2S/54gLaVpydFEXmOwex5?=
 =?us-ascii?Q?RQEkT3NH4UcsbnX+jkBGO7BY8AFX1VzQpX7SYvOLJhRR23Mb2PV3LKCOvkKk?=
 =?us-ascii?Q?Ot3xZw79ws1jmMAzSTwZ/co9LlRw7wsM4b21s7PjR0Ea0ieyaYmKkGHQnHgb?=
 =?us-ascii?Q?Q4fZqHEPSrDOEUYxsT8CF55Zgheyxwq0lanf/VJneQDTH8dYiq+MApt4Fglv?=
 =?us-ascii?Q?OnXXUgxkE0YT3/PLgapWwSkw86UYM5hyd3go524nKAR7ewkQ8Rm74M5QJYwZ?=
 =?us-ascii?Q?8wLJsV16atObj/ZF6U2SRdtjZT3iCthw8I4KesYk5xU6fPMX44bfZatX9xoD?=
 =?us-ascii?Q?9LswzcUk/RdaC2UaiNwjkrze7Lvv1AWcY9cmf640C8Jqj67acs7cN0aBkncj?=
 =?us-ascii?Q?oP5U0L0jkUnyNsp6hByERFCxr1LHAX+65Eg7cxeKsGCwwOI5q8lmEzdCe01F?=
 =?us-ascii?Q?itpRHCtndGlcXWNLrkbR0ebaHcnAyHyJ07eErkgEk4XC5uh/DEeHZ0OpXIQO?=
 =?us-ascii?Q?qhjP1x2QWXPpaqxXKvAttWjba2vlKvkoWjUMtDk6GRkVHgXJjGJm/qsBuK5V?=
 =?us-ascii?Q?16QX/X7EaaLVIT+uiBnedjB1bHTFLEVmwlU5snIUQiJGIS3q8GHpnbMRMfCU?=
 =?us-ascii?Q?3hnovcFz9EBVA4rQkay/6Iqc+NwZ5T3tuNQRAx8GQaQeXIDzxquzMxdS9Q1E?=
 =?us-ascii?Q?gKD0D4Ccn1VVITeop2cOJ3NjXxNaZlbBhQg4nY1DOmu/5Q9Y9hPXsLCqnYEO?=
 =?us-ascii?Q?iOdbzy614++1UEsoWpHhVEe6MNivyDL/DPteoD5g9Vjt5ZGVH7UnuvOg6fJm?=
 =?us-ascii?Q?hvPHEhN033JlVHviPHUcgEEBoqEn+dc2iCOaDLUlm90tq8GHeNcX8OrXL4tv?=
 =?us-ascii?Q?8JB4oIkyuZb0p/BZJ1Xt7jdkr4IVwEC8IJLFg988e6HVORuclIoqaQ8EDvNR?=
 =?us-ascii?Q?v4P7NrHKI2VycAVMpK40r4xVX0cJda06NUQxdgOp/ytZCMpHXP8MbuztEro+?=
 =?us-ascii?Q?x/8bBccFs6ZkYJ5/bkqBRaCHEoekwbL5dDRf7MV7AWTD4RSh3/HImF2VG5qf?=
 =?us-ascii?Q?zToQgRG4CRBEgM2xr3X6L4st9xhkW0VAM8L5ddorstXd44uLD9p7rMtgLSGT?=
 =?us-ascii?Q?GJUpD8u/RNxb8mnmG/1AS45vSZcnlb7kxx/FQOkRH6Bu9qoRoA220S7t0eAL?=
 =?us-ascii?Q?xF1m9kuynoGFsA807uQVurEr6r+dwYGdBIuZEo5DVnHrsJE5ony/t3rP/QoO?=
 =?us-ascii?Q?r6BTPDpAGI6eTyrFqd0afFyK4VNyoRHwjYWYtftVHJOZvS2eW54oURdLbFgg?=
 =?us-ascii?Q?c+ZrxVS9tQWy0ukLe3CGMBqIMRA=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: b1c89701-45fc-408e-0065-08da8f267174
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2022 10:07:30.2876
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: txuK4QuuD8bpp7zARw7hriNxgr8HNXcyGl0MJJyI9KWQNP8aECqJpZXFKOIVVjkfnsiyw/Gh60Ix1SH4vyk7UFnsifbNTxBZyam/vAUtXYI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_030816_014936_1E570B42 
X-CRM114-Status: UNSURE (   9.94  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] of: overlay: avoid potential null pointer exception
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The function of_overlay_fix_path returns NULL in certain error cases but
of_overlay_apply_symbols (which is the only caller) does not check the
return value. For broken overlays this may result in a null pointer
exception. Fix this by checking the return value and inform the user
what exactly went wrong.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 drivers/of/overlay.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 20686db511..884cdf8928 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -102,8 +102,10 @@ static char *of_overlay_fix_path(struct device_node *root,
 		if (of_get_child_by_name(fragment, "__overlay__"))
 			break;
 	}
-	if (!fragment)
+	if (!fragment) {
+		pr_info("could not find __overlay__ node\n");
 		return NULL;
+	}
 
 	target = find_target(root, fragment);
 	if (!target)
@@ -143,6 +145,8 @@ static int of_overlay_apply_symbols(struct device_node *root,
 
 		old_path = of_property_get_value(prop);
 		new_path = of_overlay_fix_path(root, overlay, old_path);
+		if (!new_path)
+			return -EINVAL;
 
 		pr_debug("add symbol %s with new path %s\n",
 			 prop->name, new_path);
-- 
2.30.2



