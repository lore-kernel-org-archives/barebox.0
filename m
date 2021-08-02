Delivery-date: Mon, 02 Aug 2021 12:42:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAVP8-0008R6-6N
	for lore@lore.pengutronix.de; Mon, 02 Aug 2021 12:42:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAVP5-0003Lp-IZ
	for lore@pengutronix.de; Mon, 02 Aug 2021 12:42:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4ZuQdy+9E18T3arEwnCKcVtxOtjPEtgHCB492M7b2Q=; b=I3sQ5iNYxJ8fOv
	GzojAat1TXJ3+6dbumYC1d20Wm+ne8DBSG8NUz4w8uibhHi6UtfdjE12GoS55NZZKUFVKfDTIurPk
	z4FoMEwismbIfYCCqW912RqPyZL6urotRYfrA+YLs5ShtF4hpvbaw/p7n67Jk53EOQpnsUuLLxF4Q
	/lO2HiCvje5+ZNpGTwzjqLS4do3eIQFcVfNodu74grRexR7wldUKV/VhiWx6Sz1UIeGgDKmEbPaC7
	PjQYZqHWOQDS0OqJFBX2IybWi9wCxFOIfwtRAN7/7olsT6D8Mu2409qQNwFWFtH/zWKhUP3hWdEmq
	/s4oZWONpvjZuI/0HZBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAVN4-00FnI6-9u; Mon, 02 Aug 2021 10:40:34 +0000
Received: from mail-sn1anam02on2104.outbound.protection.outlook.com
 ([40.107.96.104] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAVMr-00FnEE-Qz
 for barebox@lists.infradead.org; Mon, 02 Aug 2021 10:40:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fUWcUmXWeeEURyHuHo+t0aU7NWutMAHAUC887JJX+PL1Z8indS3kRGaaDyOQ+4Xf60RgF634CKsZnrX2GDbyhqvnEUOMMxE6G5O68uWM53PSk9fH6AyvRBiyNJSzNTi803YBbUTRvqt2H9dgyL+brLMtCml+AHzp+C+jlWuOzqqUJQVURNziWq1MJ8XZNA+gidxduPVZhCLf4cRdgvwOz1dLDNP9bSCcu/nD/zETuYEu8HCAbvu+H9pEugAuGRGWCnhNEPUNjXIjqsxMaDEqZy07ORH5VCQi3w6HYHcSI9F14jBaa3LFFT/tRMIDGrY8mj5OI2jCYdxC0bicgoEGKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ERmhhu4mh+3wzhhZODtQvUWGRRUmTvg7dT/PqTzCoQE=;
 b=hUwYgVtUSD0n7YsCjFPwtHgvWxDjN88VmzM7WjinYVTiw4/GYDFtFIKlkFctKPStxyMz8dw82fZF4WAHVn5MT6Ett2kYzX4kFQDRM4Zjhd4zfHMo5gATRrqteXWPnkfHv7dUrVfPNQngoqhnYwgh6pxQS8xusEHYn9izGrFcx6eT/UJ135cgKLscLctrDEq3pkQAKAG2ypY4zo0OFV6kMkiFUC9PCj+RmseXij2gRFx6EHIyj5uIkJRfoezvzawa9LFXi4WGUDnBMEry9TlBUSO13H1PlKDjPmT2q5jRT8q02AEqCw6A7G9czIe4WRK60G8na4eEuN2EgDDx6HSUjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ERmhhu4mh+3wzhhZODtQvUWGRRUmTvg7dT/PqTzCoQE=;
 b=R5SEdc8jW8SOCCcl1vRsh8gcmqdTwl5qOKXL+duwu3fxATOIi4x968WryN0NBS+Ykn9wvMD2A8IX6pbPD+OceF8olpP//KS8oe1taQ9aXZzRUVL1rrOipTtVTGRPgVKYsiJ4CsZa6Mc+vRvpIj2cJsFd8G7d945rRDI61suw4KruVzl1YikOvKnYt2Xjv2csn2+AyyFerAgGCuGMI6D5hQOrUfkZUL2aeBt425UBemrwTDF1NCqpJdr/X5TsVFk6XU9kIqinYgxG2aQNkB+fO59rqFYwYD2dJVkZxK54vDOWjvZz/kCzzCHvgIvFbaKYN4xQq3i8pF+H0kwVTa2VVQ==
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=abaco.com;
Received: from BL3PR16MB4572.namprd16.prod.outlook.com (2603:10b6:208:34b::23)
 by BL3PR16MB4337.namprd16.prod.outlook.com (2603:10b6:208:33c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Mon, 2 Aug
 2021 10:40:17 +0000
Received: from BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814]) by BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814%9]) with mapi id 15.20.4373.026; Mon, 2 Aug 2021
 10:40:17 +0000
