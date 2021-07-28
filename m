Delivery-date: Wed, 28 Jul 2021 14:49:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8izl-00066Y-Jl
	for lore@lore.pengutronix.de; Wed, 28 Jul 2021 14:49:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8izk-0004uf-A4
	for lore@pengutronix.de; Wed, 28 Jul 2021 14:49:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXsL+sAUQVcxJEeLLtuP33CCISooN6OHHmSLCApVbIc=; b=NA6a13x3otAlUq
	LLq6VqrvZHjANUk3SQGavVgDWvRVx44FsivOMHqSOwuViY2VYokXNxlFIoGUlFk/I7xruwelU8DqV
	DYHF6ybd0h+mP9M53UbIQiFsMqXQpFYK266HQbIRowgKZBgKaI08Ko8RQLpmmlcCJNO2haGDDCuvC
	ZjllleVrf1w88TkZlTj9VNIVyjXPwVauay4zCI6eYhjhndqRZzOSGowCvmnrA8nMRHzdTmQNd04b4
	VzEuzI6GrEVH8TTf3fA7ss8oQISUYlYcmgtaMt1fkpXl5mUC9mQW0dYYwgvlS4Hlx00s1ZOP1e/N4
	OVSXABb4uRF2E4aRIbLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8iy9-000iB9-JU; Wed, 28 Jul 2021 12:47:29 +0000
Received: from mail-mw2nam12on2123.outbound.protection.outlook.com
 ([40.107.244.123] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8ixy-000i8F-Gz
 for barebox@lists.infradead.org; Wed, 28 Jul 2021 12:47:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KVSOstkxvupoZke7h1l4NNltNORiIDCbkG/LGvU9h90D+k3CyGY82NRVu1z+gllj/FNXg8A36Lx/JYCgiPZGCmrw7rco7i0lGDgngcqYjlCISrdM+fVjlxHHUkwjHzgYcCLc397mK6L6jm+09beW0tzn1AR8vLU3T5qsGWPNAMJOAvrKs19NHFj4ak93AleaOZDoFFe7rRH5Z9O5pvZsRnUhwyGTUmRrvu6O6FWJR4TU5TCfkfk5Ddj4mHrcdT8E6mMPsEUBOU03YKhffZ3ev7e4qTco/F/ZL7PlVUOE0DKsmhvKJtqW4FmI4tX2msHDrjE1oA5I8LrLU25dipTErg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oaq4p/JEmzfVDFnD7rtzfQFzpD3VLGvFyfswRYQ8uYo=;
 b=XEkPoAie9y6DW8RMzRErCBzHI/6TtUGWDp+HiG3t72VDkN9oq3FF6PAqN5RkH3aUOLTwCyldu9YdUF+LwvUIPFs0/GPti+QGlihmLw6wyc7/4S3rXGKB/LAKWCD4zQsUSVXxU+GSp89GPARAAzZoj8R6WJd7oUyAmwdPAHW3D9I4TJP6dz3yYDcBF0M11A5ApQdyXb2+zVHsrENK15Ars/0CnMlvI9RJJN2IjcFoT9T1HeC68KY9JislYR8kmtEAXfIIu+yewHCVBdmhzxuRmIwCy4FmpNPyvj8+ukG0L6ymT7PpvUTjU2WrKDY/ZQR048L1qLHuiqqkB/hf36u8xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oaq4p/JEmzfVDFnD7rtzfQFzpD3VLGvFyfswRYQ8uYo=;
 b=XUH2z8KgtzISaOiHWiTH7/TxiJkQ2T/mEHbsxsFWTulAVoZEEyzYHAv2MsFJEaD2FEODgVZex2jjjQah3amzqCKJCDJFYXS/xKUlTnJirV8aXGiRYExTvgSGXM6zDf3srCBj5rsTEj28pe4nyTJh02gBZ5AmVI/AQ+dur1EpoFkWeYTcZovXOsIPaJ0I1H56RYeTJhQTlLZzWkZafXlON0DeZzxPjoQsavNkdZ/J3JE/0XrK7TBcyKdQ08wsTghxztdMfhyRJPkDhVgUC9L/2ou+l6OyHJ0xj7yx5ixrwB0lNLFeCTjWshi1dayDch3KzBzFsHvEieFeHJQYbFeOOw==
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=abaco.com;
Received: from BL3PR16MB4572.namprd16.prod.outlook.com (2603:10b6:208:34b::23)
 by BL3PR16MB4353.namprd16.prod.outlook.com (2603:10b6:208:350::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Wed, 28 Jul
 2021 12:47:13 +0000
Received: from BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814]) by BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814%9]) with mapi id 15.20.4373.020; Wed, 28 Jul 2021
 12:47:13 +0000
