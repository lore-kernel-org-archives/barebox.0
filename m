Delivery-date: Mon, 05 Sep 2022 13:28:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVAHH-007RB1-Ce
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 13:28:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVAHE-0005I2-7B
	for lore@pengutronix.de; Mon, 05 Sep 2022 13:28:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LcXNcoKmEU9zoT9OUEBT4wx+K5inkLjQzfP/E8hdTBU=; b=TpWXfnC0dPvzuBWG0BUPTGKZir
	4VHVRbuTDi7D/Ybir8hOwDQl7nDJn7G11EAatYuJNNVjsChVY7GX+DDnKPcaqpiYouK3lnnCNbpYR
	1YUn0CAzfSFuOb7/rg/NL0c5wDCTfkmPyjWlwLFW9PMsVa2mGhlBYxLR2mGsu2qQ0WwLSLmZO9TOL
	2KtZrhTIOfK998LFeW2lEe1+ZEJ949xA3OugcXmuDAqz5BH32c9zSJtRTHgFnOAprwFhnn8+uwgPI
	kkTztDGi3RNIxPMwlErq6GV8zGdQKIRJLgDtyiD0erokKc6QYnQex7YBrLS8nk2Z75/+z6Mn7SqRn
	N6FEe9qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVAEg-001C4I-Bi; Mon, 05 Sep 2022 11:25:51 +0000
Received: from mail-eopbgr80075.outbound.protection.outlook.com ([40.107.8.75] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV91X-00HNfO-J6
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 10:08:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fRea0VatY91hsqZflV3M3bC7Bk55ZImqneTOz5Sj+coZatFxnnxMhyNJVGXnn4t0p6yDqYowHRgIsWPqFhuJfpk7JORFx7Ca1aL+nScsC0K5zd/kR/ygis9V0OLGBvdSiYCNyUJr7VnXjKHr1AHB33/D2wLwbWMNFbl8ZqzhBAvlzz4dLLmJb1NvNgYf0n9uEubrvohcEYJ2GX8Bv2b0cI7/eeG/r6oiX/8JbMj4jIJBWBzARVtWKlrfCxmcpnSX9+SPlPyjtZLH4dhttgpkn0jGL5EZ04EjA+9OO32picgbWDrqw7Aji0xE5TyiiymwAjGBlewGZxTaHvVMFNcOXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LcXNcoKmEU9zoT9OUEBT4wx+K5inkLjQzfP/E8hdTBU=;
 b=bjaHA6zPU8Gqyydq2Q8U9JHKCdGzlRfRCdVNZIJFntZr7LpYfhKdneWulwAbYVlTLxbQHW726EecmG5QTMl48OHDb4KGkUafcve2HxFWBvVqN1Ky80Laqis1hnrQX/eBBOmPSLC+hVo17MuHiL5lP1JaRwee6lNfTPW8Rscg1vJ2bO+v7m3ZlPGDvj5bsh9XdKmTDVtqsaX0iTnT1ZoBAAn5sbEtDeKXDTvKadn0kTdywQdEe8lxjIaxv1qm2J3yMAViZ4AZPVKhWkvR12S/80TUqW+qbdXhuQLmTNjrfIMS7NhQl5pY0t+3GHH08F4O2GMOZtq93oaoH23m+hjjqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LcXNcoKmEU9zoT9OUEBT4wx+K5inkLjQzfP/E8hdTBU=;
 b=NNnSTftMzjVRwTOUOlW2weMeQNc+ekw2g/3Cex+ne6BkStYB9JIYEdqbnlCmgBo5B6CVSxrKcY8NZF4MpHByvl8WXgD5z5dB12LtJjQ5InJxLB1O55P5s5rmp+h53iISGzACD7bJuwg39UEiZQ4D4sBPmtx809+VZ02bcqoaqS0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AS8PR08MB8063.eurprd08.prod.outlook.com (2603:10a6:20b:54c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.16; Mon, 5 Sep
 2022 10:07:29 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::f1b2:3979:a31a:c30d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::f1b2:3979:a31a:c30d%9]) with mapi id 15.20.5588.011; Mon, 5 Sep 2022
 10:07:29 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon,  5 Sep 2022 12:07:16 +0200
