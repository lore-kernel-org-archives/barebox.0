Delivery-date: Mon, 12 Dec 2022 17:41:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p4lrt-001pkD-SP
	for lore@lore.pengutronix.de; Mon, 12 Dec 2022 17:41:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p4lrt-0006YS-C2
	for lore@pengutronix.de; Mon, 12 Dec 2022 17:41:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f3eRg4i4/OXnxnFM3GhZchEDoURsrPbPoz61tuA0Rwg=; b=K/0MFDFV6SZ03A9UseT5aYxY5D
	qw5pfDg+LwaAXHQqYH09DuCnq+XDlTHPZJlhWYV9r9SGewiaS0/OpQt+FlOOE6VCR3uXLcBk4xQYc
	H48sEGRLw1HaGAv4RnDX+O3Xe22zVH6NmY4xnLCZ4s3JzBM2zlymmcEcjdlz7n8tc13zmQT7lh6uv
	rQL0VQlLZQXUaXxHbph2W2F8AJYFuMlEjiSNEdNl4tPCGH9laAY/Di3Z/mqgDXQHgTS5c6DhVnD3J
	FGJyQB7V8Wu9NmiuQyrprpev0H55uWddI6YPaE9rQJutshhpL04reWKqaRr4PwA7MhgwFMVal58A+
	Yq0CAbcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4lq4-002Com-N4; Mon, 12 Dec 2022 16:39:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4lpk-002Cbv-IE
	for barebox@lists.infradead.org; Mon, 12 Dec 2022 16:39:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p4lpf-0005qZ-2y; Mon, 12 Dec 2022 17:39:11 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p4lpc-0043oe-Vj; Mon, 12 Dec 2022 17:39:09 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p4lpd-009sy2-2I; Mon, 12 Dec 2022 17:39:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Dec 2022 17:39:07 +0100
Message-Id: <20221212163907.2356192-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221212163907.2356192-1-a.fatoum@pengutronix.de>
References: <20221212163907.2356192-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221212_083916_647365_E54418DE 
X-CRM114-Status: GOOD (  11.30  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] KASan: fix handling of devices with MMIO above SDRAM memory region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

check_memory_region_inline will discard KASan reports before start of
RAM as false positives. This is sufficient for i.MX SoCs where the RAM
starts after all device MMIO regions. On the AT91, the EBI memory
controller's memory region follows the SDRAM memory region. This
results in a KASan warning the first time NAND is accessed.

Record the end of the shadowed SDRAM area to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/kasan/generic.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/lib/kasan/generic.c b/lib/kasan/generic.c
index b33a6c1a6c0c..1eccacf2b4b0 100644
--- a/lib/kasan/generic.c
+++ b/lib/kasan/generic.c
@@ -22,6 +22,7 @@
 
 unsigned long kasan_shadow_start;
 unsigned long kasan_shadow_base;
+unsigned long kasan_shadowed_end;
 
 /*
  * All functions below always inlined so compiler could
@@ -160,6 +161,9 @@ static __always_inline bool check_memory_region_inline(unsigned long addr,
 	if (addr < kasan_shadow_start)
 		return true;
 
+	if (addr > kasan_shadowed_end)
+		return true;
+
 	if (unlikely(size == 0))
 		return true;
 
@@ -180,6 +184,7 @@ void kasan_init(unsigned long membase, unsigned long memsize,
 {
 	kasan_shadow_start = membase;
 	kasan_shadow_base = shadow_base;
+	kasan_shadowed_end = membase + memsize - 1;
 
 	kasan_unpoison_shadow((void *)membase, memsize);
 	kasan_initialized = true;
-- 
2.30.2