From: Renaud Barbier <renaud.barbier@abaco.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@abaco.com>
Date: Mon,  2 Aug 2021 11:40:02 +0100
Message-Id: <1627900804-15814-2-git-send-email-renaud.barbier@abaco.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1627900804-15814-1-git-send-email-renaud.barbier@abaco.com>
References: <1627900804-15814-1-git-send-email-renaud.barbier@abaco.com>
X-OriginalArrivalTime: 02 Aug 2021 10:40:15.0966 (UTC)
 FILETIME=[C7E577E0:01D7878A]
X-ClientProxiedBy: BL1PR13CA0235.namprd13.prod.outlook.com
 (2603:10b6:208:2bf::30) To BL3PR16MB4572.namprd16.prod.outlook.com
 (2603:10b6:208:34b::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from TOWSMTP.abaco.local (205.182.146.17) by
 BL1PR13CA0235.namprd13.prod.outlook.com (2603:10b6:208:2bf::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.4394.12 via Frontend
 Transport; Mon, 2 Aug 2021 10:40:17 +0000
Received: from selma.abaco.local ([10.1.177.4]) by TOWSMTP.abaco.local with
 Microsoft SMTPSVC(8.5.9600.16384); Mon, 2 Aug 2021 11:40:15 +0100
Received: from ediapps.abaco.local (ediapps.abaco.local [10.1.177.9])	by
 selma.abaco.local (Postfix) with ESMTP id D9D10E343F;
 Mon,  2 Aug 2021 11:40:15 +0100 (BST)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 080fccc3-31a7-4c85-475f-08d955a1eb1a
X-MS-TrafficTypeDiagnostic: BL3PR16MB4337:
X-Microsoft-Antispam-PRVS: <BL3PR16MB43378A008E66F55775B51EBF91EF9@BL3PR16MB4337.namprd16.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1227;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TUINC3GUqv8K4tl4vTXA5bJZmaDaItwnUN80ULZNazY/KB5sgcrOtUR2qKVWIISqPRE0SN/k+UXJO3NmrTVgm9K6e2X53qT3lidn+e33DFMy3REam7iPMX/Qtsy5uUOz2CMYgaBG9/428tc8ornLEFYZInVrZiKFl43A7/3u3EJDC+uYcS6WI96c4G3AYoOAFwIdmZiJVUyWdt5hJNOUoIYfq1bDxKvJsgIcPPdmcHP7BzLkBUrWLWeuuSRYx0ej3tXaysG4A8vKPVdcHfpOEFjnbI5FC069A1xaMTx7hhJwHILCgUvokNzgo9Z4Hd3KHGdb1qqfXBLFGt+80tbCzef810QO2ObtU4Pa05F5D0ASlFNiboXgNscMxX9rl/qGePTbCvsmqVSHcLfhv2cust9GPk3a6A0K3MkVn95BrrwuyQmGTbxm1HK9zZTC0aS6iIOMknAtw4oRbnZ+dPzobvoLFBfBkyzfyDX03UQTRb9qD6BO+ZErNF2+gzbxYqlNyoo8s8QsI1j4Uk/4ug/F/VHAiWGD5Ja5TCJ5zmNJ37OQuQZxiS8H642Ee/ut+ZDYIY1ogMBg+BdJ/nnkQRw3/EmEWx7hKr2k7LzEG10KC0OSe9Kx2P5jn8OdQAhCapMWt1Iiw2cUE5SWXwt+t/2Bojnyucm1xIEpGKXORaZ74GJdizVFkoh5QGCTqG4c2bKF6Gz1/JYaRwfuuB34fWaygw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR16MB4572.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(136003)(376002)(39840400004)(396003)(186003)(26005)(36756003)(107886003)(6266002)(5660300002)(2616005)(8676002)(66476007)(66556008)(4326008)(316002)(6666004)(66946007)(38350700002)(38100700002)(44832011)(83380400001)(52116002)(6916009)(86362001)(2906002)(478600001)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?B+N3seCHCF2fyj+kcVUa6SjnD2YD3lC4mBHIZVTR459DQKgq1pGMNe3hk1um?=
 =?us-ascii?Q?Jn/26qDYgXi/UAmXp+4dNZpzO0GGkNjWIY9kR4rYpW4DYLF0N6ZeAZeU+E6f?=
 =?us-ascii?Q?sy90V6i0cY22+hebfhrL2Ak7JH5HCQ3AwfFQ3q+Aie410dxnegegx/GwSuOu?=
 =?us-ascii?Q?tCX6OemeXeRyjYGuM3Tt3C4vUK60AXt0BeIAze6g9dK4l9r+crnpyjbA6kbV?=
 =?us-ascii?Q?Ftyue0k+tG6npA4POGrhlLJM5TLA4IRDu5AI2Op4oiWp1vM+23Xyl4uW3NCu?=
 =?us-ascii?Q?NMojr7AuEonc9pos4GcZwdL2Z5fZ/9esasQxfN0AxJtcJdR9mpT028pUTcqt?=
 =?us-ascii?Q?2AJWLawO5TgSurifQ5vq85PE7tspuUq6XWqRnqn3lCoeZxKY0tj2MAGGwjTD?=
 =?us-ascii?Q?BazwrPRjl94Qk6gLJmhHZ0Wu51NqTal/oHRRBTjdU1hrHWBn8YTO1r3aNrQf?=
 =?us-ascii?Q?6fWEeOd4YGDz04zgaZwApWVynC6zbiMD4eIU55ENFhybDs+mMhjZCgozbTjx?=
 =?us-ascii?Q?B8+0TKk3JZYH2Hi4j59PVqs314YzD9JKmix5datMk4IplgAG8K6IK4Jagqcr?=
 =?us-ascii?Q?bp/449VjGF0fkJOO9T8vZsxXR2L01Xu6/2JbifRw4bUE9g1zKAQq2k7jqnZf?=
 =?us-ascii?Q?ElueIDG+7gz+AoJdfZiNqiGEEvAZjdH6B2f52B6jxtpXAnbWhW422NuvX/++?=
 =?us-ascii?Q?9GEmRG36ovqHKwTn4FeMTm2W+0/8VKQZseMCRiixt/G8WQTgofncevU8nvtD?=
 =?us-ascii?Q?Bptxczad1MCnR2z5L6clm2RQCuBblVJ1tTMpd9wiEa8fj9bc3G4pOVFzeUDO?=
 =?us-ascii?Q?zaEdcdqwiNeivFs1sf7oJkyB00KHa1qRlEGP7v92XhHwgsLv3Y349aJsaIHz?=
 =?us-ascii?Q?o/LpZu/Dxumznomilh4qYzkLSvlWYozaANOwxr3Y2rtMn4ZZ8YG6CBc6En8b?=
 =?us-ascii?Q?LieOJDmZmlFGUfPzCLL16qWNlEdFAt9CirekAvQ+rQi7unGlXZ/vN/kCHAmg?=
 =?us-ascii?Q?p/k9nPSH+7WVC+o0+9QD/qVu3b+SFOHYm6iCHkDEwGTlX/MYe6+xdIfGmJp2?=
 =?us-ascii?Q?rrk1q/iwozOvO457hyggP5LFUiIqeJctE5aiKAoWAIB9YKKPGzNbVxkFLQZ5?=
 =?us-ascii?Q?Z7NyAC9oGNEkA3LDYAiPaY6S2i2wi8LEr8G2JwlyP47wNBd2VKQjosDRFfdR?=
 =?us-ascii?Q?Xy48cHUNWUL43I7/ASQD4C7/oPHTUf2y0KUwBEdt2xjSUR+ffOoCEa+6Gxw4?=
 =?us-ascii?Q?VdM0isCEJrC6vKqlMCMPsJP3pazzmlfPpjNqeiR2haLgQYkQXBKa80MJcYJK?=
 =?us-ascii?Q?ooq6XHl/LQYc5B7/5od9aYYq?=
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 080fccc3-31a7-4c85-475f-08d955a1eb1a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR16MB4572.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2021 10:40:17.3383 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cCeuJ4WwXCtLKg6myadKF+ffsVxQrycClDMr5TzAbgbfeAhTU6henXWGH9l2UgUetQkAmag6UXfi1VhrjinoJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR16MB4337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210802_034021_918682_1EC7A7F7 
X-CRM114-Status: UNSURE (   9.55  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] ARM: atomic.h: add 64-bit counter support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In preparation for the introduction of the FSL IFC nand driver
for the layerscape CPU, add 64-bit counter support.

Remove functions calling undefined functions.

Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
---
 include/asm-generic/atomic-long.h | 63 -------------------------------
 include/asm-generic/atomic.h      | 49 ++++++++++++++++++++++++
 2 files changed, 49 insertions(+), 63 deletions(-)

diff --git a/include/asm-generic/atomic-long.h b/include/asm-generic/atomic-long.h
index 322d510f38..fd1fdad20f 100644
--- a/include/asm-generic/atomic-long.h
+++ b/include/asm-generic/atomic-long.h
@@ -66,69 +66,6 @@ static inline void atomic_long_sub(long i, atomic_long_t *l)
 	atomic64_sub(i, v);
 }
 
-static inline int atomic_long_sub_and_test(long i, atomic_long_t *l)
-{
-	atomic64_t *v = (atomic64_t *)l;
-
-	return atomic64_sub_and_test(i, v);
-}
-
-static inline int atomic_long_dec_and_test(atomic_long_t *l)
-{
-	atomic64_t *v = (atomic64_t *)l;
-
-	return atomic64_dec_and_test(v);
-}
-
-static inline int atomic_long_inc_and_test(atomic_long_t *l)
-{
-	atomic64_t *v = (atomic64_t *)l;
-
-	return atomic64_inc_and_test(v);
-}
-
-static inline int atomic_long_add_negative(long i, atomic_long_t *l)
-{
-	atomic64_t *v = (atomic64_t *)l;
-
-	return atomic64_add_negative(i, v);
-}
-
-static inline long atomic_long_add_return(long i, atomic_long_t *l)
-{
-	atomic64_t *v = (atomic64_t *)l;
-
-	return (long)atomic64_add_return(i, v);
-}
-
-static inline long atomic_long_sub_return(long i, atomic_long_t *l)
-{
-	atomic64_t *v = (atomic64_t *)l;
-
-	return (long)atomic64_sub_return(i, v);
-}
-
-static inline long atomic_long_inc_return(atomic_long_t *l)
-{
-	atomic64_t *v = (atomic64_t *)l;
-
-	return (long)atomic64_inc_return(v);
-}
-
-static inline long atomic_long_dec_return(atomic_long_t *l)
-{
-	atomic64_t *v = (atomic64_t *)l;
-
-	return (long)atomic64_dec_return(v);
-}
-
-static inline long atomic_long_add_unless(atomic_long_t *l, long a, long u)
-{
-	atomic64_t *v = (atomic64_t *)l;
-
-	return (long)atomic64_add_unless(v, a, u);
-}
-
 #define atomic_long_inc_not_zero(l) atomic64_inc_not_zero((atomic64_t *)(l))
 
 #define atomic_long_cmpxchg(l, old, new) \
diff --git a/include/asm-generic/atomic.h b/include/asm-generic/atomic.h
index 449cecaabc..6e63b8e8e7 100644
--- a/include/asm-generic/atomic.h
+++ b/include/asm-generic/atomic.h
@@ -11,7 +11,55 @@
 #ifdef CONFIG_SMP
 #error SMP not supported
 #endif
+#define ATOMIC_INIT(i)	{ (i) }
+
+#ifdef CONFIG_64BIT
+typedef struct { s64 counter; } atomic64_t;
+
+#define atomic64_read(v)	((v)->counter)
+#define atomic64_set(v, i)	(((v)->counter) = (i))
+
+static inline void atomic64_add(s64 i, volatile atomic64_t *v)
+{
+	v->counter += i;
+}
+
+static inline void atomic64_sub(s64 i, volatile atomic64_t *v)
+{
+	v->counter -= i;
+}
+
+static inline void atomic64_inc(volatile atomic64_t *v)
+{
+	v->counter += 1;
+}
+
+static inline void atomic64_dec(volatile atomic64_t *v)
+{
+	v->counter -= 1;
+}
+
+static inline int atomic64_dec_and_test(volatile atomic64_t *v)
+{
+	s64 val;
+
+	val = v->counter;
+	v->counter = val -= 1;
+
+	return val == 0;
+}
 
+static inline int atomic64_add_negative(s64 i, volatile atomic64_t *v)
+{
+	s64 val;
+
+	val = v->counter;
+	v->counter = val += i;
+
+	return val < 0;
+}
+
+#else
 typedef struct { volatile int counter; } atomic_t;
 
 #define ATOMIC_INIT(i)	{ (i) }
@@ -63,6 +111,7 @@ static inline void atomic_clear_mask(unsigned long mask, unsigned long *addr)
 {
 	*addr &= ~mask;
 }
+#endif
 
 /* Atomic operations are already serializing on ARM */
 #define smp_mb__before_atomic_dec()	barrier()
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

