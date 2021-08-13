Delivery-date: Fri, 13 Aug 2021 10:19:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mESPU-0007Qi-El
	for lore@lore.pengutronix.de; Fri, 13 Aug 2021 10:19:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mESPP-00008z-Pr
	for lore@pengutronix.de; Fri, 13 Aug 2021 10:19:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4ZuQdy+9E18T3arEwnCKcVtxOtjPEtgHCB492M7b2Q=; b=ENgUqIdlUUc9PV
	G9f2FBjAq8//r78Jq2oHkpm4mJGjYzvUA8X5xCozOX+jezIl6HiP4sk7E6qbOcikc2ZjasYyAjX2o
	KMnKEvLTN94zKzGM1u2pDSHIna0sEUm21bN7Lk60RXAGlkZYD9AkvAIxRKGaWeC8wp5hlXsKdU85E
	Z1tkUwFpJWI1xnt85/D4pXJb8/gHn2c0X7uOuiw3y8EhETMSZdZxt90rnyMBw7T8eNtY8HOQLKBuN
	RivshPfBg+kUC7PgccQsFP2Tg2gGiVvV5NyFcSIWA33WYr+C80dKRz6R4++KYJ506ZAc7KD63kT1i
	JxPWMuAdJk0/T8967alA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mESNL-00CCnI-5K; Fri, 13 Aug 2021 08:17:11 +0000
Received: from mail-bn7nam10on2130.outbound.protection.outlook.com
 ([40.107.92.130] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mESNB-00CClh-Ib
 for barebox@lists.infradead.org; Fri, 13 Aug 2021 08:17:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QdAa8XL1O1t2jjS2fmOXnxxo9BidV3zaE7lBiQcxhLbpbm0HHFBV4GSU7CylkkDR2kwDXXWFZFsDoJyTx7W6B0Z1YR3NP+Gw6vt2cWRSeC10bC5Z6hXpawmfSR6WbC+eFfznWJV6stBAZPnH+km20KY6/bGuSAf23RCiZs/AwmKXkouaFHbTbKN6Yy8dqPOz+1PDJPtQTX7+21oDD3IpU8NQNjHmxwOZEatDUXDThxfTKwH69qhYCdqs1ctgnBmUCxSxoWxEKtfFWkUWvwZT8gSfv6V7bqWyeT4JU2+dY+BkWXyQ/11jfuoIKii405/mhNOksr0hDCPSWYnYPtuYUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ERmhhu4mh+3wzhhZODtQvUWGRRUmTvg7dT/PqTzCoQE=;
 b=D4V7nTRxhYlGsZmEp9+KJGZ2XEQ6oTioeQN1oPbZHM9x6L1LX9pYNAO6qaabFmd8T4L5VLrbO2OLyX02kvI4AQspmfaAOO5mUD2hr9Pj0HIheJfoEaVZ2VJPgej0vE3wHzbq4iOBbjzG0tqxWg+s7uRLtiaNco23RUrZ7ib7gpnOVxGTpWT0gqdvLs+s2zvrcGZOzY3LDXjGv6gze9O5oYtRevPT50hu9ifaGvLymaocGImCMa6iWslXlpJw2ijkYPxmTkMyWqKeRquIJSGAPIVCxQu0a/9mvk3cr4B9oE464RevZB0nMuISjsa6aIZzxN8Zb/NiI2fwC+9AvsnRkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ERmhhu4mh+3wzhhZODtQvUWGRRUmTvg7dT/PqTzCoQE=;
 b=aSkN7UgbqARKIDeI0CikXGIJ9bRwaoPCSXj/fXb5npY0ouCAmuH/oNss2svitovUOchfsfxeJ8xAAL3Rg56Xb3WbM0IVXA1e3ZEZeh7CpAPkaUgTkdcwPbSPl1QxBPyVR+owXPsPdYQIYBIc84PNQMvvueEK7cBKtpDwl7aZzZKlV4NqErKAMx5KVhmoGxzTP3/xQxhfKMrl4eIl1lWq0Bq0sUahz6ClnEuYYKY8IVE+6UwxmGUV5xA3UVEvTmH8bTDzKykcsapQCRnB3jzO1/lxyGd317IpjOHY/QTu+MYtb08sj+l7fxpFj+fUrEYkWe2ki3ThcJiY4VVBcvmINQ==
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=abaco.com;
Received: from BL3PR16MB4572.namprd16.prod.outlook.com (2603:10b6:208:34b::23)
 by BL3PR16MB4524.namprd16.prod.outlook.com (2603:10b6:208:34a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.17; Fri, 13 Aug
 2021 08:16:54 +0000
Received: from BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::28c5:7024:faed:6889]) by BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::28c5:7024:faed:6889%7]) with mapi id 15.20.4415.019; Fri, 13 Aug 2021
 08:16:54 +0000