Message-Id: <20220905100717.150557-2-michael.riesch@wolfvision.net>
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
X-MS-Office365-Filtering-Correlation-Id: 2642f240-a270-472d-1d88-08da8f2670d2
X-MS-TrafficTypeDiagnostic: AS8PR08MB8063:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	mNlhrZZfCUA2zfl+AxWWqQoHitvW8iogd81n+Weywp7HUUiC6bWZ63L6/ZPSAfd/xYR7eLwJm9kl8RV5EeBP5sXZgnDVpiBnFMhy2yVfYSsgQ9mOIGBrK1fTUrVuxX1BkLBa4fFKnP9rZMMlTCSfKyvWG05lRtVS9T0qfDKLxWAjhbzyjyVJ0yXeNHbQV0SrWVp7yMS53TeR3yyIwvbMPd+DzSsPcVmnXniT2NQlbT+RHXG5ZGyD6fQoYLd4y4EKKx6A3dJIHhgQjlQ47MAxIBTT90ND1zR+f32ZpTPxmAdIkrse2W9un3pl7MGB/kqwYOtQqEEzCNjHuVho/nTyDCFmZlUc4k0ghSrnSmk1UYdTQWhVrM+Qrm2XgPS0hU5lDjsjoOQ7JALcJZ+sUxv4opAsgeJ76Qg/tg/d5tXNv6o9oORNnQ+1vfGmRPsBeAgSwl2bpoaixpFtl3kQrt9OOWXyt3AKrjX+UWvuIISK8iVb89JxrK2hNxV6dZVb57t9eYBN1+0y5JPwDKteXdtMMNYeiUbM2L/wrncyYpSiZhWc9PRDV6MZ6Y74pYo6Rh+jMFRgDC0AD2qvIocbAAYoi7F+npHL14zPF/i6zcs818UvTWUf9AooSGt3lzbequuq7SwgnoM4OMikCcutr90nVkIwjqeRdmRyiymme1yUmGYaDM/TMs8J0qnPE65ztxeYMtja8oW2q17vzuQR/D6GqQ==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39840400004)(346002)(376002)(136003)(396003)(366004)(1076003)(186003)(6916009)(2616005)(316002)(8936002)(52116002)(36756003)(6506007)(86362001)(38100700002)(41300700001)(66476007)(6512007)(107886003)(2906002)(66946007)(6486002)(83380400001)(478600001)(66556008)(4326008)(8676002)(5660300002)(44832011)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?WbuthwdQSP6TEX8tQZ3OWaJ16rA8+zeyWs/ZBBi1wAMn0+h+JazLUQso+AoZ?=
 =?us-ascii?Q?re0Z/CdUkY/ewJyWHjetWEjJsWSDDB1eKIPOv7vsZ0BYXll8RhlR+0Qawu22?=
 =?us-ascii?Q?mUpAueimiBfr6bp9UVbF9t1zIOBJze/Jw9EynxpmN/IUwaEMipCNflBnD2cu?=
 =?us-ascii?Q?/AQLdk5/lyXv/FPWoJha8dQrDvw99CfO/149IS2bN9sZReQSnPiFoXIys0GU?=
 =?us-ascii?Q?vOH3xAr9eorm+VYi8zj0hF+44d8bwrY8HBJPo7sMjSZHmn3FJtWZPJrFY0j3?=
 =?us-ascii?Q?PIOrJEEIHQ/YpuDK7r5KS+nu0raGJbVOzrcuj37nFiRecrtZIIy8bg9iPBX1?=
 =?us-ascii?Q?DQdYn99QMxBK02Wq+sVhibaiN4uBXFIyqoWzl2q6/h2yMtLspPiGIommNTjl?=
 =?us-ascii?Q?YoLP5qWhWQMfGQ560Us1cvnTuXmlOPzHU0lX/yFN8OkJZMvXticmrFrmhP91?=
 =?us-ascii?Q?Ve8NCtqJcG/0EPXVc81UBjt/VkWBWb6Y4Yog+nW0qzMYTYo2GMJPUm0ebdac?=
 =?us-ascii?Q?QAAFA5b0Q63YpMN8vjPsz245WxN/YpcWxLcXZz3qmJw7M7ylu7dnZLPQALdG?=
 =?us-ascii?Q?/vL7b6UPV3W+2d8SW03ap+nwo9yoeSIG94tXCW/gDHVTo3SnV54CvVWyTD/k?=
 =?us-ascii?Q?XmDX8WSjB06q4gOXoQXVjNVMGa8OYkJA6vndARiUjgfDmXtkrEBZbrcSK2om?=
 =?us-ascii?Q?2dPlosvDKipCkl05LEoeP06uFsYPhNEA6MgyyY9zIDhpGD/xzLUbIg9UPO62?=
 =?us-ascii?Q?TAW1cll1U+WtOF+m+QuDB38XqoMl0LS+hYgRCSfjT5RlF7HL1vG6m7pD9Mq7?=
 =?us-ascii?Q?DFBWx6HPMgIFFx79BdoCjtsAQeJbGD0VNdQkzwx+Pp0Hz7cJeAl3WrRiWou5?=
 =?us-ascii?Q?SPrCeQB71qHKs+y5UiJPo2xLZxpe5VWy7+MLOtXM0a7W+Qr86viZttDtsB2G?=
 =?us-ascii?Q?ZwpAd82tuc5EbTGisHJETqUaE0kmyGCkhj+5QvWVifPT+QBNjEKQq+eNdvCa?=
 =?us-ascii?Q?buI7JvXcHmnqy6NAlKXf+OqOXhR3g7Tq5i0zPdSG6TlwFDgLOg3wEskSeO7k?=
 =?us-ascii?Q?0UrAKgd/g8H/zLDNf4enB3iHm0gKPHLZpgspcjHK8bA5h+jRjncsFf3Mf48R?=
 =?us-ascii?Q?7ENF1jI2Xuf9d41r4E2w+ONyKO2q1YoqzmIHOzphQtbm3/PwASLeuTOH2XPv?=
 =?us-ascii?Q?YR7AKE2Ln4Px56fYbiM2rJX7Zsq/Xn9Sc4PEmkWkJGfsJk/HqX9VlMHUI+A1?=
 =?us-ascii?Q?SZlY5RoxDFS7Dl8mAv8Q6iSNzu/42hv4Oqkv84lW5BCO920yyFJ4k7HPYRHz?=
 =?us-ascii?Q?dcfqtITSXTRcX99A6MRFXJua6PGa+JWzsNW6271akv8Gdqrb7ujpcKC7HmUX?=
 =?us-ascii?Q?4/EfUj85xi5K58gR6SRZZLbnvuxv2H2GyGWNNCNNCV4T6meZreejApIBGKJC?=
 =?us-ascii?Q?/ZGEOtKZMCdW/rJeFBWPMXtAIR0X4taDorkieFNDKqR5Z0LFXd7lPERk8KJD?=
 =?us-ascii?Q?GsbuzbNXa7H5DLuSlYxWYuuPvO8EEtd+Af1L0XqL7pKbYCp7B4o92hBx9BIp?=
 =?us-ascii?Q?sUB+AXA74GaVnBKgX5dxWBh3si8TVxjmPTG8ZsdKgUjZYJRM0ZTAs+ZS99BZ?=
 =?us-ascii?Q?wReJeKmArsVSEdGry0TF5KorXtjJ1LdlxPGm6STf19gy+pHYdaP6cobh6Q1k?=
 =?us-ascii?Q?QFO3cw=3D=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 2642f240-a270-472d-1d88-08da8f2670d2
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2022 10:07:29.1631
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i5Ia2XKaPJ1gryCY9y4nMI4D3cik2Gby3fq0A/q0YfHxudsFLtEy76jOqGSQq9prMrfynHui06WJQPfZ4FuU4GhrIbjCfPWaFy29sW6QxcU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_030812_161244_86B278A3 
X-CRM114-Status: GOOD (  10.96  )
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
Subject: [PATCH 1/2] of: overlay: improve error handling in of_overlay_apply_tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Propagate any error from of_overlay_apply_symbols and let the user
know if the provided overlay is not applicable.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 drivers/of/overlay.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 20a43f5170..20686db511 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -115,8 +115,8 @@ static char *of_overlay_fix_path(struct device_node *root,
 	return basprintf("%s%s", target->full_name, path_tail);
 }
 
