Delivery-date: Fri, 28 Nov 2025 13:56:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOy1l-005mu2-1O
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 13:56:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOy1k-0004DX-Ln
	for lore@pengutronix.de; Fri, 28 Nov 2025 13:56:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UYL98gGTYv/o910qHpjfclNIa2V9AxJPVym6XgYjGFs=; b=IyJF/w5BHc3I6s0MTUdTGDKXy2
	zu4KInhYYi3feW/sHZj3Pp8kGzb6MdsGQDvI6xpRWQU7nZisGY4ESu5Y2e96Dc3ZVizpYvtIbTo0P
	gVeFjbmRESWVBBl+C/SvtlqqcWvUWwWCuCQ3nFGIpYw1REbfh8obrxqFpCTDKCmfSALkkECQrCRJ9
	YHfw81jZQvJ1kWDqHFPeyqx3V9IadDtPER2hwYkd6fPMCJKQgImYMdsNUzl7QFsxzcXmj2rW+7JGR
	cqjevGEq8TDrDSyRqFojypVmq2Wje/65pGlkrbMjBbblvrI1Lb+64JOPxkrfzprgwti6ug4hmvkSZ
	LEH8avCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOy1M-00000000Re6-2sY1;
	Fri, 28 Nov 2025 12:56:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOy1L-00000000Rcw-0C2F
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:56:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOy1J-00042h-EJ; Fri, 28 Nov 2025 13:56:17 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOy1J-002xLc-0m;
	Fri, 28 Nov 2025 13:56:17 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOy1J-00000002TQM-0Nk4;
	Fri, 28 Nov 2025 13:56:17 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 13:50:02 +0100
Message-ID: <20251128125616.136559-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_045619_110394_A3E90C10 
X-CRM114-Status: UNSURE (   8.68  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] printf: define printk/no_printk in terms of prints
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We will later move printk into its own header while giving it more
Linux-like semantics. Prepare for that by defining no_printf, so users
across the tree can make use of it without including <linux/printk.h>.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/printf.h | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/include/printf.h b/include/printf.h
index d111afacb63e..58793bc067dc 100644
--- a/include/printf.h
+++ b/include/printf.h
@@ -30,19 +30,20 @@ static inline __printf(1, 2) int printf(const char *fmt, ...)
 void __noreturn panic(const char *fmt, ...) __printf(1, 2);
 void __noreturn panic_no_stacktrace(const char *fmt, ...) __printf(1, 2);
 
-#define printk			printf
-
 /*
- * Dummy printk for disabled debugging statements to use whilst maintaining
+ * Dummy printf for disabled debugging statements to use whilst maintaining
  * gcc's format checking.
  */
-#define no_printk(fmt, ...)				\
+#define no_printf(fmt, ...)				\
 ({							\
 	if (0)						\
 		printk(fmt, ##__VA_ARGS__);		\
 	0;						\
 })
 
+#define printk			printf
+#define no_printk		no_printf
+
 enum {
 	DUMP_PREFIX_NONE,
 	DUMP_PREFIX_ADDRESS,
-- 
2.47.3



