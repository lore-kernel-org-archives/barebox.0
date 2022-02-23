Delivery-date: Wed, 23 Feb 2022 20:32:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMxNN-007sUP-Ir
	for lore@lore.pengutronix.de; Wed, 23 Feb 2022 20:32:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMxNM-0005Bi-2U
	for lore@pengutronix.de; Wed, 23 Feb 2022 20:32:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sHUDNz51vP26MaJ66fYnPNnJ6OKBcWZ2TnFwjDrZzd0=; b=Z+ARX+3KXu8Rsf
	Wfvuop3z/AyC3N6F4E6/jhEl0xwUGG0FFgEfhAsyq6a17lMTf1L/cTF2saWqa1sVKhRo16ovKC8qw
	fv0JG5JaxY/+9KTvV7XlBwwpUSG55LQPePqy99va8QdhqbGHcyJjC16XWETfjCV8iaQuMqx/BI4fb
	WwZGbjKwR9a6kehbXAPcZtnEUzO+azKrLTvkblet5zsrLEyTNGrdIleRtnCrx7vk7N2AG7g9sXH+w
	AGJ0RYwOb8hUIV6ke+w/rl5u5z3faV7lG7ew0weRcfkHXDtwgU4roO4pzIUnFqB+KQW+i/Lial2Z1
	rvYxYGnz5tkmWNZaxdmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMxLd-00Ftoi-J2; Wed, 23 Feb 2022 19:30:49 +0000
Received: from mail-vi1eur05on2060e.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::60e]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMxLY-00FtmA-42
 for barebox@lists.infradead.org; Wed, 23 Feb 2022 19:30:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J3f5L+EzfRIbmjipzmnnJZ9QqB9dtkRjCol6a+koK8LivtMTihCpx1M0HEpFPkymxEaBkHyAzZZZqxOH2hcnryugAvOHKvePNGIBzenapEXfevVfaPzTtIG/vXTzrnJNAvuG7nNjU+MycLjpTcLrGUFwF8KXMxT05X4dfb4r8GGJzctMiQC1Z3QOorqE2Foi4VGSWsHF9htx0gAgTfa1TZnGlhNwCq193oF8a5BVu7Be01SqhWBRkVodlo0Ey2jRCRED8LB/3EBBRI8WvG79d4Y6T2xheC8HSxTfmKe1CptutAjR27gwRLTGQD1zK1yjEBNK1txzMYN55e1lR+tfEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bOMQzBAhLKtcinP15pW2KyVZPSgzXKfobdW1ME36Q3g=;
 b=dKdoVX7iVfkwdF04dV1r2Cg7AHGIazWiAPFqWP7R6u2Q45H1ggbbsX4eUWIaKpQ8Ab4RZidOqWejIa2+RdEgZQW2hfY6LGfD2llpwiF4en4ltSxYsvrvMT6nOf+DIuV38dmZ0XibvZpBjY6eqqWBlssxOcV94BPxkRUgnm0UOfrioa0DJaVfiksPdHf6fb8iuyd5Q0DDcKpQkHlAa/cHd/APTnGhCgFVL2LnacFKc9wnBb2IEAgiNW7c3eoREcFsdOYDpnF2TDL7Fd/X7jJ9+fQSDlYwYiViG8Afo1HAJmv7R/F3nqrIcWsv/RalczWqlOv9vw4gNSYiA4uC9cOInw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=t2data.com; dmarc=pass action=none header.from=t2data.com;
 dkim=pass header.d=t2data.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=t2datacom.onmicrosoft.com; s=selector1-t2datacom-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bOMQzBAhLKtcinP15pW2KyVZPSgzXKfobdW1ME36Q3g=;
 b=lVSmtAcS528pQ10QACt1LNAFkjB7lzRD0szWWD8n9KhKfNAgLS/pV5hPCL71YwbrOgzqw93dvv4nLfX9p9HLOYc2RngcA37Jd0G7Q6jC+3YXTv0Ez2BFq0S6Ehm+saDjWfuadxK2qn1cJGKvi+9/JPKmNPo2ZdqqT6XXWOCxSM4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=t2data.com;
Received: from DB9P251MB0618.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:334::22)
 by DB9P251MB0546.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:335::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Wed, 23 Feb
 2022 19:30:38 +0000
Received: from DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 ([fe80::1cba:3835:dd1e:63d3]) by DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 ([fe80::1cba:3835:dd1e:63d3%5]) with mapi id 15.20.4995.027; Wed, 23 Feb 2022
 19:30:38 +0000
