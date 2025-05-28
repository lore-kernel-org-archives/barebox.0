Delivery-date: Wed, 28 May 2025 13:31:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKF0M-001AXe-22
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 13:31:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKF0M-00027J-1S
	for lore@pengutronix.de; Wed, 28 May 2025 13:31:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GSclXoFSu81Qkm3NaIk+wJqWTatrQ0pX8DdTrPLSk2Q=; b=vMBMQbaYQoApOckKc+lnVl26AX
	oo1NC2oMIkq0BelCTWy8hy8Fz00M2JVRHaFRkQtOkEOtVdoiJNUeTNDLQWQTOJCRJbbpMfGbpoTtv
	wdpEYfkgMF6AZzF6GlSjG4n45FfNYNxZ/4b1datiwphT/om4Yr1v8MKExfd8UFFheOWWYxu1h0C/j
	AzR194AUGIgVYGda4H4vUbc5yIwdTZRxDBjCLrujJiiXjMhddtPkIsU8XUgMwlzCZyvlM0YEpj3Z/
	MS5kOVyfOQ0odKzbSaWUjZdbilEZKOTiyt887SAdJaaM/FAe6xlTTsCjkaWKmuLsv1lK5xqLmR17n
	djA01z6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEzp-0000000CyvZ-3oaJ;
	Wed, 28 May 2025 11:30:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEzk-0000000Cyur-3kEx
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:30:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uKEzi-0001gT-Tk; Wed, 28 May 2025 13:30:50 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 28 May 2025 13:30:50 +0200
Message-Id: <20250528113050.827935-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528113050.827935-1-a.fatoum@barebox.org>
References: <20250528113050.827935-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_043052_934843_5045CD6D 
X-CRM114-Status: GOOD (  11.06  )
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
X-Spam-Status: No, score=-7.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] compiler: check for __SANITIZE_ADDRESS__ instead of CONFIG_KASAN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current Linux definition for __no_kasan_or_inline adds a notrace
attribute and checks __SANITIZE_ADDRESS__ instead of CONFIG_KASAN.

Checking __SANITIZE_ADDRESS__ is better because it also applies to
CONFIG_ASAN, so import the Linux version into <linux/compiler_types.h>,
which is the same location it's defined at in Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/compiler.h       | 12 ------------
 include/linux/compiler_types.h | 20 ++++++++++++++++++++
 2 files changed, 20 insertions(+), 12 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index e7dc9ba0a590..4953121711ba 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -168,18 +168,6 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 
 #include <linux/types.h>
 
-#ifdef CONFIG_KASAN
-/*
- * We can't declare function 'inline' because __no_sanitize_address confilcts
- * with inlining. Attempt to inline it may cause a build failure.
- * 	https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67368
- * '__maybe_unused' allows us to avoid defined-but-not-used warnings.
- */
-# define __no_kasan_or_inline __no_sanitize_address __maybe_unused
-#else
-# define __no_kasan_or_inline __always_inline
-#endif
-
 #endif /* __KERNEL__ */
 
 /**
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index cd618e7dece1..87ab117aca13 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -378,6 +378,26 @@ struct ftrace_likely_data {
  */
 #define noinline_for_stack noinline
 
+/*
+ * Sanitizer helper attributes: Because using __always_inline and
+ * __no_sanitize_* conflict, provide helper attributes that will either expand
+ * to __no_sanitize_* in compilation units where instrumentation is enabled
+ * (__SANITIZE_*__), or __always_inline in compilation units without
+ * instrumentation (__SANITIZE_*__ undefined).
+ */
+#ifdef __SANITIZE_ADDRESS__
+/*
+ * We can't declare function 'inline' because __no_sanitize_address conflicts
+ * with inlining. Attempt to inline it may cause a build failure.
+ *     https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67368
+ * '__maybe_unused' allows us to avoid defined-but-not-used warnings.
+ */
+# define __no_kasan_or_inline __no_sanitize_address notrace __maybe_unused
+# define __no_sanitize_or_inline __no_kasan_or_inline
+#else
+# define __no_kasan_or_inline __always_inline
+#endif
+
 #ifndef __no_sanitize_or_inline
 #define __no_sanitize_or_inline __always_inline
 #endif
-- 
2.39.5



