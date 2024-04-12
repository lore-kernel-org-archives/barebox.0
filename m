Delivery-date: Fri, 12 Apr 2024 15:33:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvH1k-0095Ku-25
	for lore@lore.pengutronix.de;
	Fri, 12 Apr 2024 15:33:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvH1j-0001NE-Kj
	for lore@pengutronix.de; Fri, 12 Apr 2024 15:33:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rV9tQPOAfthp1aDD8OutiN0tDNd/jdtpiWbGfya96Rw=; b=g5D0cJtjXeC4jBkAHYIHWviBMK
	9t5YXu9BmI6PFx5FIUjnRG3PCM1pJ0VPlNRBHtvP3gdjBOl8JEDAbm1rqpkjzhBfX2hCFmtOUFltf
	vwmbihwrkeD3gZ/RoV+ElPAxrAdZbE02buDkS+rvHxK+HZ5O2QE6SOZ3qI9Ir+0gw8qma5Est+10q
	Q+WiJaoQAOWRzkMf00ysxJwo4ow+F5fmxL86eYZp3jit9ZUWrSgw/Sk0QBj4+Lwk4cd2gpVTY0+qo
	qDexZBW1DplR1RK3gBdqMyEmD3N1Q2H8giwslu4VQli9uYx/1jNl7+JQ3w0LXiuDA+LyqwlXBV1Ci
	njmRqEkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvH1C-0000000HLRc-31dz;
	Fri, 12 Apr 2024 13:32:38 +0000
Received: from mail-he1eur04on20701.outbound.protection.outlook.com ([2a01:111:f403:260f::701] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvH16-0000000HLL1-1aBZ
	for barebox@lists.infradead.org;
	Fri, 12 Apr 2024 13:32:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ejF+ZEAQxvcyEIZVnNw0CKC0d6m/fkM7mw+Ly4qUnhNnWMACtbpUY189W/GOqokMM1pR1OWrlAvTTZydXBr5retOzYUPymz16sjasltH3V8PABnVFOmllzrb6+jvBzsGOkz+hjauB3l8KNhRH87e1xZDUZ35im32gB/1Oa3kk8pYzF5Qm+Au4lB2L4MsM+kcczLLjIl1silGytBlMPZCyTp14WXokSH8x6/7S83ghjQlazMuoFefdEfdZwOOqfSNPEGxy3PsrPfr6TDQ5TqexHtG+T8DFrxssilHqQRkAgBR4lYUgCp76+ode6tvGGEJiZEsboQ5YkLus1Mbuckoag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rV9tQPOAfthp1aDD8OutiN0tDNd/jdtpiWbGfya96Rw=;
 b=oEgBmcUpaDIov6c/BlHJ6oc6q/AXcUFK7NarDm0jnlGxazomd9Co4RhHkHI4lW0n6bdITY2gkAly5Q3NPjoLVlgPrG89Lak9tQkXxd0j/PiMvAGV1ttg2MjUAwoESpPsswvdkAhbSpLdII4bvBKqyYUx+cU+Jm6LVKuOC+G93k2O2Gq3Blc65jhOxGnhc3uPaR3tpq1IkRO3sfCc1wUsEdr0b+A4SescsW3abcw1da4F+Q2fkjg0hXTpIlh97rfp2io1Gi2J6d7at5VpyNo1Wewn5O1kD5ISuOmnX9efA5easzPax16aiQK0IxcYM/K++EVvnJJ7eK86/z9AywS0SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rV9tQPOAfthp1aDD8OutiN0tDNd/jdtpiWbGfya96Rw=;
 b=qy876FmUtS7Uh9mQilLhXN9dUSr9xPJrZorIdEpgX5uxgTNP5MF2kqppj1wjnUxVqn+H7bJFHDs632PuRrZrMCvLV+GeVW0NBIDr+kM8h2O/P1GxDEeTXu0/uxl17cq8ycjExkyBKYPGyyQdLj2lSoBk8bzgCnpZ/PyWZTaUaJY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB5PR08MB9998.eurprd08.prod.outlook.com (2603:10a6:10:489::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Fri, 12 Apr
 2024 13:32:21 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9%5]) with mapi id 15.20.7409.042; Fri, 12 Apr 2024
 13:32:21 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Fri, 12 Apr 2024 15:32:14 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240412-feature-wolfvision-pf5-v2-3-7e277cc8831b@wolfvision.net>
