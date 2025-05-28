Delivery-date: Wed, 28 May 2025 13:31:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKF0M-001AXO-11
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 13:31:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKF0L-00027G-OV
	for lore@pengutronix.de; Wed, 28 May 2025 13:31:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zmgIyCNUqFMFZ47BiFbeaEAuFpVRREcqgWO+Bhv9l6I=; b=PP7P6/XntYKSw3KljkQdbO0A5N
	9N1ZVPONRcWVdWIufKEA1395ZmdYYkxO7zAlxpscjc0mO8AI2Qeo2Vx687k0snSFio8dfEJNa2yR7
	8HQ2RnoRzBTXHOZGXgx0eHQYCTKNghoEGpx2EwqsfTjXN0454u560hfidmu/G9KOUeitZWrADjewB
	sqxMBYGtpXJrFCG99jdx6WQ4LxeDes/7Mc1Zwkh8ZOMIkSaZpJ6H8xnjGCEZS0NqgPdts5QzcwdpK
	zRzVUnnWaIgPek+IzwUSXnEdceQYZMP09avv8Pabda4FrCTes3YZQ7E/gMZdZgzIKj4rn4aygsYBK
	gEFmBGWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEzq-0000000Cyvs-1syb;
	Wed, 28 May 2025 11:30:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEzk-0000000Cyus-3kXg
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:30:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uKEzi-0001gT-NA; Wed, 28 May 2025 13:30:50 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 28 May 2025 13:30:49 +0200
Message-Id: <20250528113050.827935-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_043052_934949_08EBB562 
X-CRM114-Status: UNSURE (   7.16  )
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
Subject: [PATCH 1/2] fixup! arch: sync READ_ONCE/WRITE_ONCE with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The __no_kasan_or_inline attribute is already defined in <linux/compiler.h>.
Drop it from the header here and do the replacement in its own commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/compiler_types.h | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 87ab117aca13..cd618e7dece1 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -378,26 +378,6 @@ struct ftrace_likely_data {
  */
 #define noinline_for_stack noinline
 
-/*
- * Sanitizer helper attributes: Because using __always_inline and
- * __no_sanitize_* conflict, provide helper attributes that will either expand
- * to __no_sanitize_* in compilation units where instrumentation is enabled
- * (__SANITIZE_*__), or __always_inline in compilation units without
- * instrumentation (__SANITIZE_*__ undefined).
- */
-#ifdef __SANITIZE_ADDRESS__
-/*
- * We can't declare function 'inline' because __no_sanitize_address conflicts
- * with inlining. Attempt to inline it may cause a build failure.
- *     https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67368
- * '__maybe_unused' allows us to avoid defined-but-not-used warnings.
- */
-# define __no_kasan_or_inline __no_sanitize_address notrace __maybe_unused
-# define __no_sanitize_or_inline __no_kasan_or_inline
-#else
-# define __no_kasan_or_inline __always_inline
-#endif
-
 #ifndef __no_sanitize_or_inline
 #define __no_sanitize_or_inline __always_inline
 #endif
-- 
2.39.5



