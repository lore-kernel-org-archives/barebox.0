Delivery-date: Tue, 28 Mar 2023 09:42:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph3xw-00HMeX-89
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 09:42:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph3xv-0001Wh-W6
	for lore@pengutronix.de; Tue, 28 Mar 2023 09:42:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vajkO1gS4ukMb9nHajCbV7aRzJjtn73LIYp7pv7/Yyc=; b=RcZLzTFFGTjxtKxyxNTFzbEFZG
	FsA46RQaKbY80TlFWwVbZExQYUjPK69LTGGOlLKWaAyr5/VIn5d2lwYAc5R3/GhDytFnYjHJEDVv+
	w0N3pXrXwMLe0PKlHM7F/qJjyBzU56yFAxxEQ8o0aFK0LyuhQI59lr8CAyKBQD9VignCepq9KcTPB
	do+JWo92KQBWfxufZ5s0CkBh6fWG05Pdl+UOMMAftn8/bAkbkGWvAY3mxeUSEtl7kQk2bhlcADyU+
	8gCbB03SuSyfqDFg0jexx1fEaTG8dfXT88buKzQ2I/dX4LQS0C51krWfjHVOCDSjcqUlGQhnMjjDe
	r66zm13w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3wl-00DUyi-1z;
	Tue, 28 Mar 2023 07:40:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3wg-00DUuw-0b
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 07:40:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wd-00017d-9F; Tue, 28 Mar 2023 09:40:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wc-007Fvg-KP; Tue, 28 Mar 2023 09:40:38 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ph3wb-0052xy-PS; Tue, 28 Mar 2023 09:40:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Mar 2023 09:40:37 +0200
Message-Id: <20230328074037.1202993-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230328074037.1202993-1-s.hauer@pengutronix.de>
References: <20230328074037.1202993-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_004042_236335_8D01B4BD 
X-CRM114-Status: GOOD (  15.70  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/6] ARM: Rockchip: Do not pass device tree to TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The downstream TF-A doesn't cope with our device tree when
CONFIG_OF_OVERLAY_LIVE is enabled, supposedly because it is
too big for some reason. Otherwise it doesn't have any visible
effect if we pass a device tree or not, except that the TF-A
fills in the ethernet MAC address into the device tree.
The upstream TF-A doesn't use the device tree at all.

Pass NULL for now until we have a good reason to pass a real
device tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index f3fb50b990..d1431cc526 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -85,7 +85,19 @@ void __noreturn rk3568_barebox_entry(void *fdt)
 	if (current_el() == 3) {
 		rk3568_lowlevel_init();
 		rockchip_store_bootrom_iram(membase, memsize, IOMEM(RK3568_IRAM_BASE));
-		rk3568_atf_load_bl31(fdt);
+
+		/*
+		 * The downstream TF-A doesn't cope with our device tree when
+		 * CONFIG_OF_OVERLAY_LIVE is enabled, supposedly because it is
+		 * too big for some reason. Otherwise it doesn't have any visible
+		 * effect if we pass a device tree or not, except that the TF-A
+		 * fills in the ethernet MAC address into the device tree.
+		 * The upstream TF-A doesn't use the device tree at all.
+		 *
+		 * Pass NULL for now until we have a good reason to pass a real
+		 * device tree.
+		 */
+		rk3568_atf_load_bl31(NULL);
 		/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
 	}
 
-- 
2.39.2