References: <20240412-feature-wolfvision-pf5-v2-0-7e277cc8831b@wolfvision.net>
In-Reply-To: <20240412-feature-wolfvision-pf5-v2-0-7e277cc8831b@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712928740; l=5825;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=u2Dl0eNZpdzH7wkkMKQjsHEZvVug2XOeH/+k43WQDAE=;
 b=Z46+rob4PWfCj/qDHLWjQ7qg3sYPO6Z80Pl206y0JExE3prqjjEIY2YRmt4eVMWp/T5UpcOo5
 aoMJFmMG2OfBV4oPbfNzBeNqgRvP8EV9eg9Drq1ochjJfMsnPJztA+J
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR0102CA0008.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::21) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB5PR08MB9998:EE_
X-MS-Office365-Filtering-Correlation-Id: 9509335a-6e2f-418c-05c2-08dc5af4fb66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MVQEVO6FFLSt/8GSkYNXUSElEykFD2ePjQ8l5ltwD9J3331c/fVnrTnx18VNPsB/E23UyXVGd7EB4TWb8/pzKJpeUrAXHL8nI+AadrQ8Xyj5NfVz1SSwYv1KYp77hkIDRHIYrm9F+hr2DZ8r5/iDu7fbDHp8wjehe78vEgJrxeSAoJRCipxWvaNrZ56K2FxjOQIddE6PufF9AjtavXF0U4VlsA1WAKHGXIA1hkSw/qZbCG3uXJSOYio7e3yKk9s8QOF6V7MwpL5Ms5YNn/eG9k5qSr+Pv2Dv1yDmyxpm75QpQfCWeAboDNryvzUSnp/dPHRZiqWTS6dcsHgvcp/Dwa9QI0dHmbHPtvoaMAfWw5HP8lMEmSSmJEynhiJnkj8SiiKwRBC3j7x626BNnVo6FXAuEJfuIBDeJ8pM2abgceSc9FweugtDMRbAi3ZG4oLXLCe4Sh9NQpU44rU1Q5vl0EZrKdoBWij4V4U1qG4oKg/4ETcg26e8z3HTx9a56stCz0dpmg0zA4kw1oCjXGaveO6ryD31enSlQA8KhsNqEWYQnzLmgUNaDYHs2EdqstTg73Cb2R3ssMwD9yZZZxA0p2J17exPvEMSpVs7B4EhkOqlU6AGAcPMV8R9HiFwPA8AGJJbgHybHTk8UdW+7o4yTHkD89ZHApIVFRxP9gC2HHi6I2VWEpCK5JPiwuX8XY5GsCt93o+GNQxaFWY8U/21669KR7xUdTfAEpYMNwLAVJE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(52116005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vlh3YVUvdXJOMXhUcndrNC8wZ1dMMlhOdzVSYk85RnFLRkloWHNxN1l2U242?=
 =?utf-8?B?SDJVZURSREtxZ0psVExPUFN1aWRXN2tDbFdEakZHRlkxSzlIN0dxejNlSHdi?=
 =?utf-8?B?WEM2bzhNUTNNTDBPU1JQTlFQcEE3R05UM05uUnVIcE0xUy96dWltUzBtSkIv?=
 =?utf-8?B?QVRsaVpWb1lEWWZXbUdBczhJL2ZnbjRKNVl4dVpLQkswYStFcWZSU1oweFU5?=
 =?utf-8?B?Q0FCNkphaHlCYjBSOVg3a3d5NytGVHBFeVpkbENXMGhkL1F3WHBwV0ExdDJw?=
 =?utf-8?B?Wm9EeEZrd1NPcENRcFRpallBRXQwYWVmcWlGdUpETWtlSjZWNXB4MnY2azRh?=
 =?utf-8?B?UWZHbHZkZlAvT0MzbHNSYkg1ellhL0lia3BpNk5kZUZCL09nbXFJemZ4bGsx?=
 =?utf-8?B?dGtJZ2FiZGFPaWtkL1p1QkpycnBBbnNNcEdyZFRDN3dJRXdKNkVCSmpUZjJD?=
 =?utf-8?B?MmJCaHdQOGpUS0dycXRxVmxLdlNTWlh6aG9QSXRmVnFZUFFYaFMxcEl1VlJl?=
 =?utf-8?B?RGRzY3d2eWJpd21sbnNOa1NYMENxUDNiSktlNHBYalJpS1c4VG5jb1ptVGtD?=
 =?utf-8?B?VE5uUjIrREJxd0ZuY05mcDJvY2NycGhDZjJZNnNlUFhBT2h5d3BURHRHb3R4?=
 =?utf-8?B?eUU3Nk94UWtzOXVNbHJ3c1BMd2dmT2xxV1NvcTdTQnlWNkFacHlCMzdRU1M1?=
 =?utf-8?B?ZElGSUd2ekFMd0tTaDRLcGpsZUd3eXp2aFRqZFoxenRwOEhnYThGR2VQY3dz?=
 =?utf-8?B?Rnl5RTdXZzVkRlVjZzd6OEVSVEV6a0FaTGN1cWk0SU12VW1lTjBzbVNjRlpa?=
 =?utf-8?B?VFFYVUFVcC95QVJ4a25rNE0rN25YMGhzRFNnbHJtdkRGZ29nSE8yRlNCSEtw?=
 =?utf-8?B?SmkvcW5tcXBMZlFvWm5NbVVVRkN4c1NwYXVJMlc3WFg2a0pLU0JqaUpYUnVa?=
 =?utf-8?B?SjNYYnRLTkV3VFhqUkFrZWx3THNTTEJpVWR1M3BJdVRCaFYrakFOa0lDNXRH?=
 =?utf-8?B?bDgzWFk3QmpnR2xrS2NKSGNBQjQwOHFqNHp3eEp1SnVNeGRkcU1INk5jWkpG?=
 =?utf-8?B?cnl2cHloTGx5aEdVcy9uQjJXRWNwZWxtbjhIWndRM1pGY3F6eHdhU0JvMXNX?=
 =?utf-8?B?VmN2QmQzLzl3Z055MTgxd1BLeFNFUElNR3BVK2ZNRkV3TVpyeFY2KzBUUENM?=
 =?utf-8?B?aml0alYzQlZhZThvWFptcTBWZndLcmZOLzMrT3EyWnNXNit1ZjR2MEgzWllR?=
 =?utf-8?B?QlczN2dtMndTZlJJLzFsSmVJQzhKQitoMmUrZ1pmQUV4MUFxSUs3cDUxaWlh?=
 =?utf-8?B?VHNOQ1lRMVB1TmZSWFQyUU1kOEF3djg2K0VtR3A1Q3M4NVdJN0orbUpHTHEr?=
 =?utf-8?B?bENjOHE0UkN1aUZqZDJXRmZQV2d1ajVLem81Q3hvQ0hJeHV4Mk55WU1yQ00y?=
 =?utf-8?B?UGpQeTJ5SVM4R1BsN01OeUI2N3RvMVNqNnV1c3RmL2ZDMWxucGtpT3RQSThY?=
 =?utf-8?B?KzRFd3R6d1czMXZnTUI4WlJlNXVtalBhTjNEL0lkZ3JLa1FWU1FpNlB4QUJG?=
 =?utf-8?B?elc4ckNwOGl3L2ovUGF1bVFXTEN0M0FMK0FoUEZOcE9LUEZ3TEd1UWRhTDFS?=
 =?utf-8?B?UFU2NWlQVWR4REczcURwT2Z0US93cjVMMGFPOWdwM3Q1WGJzLzZaRHJ4ZEpR?=
 =?utf-8?B?NW8vTWdlVGxDRFFrK0ZvRXhIMmhmVXJoNDVpSm85WnBYejVkMFRIeW41Vit3?=
 =?utf-8?B?L3M3SEpaai9MS0FTMVpIWDNKOS9rVEN2WkxyL3RCMmlGb3JTRG1kQzlQOE1j?=
 =?utf-8?B?by81TTU1Y04vVmw1cTgrWHZvcXVCandzZXVEWC90endXcjhKYUliejZaU2FR?=
 =?utf-8?B?dmsxUVZSNmZhM20vSzVhNXhHZzhyMjJabnJld0V3T05nSm9XcU1PZE9vbUZ6?=
 =?utf-8?B?cGNScUFrUlNLVlN1cGlBR1dpaW90VGdSMGxqbVI1MkJSYk9zNG9hOXhYNjYr?=
 =?utf-8?B?Y2NnY0FsRjlMUTBlM3JtTlpPdlM4dlRkenlsN1ZuOXdGWHZWVHl5Z3RJMkI3?=
 =?utf-8?B?V042ZC9JYVBITnN1R2xsQ2g5dS9hQm95SGQxMU1LRVM1TndMUmdSQVJDeVRO?=
 =?utf-8?B?K1BGUUhpY1ZUdHNtRkRldTMwL29NWnJaQlZkcVYzVWRLc0xDZFBRMXhRazIx?=
 =?utf-8?Q?cPcuxwOt6sN/6DVd4vmUmog=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 9509335a-6e2f-418c-05c2-08dc5af4fb66
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 13:32:21.6822
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tHf8CYAF01YtUNrtllGMib8BgZEUsw331ZJ/dHG4pBO1wO/j+kz/4JnLsUkDDhUeA0Pu97UuOakdWje6FQJjBrWaGby2fTeHnFLfLVvs7zk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR08MB9998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_063232_605177_6CA850B9 
X-CRM114-Status: GOOD (  16.47  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] common: add wolfvision board code library
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add board code library for all WolfVision boards.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 common/boards/Kconfig              |   3 +
 common/boards/Makefile             |   1 +
 common/boards/wolfvision/Makefile  |   2 +
 common/boards/wolfvision/common.c  | 142 +++++++++++++++++++++++++++++++++++++
 include/boards/wolfvision/common.h |  32 +++++++++
 5 files changed, 180 insertions(+)

diff --git a/common/boards/Kconfig b/common/boards/Kconfig
index f6d4a56f88..a2a51155ea 100644
--- a/common/boards/Kconfig
+++ b/common/boards/Kconfig
@@ -14,3 +14,6 @@ config BOARD_PHYTEC_SOM_IMX8M_DETECTION
 config BOARD_TQ
 	select CRC_ITU_T
 	bool
+
+config BOARD_WOLFVISION
+	bool
diff --git a/common/boards/Makefile b/common/boards/Makefile
index 147c36643d..3f8ac57b2f 100644
--- a/common/boards/Makefile
+++ b/common/boards/Makefile
@@ -3,3 +3,4 @@
 obj-$(CONFIG_BOARD_QEMU_VIRT)	+= qemu-virt/
 obj-$(CONFIG_BOARD_PHYTEC_SOM_DETECTION) += phytec/
 obj-$(CONFIG_BOARD_TQ) += tq/
+obj-$(CONFIG_BOARD_WOLFVISION) += wolfvision/
diff --git a/common/boards/wolfvision/Makefile b/common/boards/wolfvision/Makefile
new file mode 100644
index 0000000000..b2be4b73f4
--- /dev/null
+++ b/common/boards/wolfvision/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-pbl-y += common.o
diff --git a/common/boards/wolfvision/common.c b/common/boards/wolfvision/common.c
new file mode 100644
index 0000000000..f483918cec
--- /dev/null
+++ b/common/boards/wolfvision/common.c
@@ -0,0 +1,142 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Common board code functions WolfVision boards.
+ *
+ * Copyright (C) 2024 WolfVision GmbH.
+ */
+
+#define pr_fmt(fmt) "boards: wolfvision: " fmt
+
+#include <common.h>
+#include <aiodev.h>
+#include <net.h>
+#include <state.h>
+
+#include <boards/wolfvision/common.h>
+
+#define WV_RK3568_HWID_TOLERANCE 50
+
+int wolfvision_apply_overlay(const struct wv_overlay *overlay, char **files)
+{
+	int ret;
+
+	if (overlay->filename) {
+		if (*files) {
+			char *old = *files;
+			*files = basprintf("%s %s", old, overlay->filename);
+			free(old);
+		} else {
+			*files = basprintf("%s", overlay->filename);
+		}
+	}
+
+	if (overlay->data) {
+		struct device_node *node =
+			of_unflatten_dtb(overlay->data, INT_MAX);
+
+		if (IS_ERR(node)) {
+			pr_err("Cannot unflatten dtbo\n");
+			return PTR_ERR(node);
+		}
+
+		ret = of_overlay_apply_tree(of_get_root_node(), node);
+
+		of_delete_node(node);
+
+		if (ret) {
+			pr_err("Cannot apply overlay: %pe\n", ERR_PTR(ret));
+			return ret;
+		}
+
+		of_clk_init();
+		of_probe();
+	}
+
+	return 0;
+}
+
+int wolfvision_register_ethaddr(void)
+{
+	struct device_node *eth0;
+	struct state *state;
+	char mac[ETH_ALEN];
+	int ret;
+
+	ret = of_device_ensure_probed_by_alias("state");
+	if (ret)
+		return ret;
+
+	state = state_by_name("state");
+	if (!state)
+		return -ENOENT;
+
+	ret = state_read_mac(state, "mac-address", mac);
+	if (ret)
+		return ret;
+
+	if (!is_valid_ether_addr(mac))
+		return -EINVAL;
+
+	eth0 = of_find_node_by_alias(of_get_root_node(), "ethernet0");
+	if (eth0)
+		of_eth_register_ethaddr(eth0, mac);
+
+	return 0;
+}
+
+static int wolfvision_rk3568_get_hwid(int chan_idx)
+{
+	const int values[WV_RK3568_HWID_MAX] = {
+		0,    112,  225,  337,	450,  562,  675,  787,	900,
+		1012, 1125, 1237, 1350, 1462, 1575, 1687, 1800,
+	};
+	int ret, hwid, voltage;
+	char *chan_name;
+
+	chan_name = basprintf("saradc.in_value%d_mV", chan_idx);
+	ret = aiochannel_name_get_value(chan_name, &voltage);
+	free(chan_name);
+	if (ret)
+		return ret;
+
+	for (hwid = 0; hwid < ARRAY_SIZE(values); hwid++)
+		if (abs(voltage - values[hwid]) < WV_RK3568_HWID_TOLERANCE)
+			return hwid;
+
+	return -EINVAL;
+};
+
+int wolfvision_rk3568_detect_hw(const struct wv_rk3568_extension *extensions,
+				int num_extensions, char **overlays)
+{
+	int i, hwid, ret;
+
+	ret = of_device_ensure_probed_by_alias("saradc");
+	if (ret)
+		return ret;
+
+	for (i = 0; i < num_extensions; i++) {
+		const struct wv_rk3568_extension *extension = &extensions[i];
+		const struct wv_overlay *overlay;
+
+		ret = wolfvision_rk3568_get_hwid(extension->adc_chan);
+		if (ret < 0) {
+			pr_warning("Could not retrieve %s HWID (%d)\n",
+				   extension->name, ret);
+			continue;
+		}
+
+		hwid = ret;
+		overlay = &extension->overlays[hwid];
+		if (overlay->name) {
+			pr_info("Detected %s %s\n", overlay->name,
+				extension->name);
+			wolfvision_apply_overlay(overlay, overlays);
+		} else {
+			pr_warning("Detected unknown %s HWID %d\n",
+				   extension->name, hwid);
+		}
+	}
+
+	return 0;
+}
diff --git a/include/boards/wolfvision/common.h b/include/boards/wolfvision/common.h
new file mode 100644
index 0000000000..a9bf6acbbb
--- /dev/null
+++ b/include/boards/wolfvision/common.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Common board code functions WolfVision boards.
+ *
+ * Copyright (C) 2024 WolfVision GmbH.
+ */
+
+#ifndef _BOARDS_WOLFVISION_COMMON_H
+#define _BOARDS_WOLFVISION_COMMON_H
+
+#define WV_RK3568_HWID_MAX 17
+
+struct wv_overlay {
+	const char *name;
+	const char *filename;
+	const void *data;
+};
+
+struct wv_rk3568_extension {
+	int adc_chan;
+	const char *name;
+	const struct wv_overlay overlays[WV_RK3568_HWID_MAX];
+};
+
+int wolfvision_apply_overlay(const struct wv_overlay *overlay, char **files);
+
+int wolfvision_register_ethaddr(void);
+
+int wolfvision_rk3568_detect_hw(const struct wv_rk3568_extension *extensions,
+				int num_extensions, char **overlays);
+
+#endif /* _BOARDS_WOLFVISION_COMMON_H */

-- 
2.34.1



