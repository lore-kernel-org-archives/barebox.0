Delivery-date: Mon, 26 Sep 2022 12:12:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocl6A-00FE6u-AG
	for lore@lore.pengutronix.de; Mon, 26 Sep 2022 12:12:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocl68-0004Oj-3Y
	for lore@pengutronix.de; Mon, 26 Sep 2022 12:12:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9d0EyRAYnESACrkxsODwwh+vS1WRAuCdtWDHBIhvy1s=; b=hBKak57Wa0j1M/lbjmW+5y3TbJ
	WzqSq5R83tOI1uhImOev89KCEnvHuJzqObfiN+SNblvM2/k9IiYrpafgSN8wc2niHKTxSwvub8Trm
	dU9Wxr5Rl+p/q9zG8ERE2Vn8/591tIUb98gfRAl8bCJB/TsuZ3fKDSSRGlPh73cTqAH7WkX9oGDsX
	ybwy5wU8kkHUIJVf7c/KLfrvJx9CL3wUc7061WssQT66Z9PAtL6CX8richI2dIhJOgn46J4vN4XfG
	KuY8sKPxcrTWG6baKRdFhZF2ChvORfg8lwTx/fQMOnPofro6G+dRFr4qtbeNwz8GpbQoTc5AdS5AW
	Pvs+B1xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocl3L-003xeI-JQ; Mon, 26 Sep 2022 10:09:31 +0000