From: Renaud Barbier <renaud.barbier@abaco.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@abaco.com>
Date: Wed, 28 Jul 2021 13:47:05 +0100
Message-Id: <1627476428-16318-2-git-send-email-renaud.barbier@abaco.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1627476428-16318-1-git-send-email-renaud.barbier@abaco.com>
References: <1627476428-16318-1-git-send-email-renaud.barbier@abaco.com>
X-OriginalArrivalTime: 28 Jul 2021 12:47:11.0370 (UTC)
 FILETIME=[AEF726A0:01D783AE]
X-ClientProxiedBy: BL1P223CA0018.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:208:2c4::23) To BL3PR16MB4572.namprd16.prod.outlook.com
 (2603:10b6:208:34b::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from TOWSMTP.abaco.local (205.182.146.17) by
 BL1P223CA0018.NAMP223.PROD.OUTLOOK.COM (2603:10b6:208:2c4::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4373.18 via Frontend Transport; Wed, 28 Jul 2021 12:47:13 +0000
Received: from selma.abaco.local ([10.1.177.4]) by TOWSMTP.abaco.local with
 Microsoft SMTPSVC(8.5.9600.16384); Wed, 28 Jul 2021 13:47:11 +0100
Received: from owcbuild.abaco.local (owcbuild.abaco.local [10.1.177.12])	by
 selma.abaco.local (Postfix) with ESMTP id 3BF8FE222F;
 Wed, 28 Jul 2021 13:47:11 +0100 (BST)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7865d973-eeeb-41d5-5f31-08d951c5d2a8
X-MS-TrafficTypeDiagnostic: BL3PR16MB4353:
X-Microsoft-Antispam-PRVS: <BL3PR16MB4353332034D118CCA8ACBA7B91EA9@BL3PR16MB4353.namprd16.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7EKy1cKLcIUDCoZpA5e2c+/vEqBhD6c9qZkgKRP4cjmlT3rsxYXM1cfjQTKX6q9JeurvlWyBJrPXBrPnPgKul0b3BkrlOtY71vfGm/uJq16NShnwQnwcPVeIqwwlzsunKC+ZN+0dt2feuoiyrbD4XYY8/uVp9HO3CmphlPIiB3csfFpWuSEBGh5oBvkLEIbzaY2YCPG861zJYFNeXz22jbGrNl/BEUSJrrobDa0NFUbOvIe2mXEA4pvfpiesTaQJmScN0TuOS+axpfhaZRi5PSarI/edTpITPatMZgz2WJJBLAYEJEgna2Kczbk6bGwPV8DZIjATrhFTIGnSU/CME699CyZI0zoG7gQBGfxj0thDaXKQPNBYhDSAZxNTK3W2PHphYEWtvBbTE5/jhoU9ZMugDLWiLjTuSeMZ4n/6UEJWaUl/hCy4Xf2ySC0QjdY+p8R6itH5xQ9U+GoaG68LdRZO6URCsKF4WCqV1hTu0gkOVLM9mgtlymfh1Dpk7hNVciYKvU4/u4ZJTFQhkWzWIz4X5T+fMrNRFyvBIeQfvD2BAZvTpIDOqSbTpBEBLD9L9L76KALYLqDviXYGxdJRAFsW8mqei2Lg4P3dQK3UCs02FT2HUoJ70ogmn0X6RolO6nLYhdEy7k/AGI2N53MLmz3tAKGfuUWzHVxSeA9zAwvSJkt+/aeP21Ei4NlivyOGUAyE02ExmNqBT6+BKHRxrA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR16MB4572.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(39840400004)(376002)(346002)(366004)(478600001)(86362001)(38100700002)(107886003)(2616005)(66556008)(6266002)(8936002)(66476007)(38350700002)(44832011)(6666004)(8676002)(5660300002)(6916009)(316002)(36756003)(186003)(83380400001)(26005)(66946007)(4326008)(2906002)(52116002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qZmnMnfu/otPRt0L+FasCfWs3xcTiFXFKcX1jF1h5D03x+5FLGZXjc/qnmIi?=
 =?us-ascii?Q?LZTVUf6QomZccTyuv3K/J3pkqir2jlfRQhDYqctam/xwgIsCdf1FELjbXsfe?=
 =?us-ascii?Q?OnMS+fjdM07P9z2BndhJIV03xrtHGQOK834iG2jYusEg3pE5G16unB8zBtNF?=
 =?us-ascii?Q?fh3VvWzjibm1BHXWfVY9XO2snDT3VS/HQTetmq60FBdONTjVO5mLjxr2lti/?=
 =?us-ascii?Q?9XcPIjW7uUDQ3QHlNzJ+yWN+4lM7Jd++Ad2xOVSCwqo/L5VFtE+ZIFduQpKQ?=
 =?us-ascii?Q?8yizNaycqYoGbCDBPl8O32Om7hVrSaTNziXqdZTxsBrc+uL33RQOKvTdMUTd?=
 =?us-ascii?Q?qOUyaLQCMnyc5zFhNeMX7FdqyCRo0Xex5VjKndwxOsIYp1SoeRutawCSRRWd?=
 =?us-ascii?Q?td5Yb6pedih2X7TDQgTZWuNmxykubho9RAl1cBbkgF0jwxygJjdEG46Z2Aye?=
 =?us-ascii?Q?BflIK/6/7CBok3a/nPQmKiG1JoqBUBjwvBlVe4H8nVXvdJFXxQXGxkDNrzgh?=
 =?us-ascii?Q?tme3B13a/orwqhDmjSG56fHWGTZ1KGN5ScldwtUX/pL11iZhgCxUf8mzD+mf?=
 =?us-ascii?Q?dZSM4/50kAOcHN4lOXECRS/3uBE6b8fqGQNMdHohLxYfARFP5aI+Qqdm+NM8?=
 =?us-ascii?Q?8grp0UZvYv93NegVLuR9E4zwD7e/3+NEYT2BWrQzkREzG/RQlPQLIeXxqjgn?=
 =?us-ascii?Q?NOLgTQyXVMn5eTXRS6L+a+tM8ktEJbWzOpqN06kfmvcnUQinBwRpMk/alZ3W?=
 =?us-ascii?Q?nyi29oj3WZwVrXg90VkMwxndTJupugjViqJA80LBvbrHyCcXUo+X7vQW1qj+?=
 =?us-ascii?Q?vWA4iAHwV6Q62QQa6g1fPEci8l3rB1A0n52ulJmw5emhPAS3vziz24VlT+1c?=
 =?us-ascii?Q?C4DuX6n2gRoJe1/63exyaSsvtXkoNk+7Y81E45gel+v0EdUFQTd0P99qHIwh?=
 =?us-ascii?Q?11QDeoxL6uoSB1TujFF1TcUND300wBSiqFhlwJswP7mlvTE+Wm2UxuWElqox?=
 =?us-ascii?Q?nuINopDYv0QBJ2lngbQcuuFDFj7YDg2fbSrFYDmgW8QBAxd2aAVCsVhCx94o?=
 =?us-ascii?Q?1opTRaX0J19Nq387nkbVNN5KuDLiydFHTJGDHt6Wo8Rp1U8GPfHrUazNB4BC?=
 =?us-ascii?Q?VmvumbL3Lm1wR9ZMJ/jvoE1uX4ZtjYtotuOyp9KK3CtigigrL2/DGuwH59n/?=
 =?us-ascii?Q?09lSY4V+HMPw/QfdXtX7gP0QDqm44J3ohJXP8W9eXjVX08V0sjhZ5YB2pAx3?=
 =?us-ascii?Q?Sja+Rd55qCgs42NDQirG6ICofW7pRjMlnm1JVQT4yzeuVFNM8ldAHxUqGxDQ?=
 =?us-ascii?Q?5QoT7VMw2KKuRzO0fMm0smdukL8/QrHSiqyIq+MQTk8IxQ=3D=3D?=
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7865d973-eeeb-41d5-5f31-08d951c5d2a8
X-MS-Exchange-CrossTenant-AuthSource: BL3PR16MB4572.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 12:47:13.6055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s8JIjrKrSScrJ9rt453LTAWzToigP2EyvDkitKnqRStRvcRbldnbWjaUqMIIgWFBsB50DAEAzKQONHBowgqIjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR16MB4353
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_054718_613710_6E4D55D4 
X-CRM114-Status: GOOD (  10.91  )
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
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] ARM: atomic.h: add 64-bit counter support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In preparation for the introduction of the FSL IFC nand driver
for the layerscape CPU, add 64-bit counter support.

Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
---
 include/asm-generic/atomic-long.h |  3 +-
 include/asm-generic/atomic.h      | 49 +++++++++++++++++++++++++++++++
 2 files changed, 51 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/atomic-long.h b/include/asm-generic/atomic-long.h
index 322d510f38..dbb503e758 100644
--- a/include/asm-generic/atomic-long.h
+++ b/include/asm-generic/atomic-long.h
@@ -65,7 +65,7 @@ static inline void atomic_long_sub(long i, atomic_long_t *l)
 
 	atomic64_sub(i, v);
 }
-
+#if 0
 static inline int atomic_long_sub_and_test(long i, atomic_long_t *l)
 {
 	atomic64_t *v = (atomic64_t *)l;
@@ -128,6 +128,7 @@ static inline long atomic_long_add_unless(atomic_long_t *l, long a, long u)
 
 	return (long)atomic64_add_unless(v, a, u);
 }
+#endif
 
 #define atomic_long_inc_not_zero(l) atomic64_inc_not_zero((atomic64_t *)(l))
 
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

