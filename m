Delivery-date: Sat, 30 Oct 2021 16:19:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgpCM-0002XY-9e
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 16:19:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgpCL-0007yw-5t
	for lore@pengutronix.de; Sat, 30 Oct 2021 16:19:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgYn8BQ5v6osltRlV7QvtRJCiv8hnTSdgX0lTliFJtw=; b=H1tJoW8cdtREUh
	oJoQsLO8O7mWKFToMIBxKlgxL/gWo9uExdYTBnOgUlpN2y2r/BUP4qnRZc+vaf1EqRtIUdLmvfCNX
	W54hdLxCnWkJDpj6JpsqvO5tyBZx3ep/U3aPZSbt2xoB0pZ2mlUBM8gzGuIur/qeTB1g142mmvQrb
	pNyTl2Y9VLLnITaiCVonxUKWH0qYl6bLyfugv4lYDxidKP08U1Qy0VV2D5gh8/w6PaYMx8jaOB5IL
	7sEeQdIwVb3A6KB+IRjnU59riNQxDuElwXOebYujTU0lC5yVkz1VFZiNDTGxFn6r3oT+XAiZ/COV4
	PbwZUx0FZxqMWmgayo7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgpB8-00D8k7-9O; Sat, 30 Oct 2021 14:17:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgpB0-00D8hQ-AY
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 14:17:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgpAz-0007kV-4m; Sat, 30 Oct 2021 16:17:41 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgpAy-009GGm-LW; Sat, 30 Oct 2021 16:17:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 16:17:38 +0200
Message-Id: <20211030141739.2207431-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211030141739.2207431-1-a.fatoum@pengutronix.de>
References: <20211030141739.2207431-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_071742_396152_5359422A 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] include: <asm-generic/bug.h>: make self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

<asm-generic/bug.h> so far depended on a preceding <common.h> to get the
dump_stack() definition. Move dump_stack() to the new printk.h and drop
the remaining puts() use to make header self-contained.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/bug.h |  5 +++--
 include/common.h          |  9 ---------
 include/printk.h          | 10 ++++++++++
 3 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/include/asm-generic/bug.h b/include/asm-generic/bug.h
index 82b78261fc5d..6aa3eada0ec5 100644
--- a/include/asm-generic/bug.h
+++ b/include/asm-generic/bug.h
@@ -2,6 +2,8 @@
 #define _ASM_GENERIC_BUG_H
 
 #include <linux/compiler.h>
+#include <linux/kernel.h>
+#include <printk.h>
 
 #define BUG() do { \
 	printf("BUG: failure at %s:%d/%s()!\n", __FILE__, __LINE__, __FUNCTION__); \
@@ -28,8 +30,7 @@
 	int __ret_warn_on = !!(condition);				\
 	if (unlikely(__ret_warn_on)) {					\
 		__WARN();						\
-		puts("WARNING: ");					\
-		printf(format);						\
+		printf("WARNING: " format);				\
 	}								\
 	unlikely(__ret_warn_on);					\
 })
diff --git a/include/common.h b/include/common.h
index 083b76cfedc9..e37630243e73 100644
--- a/include/common.h
+++ b/include/common.h
@@ -62,15 +62,6 @@ void ctrlc_handled(void);
 static inline void ctrlc_handled(void) { }
 #endif
 
-#ifdef CONFIG_ARCH_HAS_STACK_DUMP
-void dump_stack(void);
-#else
-static inline void dump_stack(void)
-{
-	printf("no stack data available\n");
-}
-#endif
-
 int parse_area_spec(const char *str, loff_t *start, loff_t *size);
 
 /* Just like simple_strtoul(), but this one honors a K/M/G suffix */
diff --git a/include/printk.h b/include/printk.h
index 0915efbadd51..baf2cca20213 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -47,4 +47,14 @@ extern void print_hex_dump(const char *level, const char *prefix_str,
 			   int prefix_type, int rowsize, int groupsize,
 			   const void *buf, size_t len, bool ascii);
 
+#ifdef CONFIG_ARCH_HAS_STACK_DUMP
+void dump_stack(void);
+#else
+static inline void dump_stack(void)
+{
+	printf("no stack data available\n");
+}
+#endif
+
+
 #endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

