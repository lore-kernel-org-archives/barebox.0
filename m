Delivery-date: Mon, 02 Jun 2025 11:58:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1w9-002usk-2z
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 11:58:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1w8-0004J2-VI
	for lore@pengutronix.de; Mon, 02 Jun 2025 11:58:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NtIpisbcrJLWVCVxYOe6VIZhFx1Q3uduRXHFLAvj3UY=; b=Id+uNrhvPytFF9PVOnmVqQ9Cuf
	0KGpLM3LO1PjipnTymbTzzLhpi2xwbpkZ8IEk4pzWt6aTA9uEwd4L+V6mqSVwoHirGKgEiQvw3HYn
	5F0nMU+A4L08IqYxNNGNolBDbrbcrezCTZsslBrde7Wjg2eeMSq2zjf23YkecuzRke3oZNQt59OXW
	Pxy/REDr0ppWNsXW+hBUv6Cf1VLOpWaHWYtX/EIodPHPPiCoRgoaJN38o69ZNPoZkb2yo6/+RuiWM
	7FaUis6cNfsXCwzUYjBhbBp/jaoGFRHQi2cjIKwwKa27GkNnSXy7mz8STVfo497Ht4hjCYTMoHTdJ
	RM51zh8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1vj-0000000788T-2Hzg;
	Mon, 02 Jun 2025 09:58:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1vK-0000000785K-0owM
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 09:57:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uM1vI-0003r3-Us; Mon, 02 Jun 2025 11:57:41 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Jun 2025 11:57:38 +0200
Message-Id: <20250602095738.822334-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250602095738.822334-1-a.fatoum@barebox.org>
References: <20250602095738.822334-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_025742_230343_1883FBC5 
X-CRM114-Status: UNSURE (   9.33  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/5] Documentation: migration-2025.07.0: document CONFIG_DEEP_PROBE_DEFAULT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Out of tree boards will get a warning on startup now asking them to
explicitly opt-in or opt-out to deep probe. Document this.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - Collected Marco's R-b
---
 Documentation/migration-guides/migration-2025.07.0.rst | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/migration-guides/migration-2025.07.0.rst b/Documentation/migration-guides/migration-2025.07.0.rst
index 896d2552e9ea..fe47c3109745 100644
--- a/Documentation/migration-guides/migration-2025.07.0.rst
+++ b/Documentation/migration-guides/migration-2025.07.0.rst
@@ -7,3 +7,13 @@ Configuration options
 * The legacy ARM 32-bit ATAGS mechanism is now disabled by default.
   It can be re-enabled using the newly added ``CONFIG_BOOT_ATAGS`` option.
   Use of ATAGS is deprecated. Users should migrate to OpenFirmware device trees.
+
+Board support
+-------------
+
+* barebox now warns at runtime about boards that disable the option
+  ``CONFIG_DEEP_PROBE_DEFAULT`` and list neither the ``barebox,deep-probe``
+  nor ``barebox,disable-deep-probe`` property in the top-level device tree node.
+  It's recommended that all boards switch to deep probe.
+  If deep probe breaks your platform, please report to the mailing list
+  and set ``barebox,disable-deep-probe`` in your device tree.
-- 
2.39.5



