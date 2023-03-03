Delivery-date: Fri, 03 Mar 2023 10:25:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1f3-007NeX-4J
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:25:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1f2-0001jq-H1
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:25:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MMpS9IuXsP1p9CmZFMObQsPdQHSf3ZUtVxQxcGO10ic=; b=wtkMQ8AbgJ9tyI4r4Wb8eDF1cH
	48NcGLl/V01jims6xMvszSeJQ975FAmpoRnnS63Hr39dyWzyZuKY3uqLFVZN7acQdH/MQM4TDGECU
	oq9fnGLRB9H+QEiSSPZM+EtSjeJes0yg5fEAUjQRqzaM0l7+AnQ6G2jPUCaVXJ30P9G2mwiEJLHp8
	ZfLPwVsDU3q4au0z2gqdUvVdCx6dsz8nh23qjg/P8bAsZz9ym6oYWsEFEEtdVy6hnWPDFtVhJh0sq
	jXyKlOA9a2bk0bp+SWibNdRx9uNLNfGdFW/g92kAd7nacF2/Qpnm4bJYFCvniDkMcBXUjPj0ozJV5
	JLrQ+OCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1dY-005fgZ-3k; Fri, 03 Mar 2023 09:23:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bs-005eVQ-9i
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:21:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=MMpS9IuXsP1p9CmZFMObQsPdQHSf3ZUtVxQxcGO10ic=; b=qExTcRI+KdRSQc1IgwPjbe8AJd
	23Rd94tgPIQDGe4tA87F4On8Yx5TIxfIMnSXM6lpLVLgt4vlSuX26oDKabtGdINIbR+6DCK6DPfte
	1KhhcdQa7VLPxfacUhcxcqBmbR64H4c4IAYvLeQWLrnlGYV8kT4XXhLHP8CSmbUbIVlxsqEMevFE5
	jYhD1dN1DDZ9lQwU4UxQSn37YJLU60WcSKdcHQ/qLqPQGpJEmEdYZR5hkEQtenTTzvWpVg2HNIHTH
	vL/XddQ+o68rAKmB8L517JwQrzUNb8UfRzHtEYBz73k8iXPEWxk0UkrZKKdMbHeM7Sz33QlwmkNIz
	7QuQjCcg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bn-0031N6-Bc
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bk-0000IS-1U; Fri, 03 Mar 2023 10:21:44 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bj-001Wk1-E1; Fri, 03 Mar 2023 10:21:43 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2j7-To; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:14 +0100
Message-Id: <20230303092131.3063587-34-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092147_985431_1DFA4606 
X-CRM114-Status: GOOD (  13.23  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 33/50] ARM: omap: Make multi-arch safe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make sure the initcalls do not execute on foreign SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/omap_generic.c | 8 +++++++-
 arch/arm/mach-omap/xload.c        | 3 +++
 include/mach/omap/generic.h       | 6 ++++++
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 59c1ce7666..36f2e80af2 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -113,6 +113,9 @@ static struct image_handler omap_barebox_handler = {
 
 static int omap_bootm_barebox(void)
 {
+	if (!cpu_is_omap())
+		return 0;
+
 	return register_image_handler(&omap_barebox_handler);
 }
 device_initcall(omap_bootm_barebox);
@@ -141,6 +144,9 @@ static int omap_env_init(void)
 	struct cdev *cdev;
 	const char *rootpath;
 
+	if (!cpu_is_omap())
+		return 0;
+
 	if (bootsource_get() != BOOTSOURCE_MMC)
 		return 0;
 
@@ -203,7 +209,7 @@ static int omap_init(void)
 	if (root) {
 		__omap_cpu_type = omap_soc_from_dt();
 		if (!__omap_cpu_type)
-			hang();
+			return 0;
 	}
 
 	if (cpu_is_omap3())
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index e61e2ce652..e632b53788 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -355,6 +355,9 @@ int omap_set_barebox_part(struct omap_barebox_part *part)
 
 static int omap_set_xload(void)
 {
+	if (!cpu_is_omap())
+		return 0;
+
 	barebox_main = omap_xload;
 
 	return 0;
diff --git a/include/mach/omap/generic.h b/include/mach/omap/generic.h
index 8b2b7a4f0c..cb54b88211 100644
--- a/include/mach/omap/generic.h
+++ b/include/mach/omap/generic.h
@@ -54,6 +54,12 @@ extern unsigned int __omap_cpu_type;
 # define cpu_is_am33xx()	(0)
 #endif
 
+#ifdef omap_cpu_type
+#define cpu_is_omap()			(omap_cpu_type > 0)
+#else
+#define cpu_is_omap()			(0)
+#endif
+
 struct omap_barebox_part {
 	unsigned int nand_offset;
 	unsigned int nand_size;
-- 
2.30.2



