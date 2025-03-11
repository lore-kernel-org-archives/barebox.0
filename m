Delivery-date: Tue, 11 Mar 2025 13:48:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trz2R-00CgBE-1x
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 13:48:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trz2Q-0007cs-FH
	for lore@pengutronix.de; Tue, 11 Mar 2025 13:48:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IfdTpdf44XCXohOWNSpM9PYyvgDzDAomBak6S2H6Jrk=; b=0dE0qUjTgeYDWKboqXbWCI2Ke2
	jJX6/LnR/ZMB0OM1QkturpyjbpPUrLnMDQkLLibiCpRuqLGeNSBXtBLeX6s57WmpsEpPpqjkXZWB0
	LyGhGTfJR7OC71glXI3fcsdwuT9+LjsnUp7unt6yZLsGkBPNZII+TNFdaKRs6l3ycnpqsTRByN+/Z
	zXzlbAJhja/hDUV+8NQR2gNZmC+Npj+Fnrah5E7FiVgmYo9/p7MORX8AE7oIVEb9dSb6ucV5xr+aQ
	H22X2RYhGQbmwUP/L0BKX1chqlMTnXs43CuP/Fhpm5zLR1DFNjHogehFYMp6MU9rqiW/QHk8Fst3N
	4N6+Djrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trz21-00000005jOU-0tDA;
	Tue, 11 Mar 2025 12:48:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trynT-00000005f5b-0Mbm
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 12:33:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trynR-0004hW-Tq; Tue, 11 Mar 2025 13:33:21 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trynR-005B8D-2K;
	Tue, 11 Mar 2025 13:33:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-000oVs-1K;
	Tue, 11 Mar 2025 13:25:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Mar 2025 13:25:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-am625-secure-v2-14-3cbbfa092346@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
In-Reply-To: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741695915; l=780;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=PZlHkVVImzFFIIUq15WQFlXJX6v9Ze98MWIkxA/CNKQ=;
 b=eIWweMLNcOV9xeof/bZne2smgNEYiH8kgW72f2TkcFI/7I1bEtcECdwDg3GJ9ZpkErzRM89og
 AkCjTza7523DSVp/3ctdg9xBMfdK90XIsUnRkc83OgW2MIy45w9lS2H
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_053323_129692_00F4060C 
X-CRM114-Status: UNSURE (   8.76  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 14/14] ARM: k3: r5: select HAS_INSECURE_DEFAULTS when
 necessary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The R5 code will load the full barebox binary which needs to be
authenticated in order to get a secure boot flow. Select
HAS_INSECURE_DEFAULTS when no authentication method is compiled in.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
index e93e3154c8..3dcdb20186 100644
--- a/arch/arm/mach-k3/Kconfig
+++ b/arch/arm/mach-k3/Kconfig
@@ -19,6 +19,7 @@ config MACH_K3_CORTEX_R5
 	select HAVE_FIRMWARE_VERIFY_NEXT_IMAGE
 	depends on 32BIT
 	select ARM_USE_COMPRESSED_DTB
+	select HAS_INSECURE_DEFAULTS if (!FIRMWARE_VERIFY_NEXT_IMAGE && !ARCH_K3_AUTHENTICATE_IMAGE)
 	default y
 
 config MACH_K3_CORTEX_A

-- 
2.39.5



