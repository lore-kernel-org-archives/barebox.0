Delivery-date: Fri, 13 Mar 2026 14:34:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eh-000DOI-0Z
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:19 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eS-0000Cu-6w
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wWh1H81uHxtYOZVc9kUbP1dzgUh/bCuS8X6uNWdtrWI=; b=xSvBzXb1z10JGUQ9DZ1J7kGhxf
	ty1igaG9m6Ww2UgO+sl/TKNArdHnucxxhzvKkqHQHqh1pBe5ZmRTc7xXfM0ANyfCVB0F2Hl0Z0i7n
	Yl5VR5pAiN0knqa/YyCCQ2BRRXawJdrXo438umpYBsXfV11KSBcnS+gGhW2d3KdHYEfmmHU49QBbh
	yn68tGsJV28xEbbKpVWRfmed5yjSqpDtB0KBImnV3oEZTt7cMxGuB/GKPdpIS+j8KfamvCHikZUnX
	mK2dM8rfU3drjimXhlUx7ibKSde1L8pCH/LZElcW3rxc192Y0Htafd8iZw+/K8Hb1GFpfq1Oq2/+E
	HAz71uuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dF-00000000FjV-2oct;
	Fri, 13 Mar 2026 13:32:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d8-00000000FWm-003p
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=wWh1H81uHxtYOZVc9kUbP1dzgUh/bCuS8X6uNWdtrWI=; b=eP/NJpm6ptIgi3OfW1hOWW5TUI
	W9gVo4ZZ4TUwQzgCdKDEceTUmWHSUtrrmfKNkq5wkBZPlyuBNkJR/bSVm68osGXlYJjbQ6doRrI4u
	60ZW4iUu7rdWk2Kid7wo1SzLyQ4V5mCl71RL0xgMXt7qRJQ1nVghzdyH2dRn4bDegHBH7iTmMpOUa
	xvdGClq/tofZTiub5uXnYjObnNXkEtb/tibyeZnVpPJFNm0gVLgKgCmBOGij80epqTvIYeeMOqZ3C
	Mt+w3C1MEIuiKyBQIowLYafyVrUSHhv15PcJ8MJpxnIx0TJZgWBEJ+uJP/bNYLLGXUgdqcOs9zT+f
	Mas+zqDw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d2-0000000D9wI-1e2s
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0006t3-0t; Fri, 13 Mar 2026 14:32:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0005UC-2h;
	Fri, 13 Mar 2026 14:32:33 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-2vnl;
	Fri, 13 Mar 2026 14:26:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 13 Mar 2026 14:24:54 +0100
Message-ID: <20260313132631.2257573-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133236_479709_0CECF5E1 
X-CRM114-Status: GOOD (  12.59  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 10/58] bug: add support for CONFIG_DEBUG_BUGVERBOSE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

This can be used to remove panic strings from barebox, when there is no
way to look at them anyway.

Also add a CONFIG_BUG symbol as it will make it easier to port kernel
code that checks for the symbol without having to patch it.

(cherry picked from commit 32755105119edba33ec62b13217381610b04e4a8)

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20251128125616.136559-2-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig            | 11 +++++++++++
 include/asm-generic/bug.h | 26 +++++++++++++++++++-------
 2 files changed, 30 insertions(+), 7 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 3a2044585a3d..c01e53eef31d 100644
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