-static void of_overlay_apply_symbols(struct device_node *root,
-				     struct device_node *overlay)
+static int of_overlay_apply_symbols(struct device_node *root,
+				    struct device_node *overlay)
 {
 	const char *old_path;
 	char *new_path;
@@ -129,12 +129,12 @@ static void of_overlay_apply_symbols(struct device_node *root,
 
 	if (!overlay_symbols) {
 		pr_debug("overlay doesn't have a __symbols__ node\n");
-		return;
+		return -EINVAL;
 	}
 
 	if (!root_symbols) {
 		pr_info("root doesn't have a __symbols__ node\n");
-		return;
+		return -EINVAL;
 	}
 
 	list_for_each_entry(prop, &overlay_symbols->properties, list) {
@@ -148,6 +148,8 @@ static void of_overlay_apply_symbols(struct device_node *root,
 			 prop->name, new_path);
 		of_property_write_string(root_symbols, prop->name, new_path);
 	}
+
+	return 0;
 }
 
 static int of_overlay_apply_fragment(struct device_node *root,
@@ -190,7 +192,9 @@ int of_overlay_apply_tree(struct device_node *root,
 		goto out_err;
 
 	/* Copy symbols from resolved overlay to base device tree */
-	of_overlay_apply_symbols(root, resolved);
+	err = of_overlay_apply_symbols(root, resolved);
+	if (err)
+		goto out_err;
 
 	/* Copy nodes and properties from resolved overlay to root */
 	for_each_child_of_node(resolved, fragment) {
-- 
2.30.2