From: Renaud Barbier <renaud.barbier@abaco.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@abaco.com>
Date: Fri, 13 Aug 2021 09:16:46 +0100
Message-Id: <1628842608-17031-2-git-send-email-renaud.barbier@abaco.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1628842608-17031-1-git-send-email-renaud.barbier@abaco.com>
References: <1628842608-17031-1-git-send-email-renaud.barbier@abaco.com>
X-OriginalArrivalTime: 13 Aug 2021 08:16:53.0018 (UTC)
 FILETIME=[92AF07A0:01D7901B]
X-ClientProxiedBy: BL1PR13CA0120.namprd13.prod.outlook.com
 (2603:10b6:208:2b9::35) To BL3PR16MB4572.namprd16.prod.outlook.com
 (2603:10b6:208:34b::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from TOWSMTP.abaco.local (205.182.146.17) by
 BL1PR13CA0120.namprd13.prod.outlook.com (2603:10b6:208:2b9::35) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.4436.10 via Frontend
 Transport; Fri, 13 Aug 2021 08:16:54 +0000
Received: from selma.abaco.local ([10.1.177.4]) by TOWSMTP.abaco.local with
 Microsoft SMTPSVC(8.5.9600.16384); Fri, 13 Aug 2021 09:16:52 +0100
Received: from ediapps.abaco.local (ediapps.abaco.local [10.1.177.9])	by
 selma.abaco.local (Postfix) with ESMTP id E3DB7E3571;
 Fri, 13 Aug 2021 09:16:52 +0100 (BST)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eae435dc-a4d3-434b-dac5-08d95e32b5f8
X-MS-TrafficTypeDiagnostic: BL3PR16MB4524:
X-Microsoft-Antispam-PRVS: <BL3PR16MB4524160242D9703E9795158291FA9@BL3PR16MB4524.namprd16.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1227;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WAFPHkBR3qpYR5MTSakP52hX4beeqT6b8a1mz1gZQomRRfpgkdfh/Vr5XCY8fDHEBFpccgKVgODTZdwkDh/xQnBCeRoD3SDIY3++xw2Jl+3pLmOycD9Eb+EghrcLbd2ghQLpl88yj99pZgnrmFAr7mGeywv/XPhkEO2lOa77NNEIZMKA04rB1HSsG8/QxLTtEWdMAmveMEWldiT5tTqY3kqBvztAWkj+D5fBiVdvFLmw/K50+uRWwXaYim2dz03LNzUBvvZuJiGVFv4eMB3NliRZ38Lw+XFJFqEFZOxYljER5RH58c2ha5E222v5QYDkX5LdTVJuTAF8jtmweohZaJldtjFKqCL6I4E++3QymVmw2X4CN7OJxG5nLC0ZLWE6IetWpmkxLP4/IQ/GsIYrmFUwf16ghVjs69hN7mEUlS/lEBFPJyxvtnNvaAiRbnV9ave1m/2KBfQa9lGA84YclJdWraVQQZqzT4XV3f2/Ihg2X3/MfqpvOzUn87yGhqMc/9MwBCFDTTrKypHo3JX99ibGrTRMleD0tf0pu2MxOorVbKZ7r8B6hnSZIbZz6DiCw9oafG+YwxrQgSvIZazBp87tNv+QivZ461WMIWItLB6FLBgB8ev77dNZZ08+mz4t0dfqSLDMFbO89VYcgMrKz9CxSTyC8R9rYt0Tlyru1Iu62416CnrkvesZ9A5mqLzjB8Ue5AKt0hWZQ2ELHLHkYA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR16MB4572.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(26005)(6916009)(83380400001)(508600001)(5660300002)(36756003)(44832011)(52116002)(107886003)(316002)(4326008)(6666004)(2616005)(38100700002)(8936002)(38350700002)(6266002)(86362001)(66476007)(8676002)(66946007)(66556008)(2906002)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?R4Ga/YbjD9iAkF0MB92Q8Sa0AKkG6le4Kxog3N+zBGeG+NXuW2XQgfW04xIN?=
 =?us-ascii?Q?zOrXrnxXkM7NRqPwfPcJqepEe56Y32CAKkknZ/G+h260G988HSMjASQfLEn4?=
 =?us-ascii?Q?wr2N/eLA0AoK9NzU1XMsW5bbS84Cm2MhIJBiYtBZqarGNH47NHFj5HSK1paP?=
 =?us-ascii?Q?D0jLAoWYrnIwrd1Zqqk0SAtjJrelF4rZEFg2g3XdevOxU6hGc8MsQeSQshMm?=
 =?us-ascii?Q?khygHYymbrLNorjLQEtYKz7LIFlRIhj0fs1x7+EII1RuHPewJOSt2IE5JdvV?=
 =?us-ascii?Q?lHlKHaH5AYqXy9zAZVLJR5n9CArJVwlfmTnAAcB+nNGS2C1zHg9loVaLBpMk?=
 =?us-ascii?Q?EOJaaGEADJI2EjoXaEkfudxHs7gWt4RTkE2JBbPADKYiK53WmHV3vTkObCXp?=
 =?us-ascii?Q?IA5HJMwphI14sopcTOrA0lqIkcPcDTE7eSbjjvwB/TqbLAAQ5rVO8mROBili?=
 =?us-ascii?Q?Dhs28pFNaWU0i2ABQadJKGPm3h+CV+xgSy5cuB7ELRmCvqjcEL8HPyLCjWIM?=
 =?us-ascii?Q?z2oW6Rebdlv5YekTNwn2oRjJC72VX97x1TOjEA8SwvDBgibKUsVihBL0K4Ph?=
 =?us-ascii?Q?ePaGSUfrKY9Rya5VNfap8hx0kwDSk5K5PZc57dKTlnRT6UooowewT4Jfbkj3?=
 =?us-ascii?Q?Ddx/ottIO2P+5ND1HFFQ98mV2YD7H7M7cycKDqIJs1EEqSj6RSCB9pnC/Y/1?=
 =?us-ascii?Q?qwVT2JYv+Jz9vpGrsiHTcBz1bfxYY+jkwMSjUa/KIVWBAcZ5wDvjbmxTB7p8?=
 =?us-ascii?Q?hf6nji3kWptSJfDR6gMO+fhjYVvV+2AgNdVYhpaz45E+uZReKxvz13MXdgkb?=
 =?us-ascii?Q?w69ZoDH7XOvgBuaPWMC3OaKGWMqeq1LB6s77HOSnwa0c3eRcqC+W5QayC5Ju?=
 =?us-ascii?Q?NGg1OIbJnnvB6/JFfyG74KmC177fTlvhyVQm3g8fDA7LmlRYatIqU0B83enu?=
 =?us-ascii?Q?469ff2bxH1VxHmy9lu84k+/1h2nDWvAz3iSTvJZQiJR9uIz92rVuIXOnrcJM?=
 =?us-ascii?Q?Up/ZMGZINqH6RMMmUsZcGWLYbiHTo4v9xlSG9G5kpyh61NmpYQ6t1o3dVBVz?=
 =?us-ascii?Q?Lu+6okQwCHx3kO5WgXuQBHk0Q1Xu6J8JINiZprMOnKHPdEpGJwP4Hum0W4FP?=
 =?us-ascii?Q?5fTKJQxYkDCQ/Yr4y3sI+TkPE/cCqFtWScfhpsi/MjD3jaRxJmRJ9iA6CGiS?=
 =?us-ascii?Q?uCUNksWbMVgYYj28fWNbvNIlv6v5vDt1jBSV7GTANt7qavxPUmO9ZQXTL7xI?=
 =?us-ascii?Q?d2kss+rWFevWPwaSakpDXtDGCycj/AD1jsrfoymjkjrK7V7AcS+lRK4eCpTz?=
 =?us-ascii?Q?6RubGiVEktBcKBZetrpV4eqd?=
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eae435dc-a4d3-434b-dac5-08d95e32b5f8
X-MS-Exchange-CrossTenant-AuthSource: BL3PR16MB4572.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2021 08:16:54.5261 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GFVrFtQdcVhPFx9YeX/tfHcYV/Xnm7jQBod4/ZLJ9yGRrqC1kxsYk3Q0m/PgUumvaXd6+VcagJlTi2/qX0kgYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR16MB4524
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_011701_639983_CD4515BA 
X-CRM114-Status: UNSURE (   9.59  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
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

