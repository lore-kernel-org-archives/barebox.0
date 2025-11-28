Delivery-date: Fri, 28 Nov 2025 13:56:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOy1n-005muO-0V
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 13:56:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOy1m-0004EI-Iu
	for lore@pengutronix.de; Fri, 28 Nov 2025 13:56:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U3Oo/OlYhiv3yxJOY0uXCA+grb5HiQI2X+rq+F/t/a0=; b=NeH+dCEUeJSUetFlb2MdZ8abkk
	BQjm3fqB3gpe7ovJCO7jGlB8TJrOwLZXBQd0O0MlDZWlJhUPQEN1sfiUIUyssYWv80OsuKTDHlPyC
	ue6YgZ+yLCGUbeKi050EmUbqYCfRJ10BghJ7kgtlbs9fMQXzHC08z4ZwvcgBA3vuqHjN+SCoDKfIX
	74zl+0rdtafrpsp8N6OKaRIgOwKldi9p6hpL89BPHpqpB6boX8/vFt6DJ5Zu7+9+JAThCLAcLfpKX
	jtM9mZneOAhC2ge5gDsmhZQzC9gBhTnKFno9EfgMzGsp2KJpzvMQYpQNs2hdVn1bxc9UBLOV11vBu
	bgx5wU8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOy1P-00000000Req-482A;
	Fri, 28 Nov 2025 12:56:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOy1L-00000000Rcu-0AAy
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:56:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOy1J-00042i-IG
	for barebox@lists.infradead.org; Fri, 28 Nov 2025 13:56:17 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOy1J-002xLf-1A
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 13:56:17 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOy1J-00000002TQM-0am7
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 13:56:17 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 13:50:03 +0100
Message-ID: <20251128125616.136559-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128125616.136559-1-a.fatoum@pengutronix.de>
References: <20251128125616.136559-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_045619_112773_503C504E 
X-CRM114-Status: GOOD (  15.15  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] bug: add support for CONFIG_DEBUG_BUGVERBOSE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

This can be used to remove panic strings from barebox, when there is no
way to look at them anyway.

Also add a CONFIG_BUG symbol as it will make it easier to port kernel
code that checks for the symbol without having to patch it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/Kconfig            | 11 +++++++++++
 include/asm-generic/bug.h | 26 +++++++++++++++++++-------
 2 files changed, 30 insertions(+), 7 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 7c9b28543ffa..7442e24026e0 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -902,6 +902,17 @@ config PBL_CONSOLE
 	  must be running at the address it's linked at and bss must
 	  be cleared. On ARM that would be after setup_c().
 
+config BUG
+	def_bool y
+
+config DEBUG_BUGVERBOSE
+	bool "Verbose BUG() reporting"
+	depends on BUG
+	default y
+	help
+	  Say Y here to make WARN_ONCE() and BUG() panics output the file name
+	  and line number of the BUG/WARN call as well as the EIP and oops trace.
+
 source "common/ratp/Kconfig"
 
 config PARTITION
diff --git a/include/asm-generic/bug.h b/include/asm-generic/bug.h
index 389327adfc5d..ca75b1c7646e 100644
--- a/include/asm-generic/bug.h
+++ b/include/asm-generic/bug.h
@@ -6,15 +6,27 @@
 #include <linux/compiler.h>
 #include <printf.h>
 
-#define BUG() do { \
-	printf("BUG: failure at %s:%d/%s()!\n", __FILE__, __LINE__, __FUNCTION__); \
-	panic("BUG!"); \
+#ifdef CONFIG_DEBUG_BUGVERBOSE
+#define __bug_printf printf
+#define __bug_panic panic
+#define __bug_dump_stack dump_stack
+#else
+#define __bug_printf no_printf
+#define __bug_panic panic_no_stacktrace
+#define __bug_dump_stack (void)0
+#endif
+
+#define BUG() do {						\
+	__bug_printf("BUG: failure at %s:%d/%s()!\n",		\
+		     __FILE__, __LINE__, __FUNCTION__);		\
+	__bug_panic("BUG!"); \
 } while (0)
 #define BUG_ON(condition) do { if (unlikely((condition)!=0)) BUG(); } while(0)
 
 
-#define __WARN() do { 								\
-	printf("WARNING: at %s:%d/%s()!\n", __FILE__, __LINE__, __FUNCTION__);	\
+#define __WARN() do { 							\
+	__bug_printf("WARNING: at %s:%d/%s()!\n",			\
+		     __FILE__, __LINE__, __FUNCTION__);			\
 } while (0)
 
 #ifndef WARN_ON
@@ -31,7 +43,7 @@
 	int __ret_warn_on = !!(condition);				\
 	if (unlikely(__ret_warn_on)) {					\
 		__WARN();						\
-		printf("WARNING: " format);				\
+		__bug_printf("WARNING: " format);			\
 	}								\
 	unlikely(__ret_warn_on);					\
 })
@@ -44,7 +56,7 @@
 	if (unlikely(__ret_warn_once)) {	\
 		if (WARN(!__warned, format)) {	\
 			__warned = 1;		\
-			dump_stack();		\
+			__bug_dump_stack();	\
 		}				\
 	}					\
 	unlikely(__ret_warn_once);		\
-- 
2.47.3



