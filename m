Delivery-date: Tue, 04 Nov 2025 11:01:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGDqc-00FB5U-0e
	for lore@lore.pengutronix.de;
	Tue, 04 Nov 2025 11:01:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGDqY-00020h-Ay
	for lore@pengutronix.de; Tue, 04 Nov 2025 11:01:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JUu02MO+WKfNQr+E7duLKiAQCSWxHifOpOtXtH9HjbM=; b=oAp7MFPPRVrdJDWpSPfMY7fZ14
	zxt6IV5ay9tJlRDXxG4CrLVBeyAfx8G0vctNIypWxctLq8DKJoPUwh4+V4UIw1/amG9pqGswNAIef
	ZMzTmqnqNReuN2cOr5v8C3OhoQOgbx/U+5PXOQ0GFazlT0C6ayD0eS8GsYDl2hDqspiLPCQvttBzw
	ko/Xzyv+dBMONLdqXk3oHyYUA0Eq6k54lEYyTT7xzOnKW9yX8pi09D9f+269zWFRYedY0Km/ObjV2
	Ha9i6kbDYaLxUGyQi+UnHdvJL90f9UFa+BLYRIL1jRfEgmeRt1g24g5gYftE7+rrMf7D4FCOadLNN
	B6E0f8Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGDq2-0000000BZmu-2djI;
	Tue, 04 Nov 2025 10:00:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGDpz-0000000BZmZ-1geM
	for barebox@lists.infradead.org;
	Tue, 04 Nov 2025 10:00:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vGDpx-0001sI-Oe; Tue, 04 Nov 2025 11:00:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vGDpx-0070Xm-1s;
	Tue, 04 Nov 2025 11:00:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vGDpx-0000000CWA7-23Ec;
	Tue, 04 Nov 2025 11:00:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Nov 2025 11:00:24 +0100
Message-ID: <20251104100024.2983523-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_020027_441765_BB03CA98 
X-CRM114-Status: UNSURE (   8.34  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! crypto: caam - skip RNG selftest when i.MX6 is in normal world
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

crypto: caam - fix COMPILE_TEST breakage

<mach/imx/*.h> doesn't exist when we compile allyesconfig for sandbox,
so stub out the macros used from it, so CAAM can continue to build
independently of selected architecture.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/crypto/caam/rng_self_test.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/crypto/caam/rng_self_test.c b/drivers/crypto/caam/rng_self_test.c
index a42d9cad1639..f008908b903e 100644
--- a/drivers/crypto/caam/rng_self_test.c
+++ b/drivers/crypto/caam/rng_self_test.c
@@ -47,8 +47,14 @@
 #include <dma.h>
 #include <common.h>
 #include <linux/kernel.h>
+
+#ifdef CONFIG_ARCH_IMX6
 #include <mach/imx/generic.h>
 #include <mach/imx/imx6.h>
+#else
+#define cpu_is_mx6()			false
+#define imx6_cannot_write_l2x0()	false
+#endif
 
 #include "error.h"
 #include "regs.h"
-- 
2.47.3