Received: from mail-dbaeur03on2045.outbound.protection.outlook.com ([40.107.104.45] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocl0Q-003wKI-Fe
	for barebox@lists.infradead.org; Mon, 26 Sep 2022 10:06:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h4//6n9VzZBovsvrl3dXDGNT/7KJzS5HLo42MbYWFnOqcHGMf9AZthHgcL8Cn9dvYpRRSNSGxAYwIfSybysUmNrsMg2JuM616vc167bB6sAJEOt50g8WIQak20fyj1VNqBHwpQzVPAeNhz6Ph6RtBAMhdJpMHMtMpBNZ+4dE//InLPD+kO21BjR4Rb3K4JtGRNtIuBTiKbB8QcnuQscuzdsdbF+I70DEw+kY0qMMPy7d3bhF5dcow21B1PYFhA84+eWBmEUQzhjdF6PfwfZmJ6uefn7JZ4zbSf0K5Bvmo2tjiJ7Nh/Hg1EB18jHckd2O1BkY93OgARI4O2QtUjqDWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9d0EyRAYnESACrkxsODwwh+vS1WRAuCdtWDHBIhvy1s=;
 b=Rc2sHPZ+ezOgiRhMXdSsiyqJ9birTpj2+nh0TOvRTkRUaIz8LC4o7HXjgF2IQosDOcTTVgBXMaq8Atxfcmrvo36w67Fd5VrIMfjpmWkJujnycfAQV9xhvtXUDYVAJJP8kl3v0BdCsQ22NOlLxWF1J1F183LkC85Ul1SJXCy2Gzo/j5pfjPLQTqiihy2KV9pV383U7pHo3ouSCm897pf2pQoW0/yT2p+H93ktFPmRYQ7nj0A020HXJoRSs5/NBsRtVqB6EEd0VOwDZoOfITXBZgtA43Qo8HGR76NeArKCJkWrYPgEg5kS4y60zuZm9zzUQb3lkPpY6NSiPkzT8SWAhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9d0EyRAYnESACrkxsODwwh+vS1WRAuCdtWDHBIhvy1s=;
 b=DKO6uev5vnIVL0ol14IK3UolnM79+kcZkujGG94HJWQmB2aUkG9k6Csv0cppdR7PcSxNfoLJqczB1CLGmmg4m7p41wWJW+UqSZQVtay1K1odQAmgoS1K5fiaPnfGBYIQggGywxIKqYMt06wiSXUhWAHPquc3tbgPFXrLqAkT33Q=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AS8PR08MB7864.eurprd08.prod.outlook.com (2603:10a6:20b:52f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 10:06:23 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%9]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 10:06:23 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 26 Sep 2022 12:06:10 +0200
Message-Id: <20220926100610.1457821-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: ZR2P278CA0010.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:50::14) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AS8PR08MB7864:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d73072f-3e4b-48c3-fd3c-08da9fa6c432
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	ZW0BdY5WSC9JpKPyuDU9eV+phXztCjSSM6B5k19HuFwdCiYZwzngXH5E3xAKAP5X46hJOT1IlhoA9MX+fipGdqyiD1i1j6L5QVQqgAcHvna3YZGOqWwPrqoU3i+ow8QjsdBqXGfQSw9AK9CZzRfbfu0uhFLixcYfTyaT1HVLDxU8rKm4DbOC9uJ+rhMNP5UGO4LKEL2WlIXSK4gf0eqc+geconUDjAq2N77VUN5sN12IFdOfe5epf12RB+dGCB3l5dG2NNjeQ6MT+Z8cT9aPhN8rk1guo4ebPd7DJZ73+FKaiaO6WuJNn+wgPtiu3MkwkS+4vOFj6jWwgw/a+y+O1Rq/OHuRJk5moNlpgVuzfxPhp+oGSZLPPERFcNT2ZGsnfXYaDfA+xeolXqmtjHLsLryMBcagK0Kl07xved41VH36vs0NIWyjuWCbTpN20YHh0x7/GKjXctYQhYHtqrcsUZiPv5lwz5HE0qfYczhz7XDN8lqkJOidAChZdN1AbPylY4bnmTpOnm1skwqeo5PVIQq486fBKJmD0Ptrf5ZeqZ3bUY4rHu0HO+NzpsU4EWJ7O/HkOo2I65Y6s6BN30S79YcXET3yEqvoWaZ3smoDD19m3N3sajmy8cDJF1GztS0LtU9pxDbqvDeq3dsaLDoow/XK2ghCm9PEMmTeyyByv+0cypfKP3rpQDG+0x4sIyDV+Jwo8SQuTOyB4TPXrlIRMA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(39830400003)(346002)(366004)(136003)(376002)(451199015)(44832011)(2906002)(8676002)(4326008)(66556008)(6512007)(8936002)(66946007)(5660300002)(36756003)(38100700002)(86362001)(66476007)(1076003)(6916009)(186003)(52116002)(2616005)(6666004)(41300700001)(478600001)(6486002)(107886003)(6506007)(316002)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?4zrmfFkXWlOAtLdPhdlUnMzScAzH/ZpaDjC9ZKScAc3AQhBuuZB6DUy4VlRY?=
 =?us-ascii?Q?PPTroqJhtMWAgOxiC+Suc5bpvUNvX4+xz0dvEWcPWjTp5LlZpKPROpp+SWho?=
 =?us-ascii?Q?moRaxKEYntPfxNvCjXQ6UnijfceQgkra2WlcthQuMTANoggDw0euNczv2wqx?=
 =?us-ascii?Q?+vjk7+v+Mi2UOuubLpNU+tgO3H8UpLa4p/a+G3EqxdHbmpt7129QusZd+WBK?=
 =?us-ascii?Q?mRGNDRWXUixld4x8tEDfnFOg08FZ5u3OkwwWStvZ1Xc2pfZyqabGCcbJcBNS?=
 =?us-ascii?Q?i4cm5H6BPcqHfVp4LbBQUBNxicT//FZA1zPjQnTALRmqvliGxuq1ohm7SOdJ?=
 =?us-ascii?Q?hsLyvfy+k31Z56ZOD5aXsGQ4iDTr3L/qjqfWKNkNb+sFH8R9JCQDVUZivg9E?=
 =?us-ascii?Q?prXroKqgA3I9u1m7C+ZmxMnDI/FewIFaPsy9tIcAC714tdlzCqy0E9gJRWyt?=
 =?us-ascii?Q?mEb/HS2DWbmf8IFVoGCaInV8foRg9lDaMfwKdEIifMZsXfBv+eW9v/61T+lC?=
 =?us-ascii?Q?OU5xjnSmQFXYNwsWGPudxFP5kYhO8ZfZ3RmWZOn41jQ5/ZcMkJvUzvM2cuSt?=
 =?us-ascii?Q?UWuXGOVX7k34aigyaeXOb+OF0MfWdhhMugCtu2J+0EQv61bnbphXDO/p74Jx?=
 =?us-ascii?Q?URfGSltMS7AXwwrcWcEXxOgyGUMFLgpm0vC6f58X9zh47D4aGNti0GTJ1+3B?=
 =?us-ascii?Q?8QX6j0gbnhChIzNubSvvkPlE+Uk1RZLfy4nMj3lmYWceAWmawK1wKZMF8C23?=
 =?us-ascii?Q?KAKTNiHED1R87pR7MQPozwe8QgCePz4Oi0aLwLE1KIHYtBWZOGf6U5F37gmi?=
 =?us-ascii?Q?W8Wh0i9Gx4ctGVcqoaQUkGmYO5u3dNDErXtCQfDwE0yhKbSODMwWV+XlCE2+?=
 =?us-ascii?Q?cuKaY+RbJ8wh5mqIEWVrGhvKB6VXIPX/zwQ4l5BMSVwdPqtLKRX6zdIxjV6E?=
 =?us-ascii?Q?DpKuVHrFoIjMYyBXMM8fOdhncaUibLacwu3mceShb/Q9wgMtcxe36bM2wHWY?=
 =?us-ascii?Q?6kvtKXSZ4l01IphmIiVQx9sSrl0FIu4POyJaDCBSNthfaytiBZ5holggBw+o?=
 =?us-ascii?Q?001U3YS0covZm9o/SA/siqTiKx3+9PXidGO7TlwaguguMxscNkHRO3GlJS75?=
 =?us-ascii?Q?7VPntDNarNfvviUGwh9nrxqNPViguCWoDnf4xvwoZVNct/55AC7w6Zi2LiTf?=
 =?us-ascii?Q?Mz0yH/PTryHHgue/g9W/tety5DXUWqJz81hwZSrub8SwyRmysJpXDWRggPWp?=
 =?us-ascii?Q?zPImNd29Z5qQZ4Dh0vXN9J7mTpj/YW8UKLkoAHlAGNJMtsTr9Ien02k779+U?=
 =?us-ascii?Q?Xz1GoV+HYqFRhkwbxFNjqStMy+xdLFEnsEnSJRVLbMWVU5mtPxwUUU9PSAAS?=
 =?us-ascii?Q?8FJKrO+tGccNqJ+I+GSw0hUuKPgGulNq0NajyZLVWzzTlEutuQruzKCRmwlW?=
 =?us-ascii?Q?P/Q/y4vWC7+2q0yvwIWIY9hZz4RjaK/KlzE4tLR6M708ft0VSqUv4XfOJJM9?=
 =?us-ascii?Q?D/5IEOq7mRX8d9nT4TrO9mDfsYrYaKvrS6I4LoTXaEI25sRqQvalZYAnM/6q?=
 =?us-ascii?Q?8hFoZC8kqJAzcJJqLMj0erNCNk8HnncdcmcJ2ca0csWXarSn7lXVK22qQ0Rw?=
 =?us-ascii?Q?RwGyLVPa0EqF7s8yD/z+pzetm1HOnwcv9wVwVkTO7FX9A97/taKoSmklIbK6?=
 =?us-ascii?Q?JhK4Fw=3D=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d73072f-3e4b-48c3-fd3c-08da9fa6c432
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 10:06:23.3128
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mi4wc3aMHj/yootzyCSR0AEnAMZKsT116cJRcYdoyWnQYpjw6+6STz37sTmK4kM6aH9IOurBlNg1oU/cd/zb5ATfvf7fDPlLRz4irqGWKrY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB7864
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_030630_816042_72100942 
X-CRM114-Status: GOOD (  11.18  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: overlay: fix overly strict check for symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The recent patch "of: overlay: improve error handling in
of_overlay_apply_tree" introduced overly strict checks for symbols
in the root device tree and the overlay. However, it is legal for
both to have no symbols. Fix the checks in order to implement the
status quo.

Fixes: bc475fd88810 ("of: overlay: improve error handling in of_overlay_apply_tree")
Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 drivers/of/overlay.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 0fc440fdcf..9d112b67f1 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -131,12 +131,12 @@ static int of_overlay_apply_symbols(struct device_node *root,
 
 	if (!overlay_symbols) {
 		pr_debug("overlay doesn't have a __symbols__ node\n");
-		return -EINVAL;
+		return 0;
 	}
 
 	if (!root_symbols) {
 		pr_info("root doesn't have a __symbols__ node\n");
-		return -EINVAL;
+		return 0;
 	}
 
 	list_for_each_entry(prop, &overlay_symbols->properties, list) {
-- 
2.30.2



