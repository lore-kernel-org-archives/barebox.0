Delivery-date: Wed, 19 Oct 2022 14:40:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol8NY-000gbP-Ep
	for lore@lore.pengutronix.de; Wed, 19 Oct 2022 14:40:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol8NV-0000Z4-R4
	for lore@pengutronix.de; Wed, 19 Oct 2022 14:40:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c9RkxdRGqeq/J8K43GnSiZicjxgdgrmuFBwmvg/PvAg=; b=WNZlObhgNI3xpTGbZfpgm7QEPc
	1JZiO7BHQADgKRtEsvG/EW4gG+4btQJj3YJHcufKp6N9di6a1qPMOuVXGu+rzEOv+g2Q7230iBogt
	onmqJ6hLSM1QTEqTxunnkLpAD4t0c4LdQr8/HuhwagDt6qrRd0zSbXvwzN7z7vqcdHft1wHgSIgfn
	Zi5ZyBXW6ThPVW+TkkGmy/krTeD50UKROQN5AnWpEXkMS6lS4tY0RZ6RLv1VoF+rl1FQRnpZtZJEz
	TyuL34qqm9U5o0ECMnsYcYQGPVv0opoZ4o06e+mN9LdeAO383KjCD/Cppr8m8u/AsK38DUc6hrAB/
	1d+UAS2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8Lz-001Y8l-Fd; Wed, 19 Oct 2022 12:39:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8Lv-001Y5t-4I
	for barebox@lists.infradead.org; Wed, 19 Oct 2022 12:39:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ol8Lp-0000FF-1V; Wed, 19 Oct 2022 14:39:13 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ol8Lo-0007io-Aq; Wed, 19 Oct 2022 14:39:12 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ol8Ln-007EmG-BW; Wed, 19 Oct 2022 14:39:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 19 Oct 2022 14:38:16 +0200
Message-Id: <20221019123817.1659468-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221019123817.1659468-1-a.fatoum@pengutronix.de>
References: <20221019123817.1659468-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_053919_188003_06E0341A 
X-CRM114-Status: GOOD (  12.70  )
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
Subject: [PATCH 2/3] lib: hexdump: make available for PBL debugging
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While we have puthexc_ll() for PBL use, for quick debugging or for
debug prints with PBL_CONSOLE enabled, print_hex_dump_bytes() can
come in handy. Build it for optional use in PBL as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/Makefile  |  2 +-
 lib/hexdump.c | 12 +++++++++---
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/lib/Makefile b/lib/Makefile
index 2308117fbdab..4717b8aec364 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -61,7 +61,7 @@ obj-y			+= wchar.o
 obj-y			+= libfile.o
 obj-y			+= bitmap.o
 obj-y			+= gcd.o
-obj-y			+= hexdump.o
+obj-pbl-y		+= hexdump.o
 obj-$(CONFIG_FONTS)	+= fonts/
 obj-$(CONFIG_BAREBOX_LOGO)     += logo/
 obj-y			+= reed_solomon/
diff --git a/lib/hexdump.c b/lib/hexdump.c
index 033e1d28d171..a71474a55348 100644
--- a/lib/hexdump.c
+++ b/lib/hexdump.c
@@ -10,6 +10,7 @@
 #include <linux/log2.h>
 #include <linux/printk.h>
 #include <asm/unaligned.h>
+#include <pbl.h>
 
 const char hex_asc[] = "0123456789abcdef";
 EXPORT_SYMBOL(hex_asc);
@@ -243,9 +244,13 @@ void dev_print_hex_dump(struct device_d *dev, const char *level,
 	const u8 *ptr = buf;
 	int i, linelen, remaining = len;
 	unsigned char linebuf[32 * 3 + 2 + 32 + 1];
-	char *name;
+	char *name = "";
 
-	name = basprintf("%s%s", dev ? dev_name(dev) : "", dev ? ": " : "");
+	if (IN_PBL)
+		dev = NULL;
+
+	if (dev)
+		name = basprintf("%s: ", dev_name(dev));
 
 	if (rowsize != 16 && rowsize != 32)
 		rowsize = 16;
@@ -273,6 +278,7 @@ void dev_print_hex_dump(struct device_d *dev, const char *level,
 		}
 	}
 
-	free(name);
+	if (dev)
+		free(name);
 }
 EXPORT_SYMBOL(dev_print_hex_dump);
-- 
2.30.2



