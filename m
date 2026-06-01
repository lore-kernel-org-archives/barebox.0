Delivery-date: Mon, 01 Jun 2026 14:31:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wU1nY-001ECq-1U
	for lore@lore.pengutronix.de;
	Mon, 01 Jun 2026 14:31:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wU1nX-0006UA-PP
	for lore@pengutronix.de; Mon, 01 Jun 2026 14:31:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lmWNGFQbuRG26RzVxjgz1h2lZ3Dlp8l12WQF/DNJ5yo=; b=lBs1vIh8xW7P16/7wwaHeGlHUB
	5wq282AEhwQZz5ukf+vZJZrqGDQ5t6g5ybu2bQ1vEtv+6w0bweDWSJV0sQfBx4LJKi2B/SX3aTckW
	WKQudw4EfNSeYSlWPIk7ilYRd3PhfeAcu8jUYy9s/FyIBL/Ghbtiyqz3Aow8WOPoTDmQcQuoP/WpA
	X9vpG++CQf+jemtD3riFWEVi3VqLaXq9IoLg1KmP2dZBjWfVkseYrFJ6ipiIC6WNDG4R3lo7xqJOQ
	olz+AVmi90VRjhtGgFRwy0rzQFCdAUudTuchemJD1lmfASPlnMBT+zcKy03FOIPbXSTZDQA2Br3Vn
	UA1GuJIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU1mM-0000000B8Ni-3n6M;
	Mon, 01 Jun 2026 12:30:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU1mL-0000000B8Ms-0pqf
	for barebox@bombadil.infradead.org;
	Mon, 01 Jun 2026 12:30:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=lmWNGFQbuRG26RzVxjgz1h2lZ3Dlp8l12WQF/DNJ5yo=; b=MoZblsTgwZMT3zAXHUeXKjSPj1
	ECgiMriB1T1R/jabNEDZL734FIGe3/oSDLNkrx+bd+Y5I6UqiFnSO27NAN0xKxdX1ocUEEofZ868a
	13IBYIwfD78ecKwZJCRJS9+w7CkrXCiNKiEpVtcxDAH4IDeGSS0Rt50BzL+saPo3qm5l4Wx1K0T7m
	f9I9Vah4w0QFzMVkYz/sxQPqfWyqEGp7ZebBxT7yqsrugPBjf4BHO1TZXwMplMWKr70DMxHSNgLA8
	G1ULxTlvElO5knY0dPzUBZkDfJGVc/vPqszDuDZj+QXGoI1dbvl0/V2fbe1Qd0HIcmI+oXjUOvulv
	tYM10PjQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU1mH-00000006gt9-3JcP
	for barebox@lists.infradead.org;
	Mon, 01 Jun 2026 12:30:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wU1mE-0006JA-Ui; Mon, 01 Jun 2026 14:29:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wU1mE-000a6C-2q;
	Mon, 01 Jun 2026 14:29:54 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wU1mE-00000002PJv-3OnD;
	Mon, 01 Jun 2026 14:29:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 01 Jun 2026 14:29:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260601-debug-ll-conflicts-v1-3-bf17f9f0e23a@pengutronix.de>
References: <20260601-debug-ll-conflicts-v1-0-bf17f9f0e23a@pengutronix.de>
In-Reply-To: <20260601-debug-ll-conflicts-v1-0-bf17f9f0e23a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780316994; l=1573;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=1BoPRaxNuybeTIMrfI+0qE2Ly42cjcw+ppMmCYw/l/k=;
 b=YFqHVz8Xa9Ag0YYhgg/l2QTnIuPiKaALxYbBn/+1KB+H+W4Ql0wGACaoc/EBdfDk+cJc72SfN
 jMjdo2mtoPKCrpvPNOMQk9DGybsJ4eOLyXk/Yq3l7tKq1uTbzLYvCHx
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_132958_361193_43BB95B7 
X-CRM114-Status: GOOD (  10.76  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] debug_ll: pl011: define PUTC_LL only when requested
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pl011.h is mainly included from include/debug_ll.h to provide the
PUTC_LL() implementation. It is also included by some boards to get
debug_ll_pl011_putc(). If a board includes it and at the same time
DEBUG_LL is enabled for another board we end up with conflicting
definitions of PUTC_LL(). To prevent this add a #define DEFINE_PUTC_LL
to include/debug_ll.h. A debug_ll.h file now may only provide PUTC_LL()
when this define is set.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/debug_ll.h       | 2 ++
 include/debug_ll/pl011.h | 6 +-----
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/include/debug_ll.h b/include/debug_ll.h
index 1410783b73..4cab96fbc4 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -19,7 +19,9 @@
  * this initialization. Depending on the PUTC_LL implementation the board might
  * also hang in PUTC_LL without proper initialization.
  */
+#define DEFINE_PUTC_LL
 #include <asm/debug_ll.h>
+#undef DEFINE_PUTC_LL
 #endif
 
 #if defined (CONFIG_DEBUG_LL)
diff --git a/include/debug_ll/pl011.h b/include/debug_ll/pl011.h
index aeec456f20..bded6720aa 100644
--- a/include/debug_ll/pl011.h
+++ b/include/debug_ll/pl011.h
@@ -16,11 +16,7 @@ static inline void debug_ll_pl011_putc(void __iomem *base, int c)
 	writel(c, base + UART01x_DR);
 }
 
-#ifdef CONFIG_DEBUG_LL
-
-#ifndef DEBUG_LL_UART_ADDR
-#error DEBUG_LL_UART_ADDR is undefined!
-#endif
+#if defined(CONFIG_DEBUG_LL) && defined(DEFINE_PUTC_LL)
 
 static inline void PUTC_LL(char c)
 {

-- 
2.47.3