From: Christian Melki <christian.melki@t2data.com>
To: barebox@lists.infradead.org
Cc: masahiroy@kernel.org
Date: Wed, 23 Feb 2022 20:30:25 +0100
Message-Id: <20220223193025.1907423-1-christian.melki@t2data.com>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: GV3P280CA0109.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:8::12) To DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:334::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c6575d87-dfce-4f3e-33b0-08d9f702f86e
X-MS-TrafficTypeDiagnostic: DB9P251MB0546:EE_
X-Microsoft-Antispam-PRVS: <DB9P251MB05468E642E4015A76FAE9EF8DA3C9@DB9P251MB0546.EURP251.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5fhrENGagRXySjet3sLnul5raXkTrTgxVnIgGD2J+8Q6UAQSFoYEFuxZMMk0zabbqUxZjSMcvCKHAfeAw3wE9jdmaOhyWzbSKDuxs/BGpdwH3JE6eIzbhfIIco3UynjojVyQSVXO6rNkWGPP8T/79QpXiW3O4vaLsZJph1yrTBWan8rsxD4a8gZ9gg45T1eXgWgikiG9h5H1eYEckTscZVDg1TwaK6fvztsxmpZ2YjZYjq1XBXbaUk7Sk8j05a7ZPrBj1N6dEygsmp6/4Rwjtm63yQiGCyDRsc7bppWPah+yI3X6utLL4g1ZtdpvPjrZpX+x/wuvBgB1cFSJSy3KHnuJaL4sZdhT6XkjY8Iyj+s/BZmYkQgiowS51Wv1Y9qLw3zFKNuGbhgrLyoQYdfcovcTePb2437bKzqsD/TitDzzazedu5slmAsR7r2HPPEeuYo0KB84SxhGkq/VWpRPQGZy+EJQ/8alT8FNwvZASMWEnz6ASULIAr/ScKeHYnFMrEmz1xkHw3bjWJJtmiIk3qqwk25FaYLj+Rjju/ayVo1gCe3xTYsi9+LFeKJ9k1Vij0tiNvKLzJzoW/dz3BARCXnKTMeRac2JI8b2HgDydHnpE8M5JZ+vLQc8jGV45seDYLEXS230joI50Iy0staJRUCbmHODhQpqum9qPoXy0RYkH8+6/esu8jEeLSi3KHQ2tEZ1H/a5RwxpgLQM/ZQNLg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9P251MB0618.EURP251.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(39830400003)(346002)(396003)(136003)(376002)(366004)(8936002)(6506007)(38350700002)(6512007)(5660300002)(4326008)(52116002)(66946007)(316002)(6916009)(66476007)(66556008)(8676002)(38100700002)(86362001)(6666004)(6486002)(186003)(83380400001)(2906002)(26005)(2616005)(44832011)(36756003)(508600001)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kbgsD2YF5iEf8XkCRZxVJRFVgOe9ZGD8hfCslAVcrGFSCBX09bMfTPsVL/Kr?=
 =?us-ascii?Q?FTi9P9jrQhh6pjh2ZhBJSmZ+O588Ukpz/Lrk6YiFEgQFHknIa6I1qncKnwhI?=
 =?us-ascii?Q?dlrO2h3cEl2yrAFxif4lzZD5BqoC1ozsRSMciqCaZrv/MU1QzeTF+k6YDbGK?=
 =?us-ascii?Q?cMsdTlB5189GMGiFgb/WrMOwCiBHoJn4jrUySbrVCFlrFGACz9JbFmWpkl05?=
 =?us-ascii?Q?iL9eICte3on+5Fk0v57qf1ZSmDMfwoA3HIDcKyUkJ5RXBowHDTjFZsELP5eE?=
 =?us-ascii?Q?X5nFlMj8q/VsDzQlPappU1evbehiyo1ysiEjTVvJMT/NLciyejgH5h0cvcGY?=
 =?us-ascii?Q?EX1UTkpZdgI7/EClL/co/ADLuBfalEuDjTz7Rn5Y2KO2O8OpSAj6oVPg75pv?=
 =?us-ascii?Q?qX5b20DXCjlo8mlJA3zKe6Fwo8JSID1PQ2wQ2IJPlVtmNUMGx5+Xc3+jOz9A?=
 =?us-ascii?Q?O53o9m6I3RKdT3w1si/kyC9VnZa9oPV4bE+JPO8DQlx5SewbCkz0BmdZv4jK?=
 =?us-ascii?Q?4HJ+2UAlTzMuGN87Yo9V03zWdCBx2PGggj5UCvxQ36YbShiwViKd/2rBlj8b?=
 =?us-ascii?Q?TgyF3Uyth4gJCa6bNAfUv1L9fCYWWpgqOlrIAOQtNsmcdrpC/+j1YeOjc/C3?=
 =?us-ascii?Q?ykCfjhxoT/lkapqYQnRLtF98oRZd77mwcTe0vkG9I9sVio+vQB8RL6WTtFKN?=
 =?us-ascii?Q?fycwWN+GGDAo88mvQPKZEPnwMbgrypwTrr+0Lk74F0DnDYaDwwH2rBrIcuS/?=
 =?us-ascii?Q?Z9jjasavU/OLHkcF0pbLujfG/0jJvVsxhcsbCel4G8/nwi4y7cwRPkXJq/eB?=
 =?us-ascii?Q?5/ID7ME7vggTlK5KEcVvJ0HgreaimG3T1jcFatNpG42vXqTjzES/UQ/CcgwS?=
 =?us-ascii?Q?q36cOde1HQ3mXQeW40ImIeQ9IDjvki8ZGawGVgoawU1VnWdFuZunkixAwjZG?=
 =?us-ascii?Q?C99sDkVGnwvt0mHP7UvGbdlWwfbHzbW/Ii2w/gDB/Y319QJV8lfXRm9erYad?=
 =?us-ascii?Q?wKj7xoTWnRYTZ1qDvC4wAkP3+RKBGgeHK7k1T0HFp65E9/B1d91Y2oPj6GHP?=
 =?us-ascii?Q?FBelU51rWEkBSrVRpuLxIRr3A6MUmgpG2sMgzjA5MOFKi73nNpvlqtMQWQ86?=
 =?us-ascii?Q?QQ+BD2XYpWl398PycwbyUNrOp8P0R/Ol/MoleVGifVJAtAG846KhCvX2avgG?=
 =?us-ascii?Q?ZGdhUwnjGcNdH4UI8OcYQmz58CUeZodfVgIf8Pgxa+VbvNZQwNjYYB8KsPVp?=
 =?us-ascii?Q?PJKLDgvSCD1OEEauJTgGm9VnFU3fMB5i1JAVqTPzxM/RXGeluta/kg5RAcXm?=
 =?us-ascii?Q?k8ZKrfiVLA7epiIIDIp7aaSIwMAkuy+5gB2Tvo4F+jfCPt7WUfOhiYLggeo/?=
 =?us-ascii?Q?Rvox6MWWalCcv4r96hv/kG594m1+ncFCKSiMG5T9uXZjyGrfCJmiNl8GyaA8?=
 =?us-ascii?Q?DZpBqACuloIGdNcol2CNLFVigP1h/iig70/JuWx9tISiSpa0QsFhxQJQnbqs?=
 =?us-ascii?Q?ySdAjqpjI5lb0omEwFPyuBdF6bc8q8PCLoSJbbqq/uyKu2tNh68fjwjnzKOC?=
 =?us-ascii?Q?Lfjg1XMYSdar6d6N6vaLtJgisnFLD5oHn5clcq8GHlzhx49zfwXRtqqWfujA?=
 =?us-ascii?Q?yj0N+vnyDGG21CfJffuTn7Ys0/cYLHr/IU/LtQknVUIVWzaxedxefvz21yMj?=
 =?us-ascii?Q?nASzL7+XIP3inuuS9B8wwm3MEvw=3D?=
