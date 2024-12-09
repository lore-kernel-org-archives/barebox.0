Delivery-date: Mon, 09 Dec 2024 15:28:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKekp-00601w-07
	for lore@lore.pengutronix.de;
	Mon, 09 Dec 2024 15:28:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKekp-0004bv-0U
	for lore@pengutronix.de; Mon, 09 Dec 2024 15:28:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HVAljxriOtlTUdhHtwoGrZK2lg+2G9mjSvJLWmFzQfg=; b=oWSMVF7YYJA30yZzj6svXK3Btr
	kzoY/GfdPdB3ROqq15MbYx9CajL6fRIowuj5J76hFGoOb3QiHSiuCEvvb3mDiGSjrlBCtuA9+7ln7
	82h4oYwwBtKz+HUkCY9oAe76UGT1dKzWnFKxrsDq30RDrSPX74QqykBQEqUg8AX4TTamln16htyhv
	vKBW01v6N5Uk+cRsBjWbXPwE6o1oi8apSrSd07eLx+dwOIB2cvR6gl1ZCpYTPu4tsoipu70lhJzGw
	yxur5ifeeozufjFC7FnGrmrTH0FPRR8Tl8IsebBkxgeT2M4GMY4R204gJGxNQOzleWBmqyNC4kx5n
	1j/vyr6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKekK-00000008Ccz-2oZN;
	Mon, 09 Dec 2024 14:28:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKekH-00000008CbL-0mx7
	for barebox@lists.infradead.org;
	Mon, 09 Dec 2024 14:28:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tKek8-0004MU-1p; Mon, 09 Dec 2024 15:28:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tKek7-002Wtq-01;
	Mon, 09 Dec 2024 15:28:11 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tKek7-005Elf-2K;
	Mon, 09 Dec 2024 15:28:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 09 Dec 2024 15:28:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241209-ext-dt-handoff-v1-3-e61052d5d437@pengutronix.de>
References: <20241209-ext-dt-handoff-v1-0-e61052d5d437@pengutronix.de>
In-Reply-To: <20241209-ext-dt-handoff-v1-0-e61052d5d437@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733754491; l=1409;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=FI4HctNxJwE1cQrnwljGoEgJ79mqb8W/CFeSaaowEJA=;
 b=gasmuM4QYWuVi9baFVNfP7lAKNazxabHj4aeQ/cZZVS0QFtrFyx7347OGcTQqYWof53QOR1ba
 9+65bzbXXjMDzi2JKX2II6OHvrEtXsy1XOWI2oi9+TAXf7fi0b3bVmH
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_062821_228518_5C339702 
X-CRM114-Status: UNSURE (   9.77  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: beagleplay: put external device tree into handoff
 data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Pass the dtb from 1st stage loader to barebox using handoff data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagleplay/lowlevel.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/beagleplay/lowlevel.c b/arch/arm/boards/beagleplay/lowlevel.c
index 9d76dbd0a2..228484bf4e 100644
--- a/arch/arm/boards/beagleplay/lowlevel.c
+++ b/arch/arm/boards/beagleplay/lowlevel.c
@@ -5,21 +5,27 @@
 #include <asm/barebox-arm.h>
 #include <debug_ll.h>
 #include <pbl.h>
+#include <pbl/handoff-data.h>
+#include <compressed-dtb.h>
 
 /* Called from assembly */
-void beagleplay(void);
+void beagleplay(void *dtb);
 
-static noinline void beagleplay_continue(void)
+static noinline void beagleplay_continue(void *dtb)
 {
 	unsigned long membase, memsize;
 	extern char __dtb_k3_am625_beagleplay_start[];
+	unsigned int size;
 
 	fdt_find_mem(__dtb_k3_am625_beagleplay_start, &membase, &memsize);
 
+	if (blob_is_valid_fdt_ptr(dtb, membase, memsize, &size))
+		handoff_data_add(HANDOFF_DATA_EXTERNAL_DT, dtb, size);
+
 	barebox_arm_entry(membase, memsize, __dtb_k3_am625_beagleplay_start);
 }
 
-void beagleplay(void)
+void beagleplay(void *dtb)
 {
 	putc_ll('>');
 
@@ -29,5 +35,5 @@ void beagleplay(void)
 
 	setup_c();
 
-	beagleplay_continue();
+	beagleplay_continue(dtb);
 }

-- 
2.39.5