X-OriginatorOrg: t2data.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6575d87-dfce-4f3e-33b0-08d9f702f86e
X-MS-Exchange-CrossTenant-AuthSource: DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2022 19:30:38.0696 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 27928da5-aacd-4ba1-9566-c748a6863e6c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iTYH3Mz0pFgDCnPTZAGOojHoiDaPtyS+mb4mpeCo+5h1umhhDYV+h/KO1e/SUaF01X1DxZHYn1JHxwVKk+G3WPIX2G1cegqRCgMyjgi6UIA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P251MB0546
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_113044_251756_377B2811 
X-CRM114-Status: GOOD (  10.78  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Re-enable warning for non-existent symbols.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

>From the kernel:
Commit f072181e6403b0fe2e2aa800a005497b748fd284 ("kconfig: drop the
""trying to assign nonexistent symbol" warning").

Rationale behind re-enabling this is that as an embedded developer,
I often find myself doing oldconfigs during upgrades. Symbols
do change names and are sometimes lost silently, with the occasional
headache. My need for these warnings are probably different than
the need of the typical kernel developer.

(Un)fortunatly, a lot of projects directly inherit the kernel kconfig/lxdialog
variant without much thought into their own symbols and practices.
The kernel itself has some 1k+ non-existent symbols in various
defconfigs as developers are not nagged about their cleanliness.

This warning could do well in various projects. Barebox, ptxdist,
U-boot, busybox etc.

Signed-off-by: Christian Melki <christian.melki@t2data.com>
---
 scripts/kconfig/confdata.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/kconfig/confdata.c b/scripts/kconfig/confdata.c
index cf72680cd..d189e088d 100644
--- a/scripts/kconfig/confdata.c
+++ b/scripts/kconfig/confdata.c
@@ -439,6 +439,7 @@ load:
 			if (def == S_DEF_USER) {
 				sym = sym_find(line + 2 + strlen(CONFIG_));
 				if (!sym) {
+					conf_warning("trying to assign nonexistent symbol %s", line + 2 + strlen(CONFIG_));
 					conf_set_changed(true);
 					continue;
 				}
@@ -481,8 +482,10 @@ load:
 					 * include/config/FOO must be touched.
 					 */
 					conf_touch_dep(line + strlen(CONFIG_));
-				else
+				else {
 					conf_set_changed(true);
+					conf_warning("trying to assign nonexistent symbol %s", line + strlen(CONFIG_));
+				}
 				continue;
 			}
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

