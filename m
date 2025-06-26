Delivery-date: Thu, 26 Jun 2025 16:04:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUnDD-00BIEy-12
	for lore@lore.pengutronix.de;
	Thu, 26 Jun 2025 16:04:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUnDC-0001dR-OF
	for lore@pengutronix.de; Thu, 26 Jun 2025 16:04:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LZvaM2k/LxIu666SDVerljY1hyJiwZ1VTiCwpaift7E=; b=vSELWKitvp2bq/nPi9lcMQk3h2
	Zw0gvlpctBeEntHhO+949oUzfQpDst3T5t02OL7cIfP20LwujpEjVuchoxjeguqWPy1ojgHOzlD1i
	QYsPdcsJNB996AG/HhVZgZPxptIXwWZ/SKnUCJs8PRQZOTbkYd72UFSKPzA3jX8L0+3d6uCy+3xCX
	LikzPhKHGAW+yk/1UzlJl5PNBmHYPGqYXUZ7cHnYa0UdrxC6NJct3KkPSI4JWPIcXF+LYN4zZ9WsQ
	CH2/JVqy6WvAEUWhE77ugXzMcaVwiWzMIQYc8nbuhNUy/nORWPbd0z7X5n+/woEX7w+L6iEQ01tw7
	tojixaOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnCS-0000000BqmC-3OGX;
	Thu, 26 Jun 2025 14:03:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnCP-0000000Bqk6-064U
	for barebox@lists.infradead.org;
	Thu, 26 Jun 2025 14:03:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uUnCM-0000Fr-Dn; Thu, 26 Jun 2025 16:03:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uUnCM-005SPa-0m;
	Thu, 26 Jun 2025 16:03:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uUnCM-001kkf-0N;
	Thu, 26 Jun 2025 16:03:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 26 Jun 2025 16:03:28 +0200
Message-Id: <20250626140329.418033-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_070333_059125_3FAEA2C0 
X-CRM114-Status: GOOD (  16.10  )
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
Subject: [PATCH 1/2] ARM: i.MX: tqma6ulx: fix barebox chainloading with OP-TEE enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Chainloading barebox when OP-TEE is enabled has multiple bugs, fix them.

When barebox starts we have to guess if we have to start OP-TEE or not.
As we can't detect the exception level on ARMv7 we do this by checking
if a first stage loader has passed us a device tree.

First of all the device tree is passed in r2, not in r0, so fix the
register we use.

Then we have to check if r2 is within the SDRAM. We check against
MX6_MMDC_P0_BASE_ADDR which is the base of the SDRAM controller. Use the
base address of the SDRAM instead.

Finally we manipulate the TZASC which we are obviously not allowed in
EL1, so move the manipulation to the code which is only executed in EL2.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma6ulx/lowlevel.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/tqma6ulx/lowlevel.c b/arch/arm/boards/tqma6ulx/lowlevel.c
index 5fd997d2ec..ce330c37af 100644
--- a/arch/arm/boards/tqma6ulx/lowlevel.c
+++ b/arch/arm/boards/tqma6ulx/lowlevel.c
@@ -66,7 +66,7 @@ static void *read_eeprom(void)
 	return fdt;
 }
 
-static void noinline start_mba6ulx(u32 r0)
+static void noinline start_mba6ulx(u32 r2)
 {
 	void *fdt;
 	int tee_size;
@@ -76,16 +76,15 @@ static void noinline start_mba6ulx(u32 r0)
 
 	fdt = read_eeprom();
 
-	/* Enable normal/secure r/w for TZC380 region0 */
-	writel(0xf0000000, 0x021D0108);
-
 	/*
 	 * Chainloading barebox will pass a device tree within the RAM in r0,
 	 * skip OP-TEE early loading in this case
 	 */
 	if (IS_ENABLED(CONFIG_FIRMWARE_TQMA6UL_OPTEE) &&
-	    !(r0 > MX6_MMDC_P0_BASE_ADDR &&
-	      r0 < MX6_MMDC_P0_BASE_ADDR + SZ_256M)) {
+	    !(r2 > MX6_MMDC_PORT0_BASE_ADDR && r2 < MX6_MMDC_PORT0_BASE_ADDR + SZ_256M)) {
+		/* Enable normal/secure r/w for TZC380 region0 */
+		writel(0xf0000000, 0x021D0108);
+
 		get_builtin_firmware(mba6ul_optee_bin, &tee, &tee_size);
 
 		memset((void *)OPTEE_OVERLAY_LOCATION, 0, 0x1000);
@@ -112,5 +111,5 @@ ENTRY_FUNCTION(start_imx6ul_mba6ulx, r0, r1, r2)
 	setup_c();
 	barrier();
 
-	start_mba6ulx(r0);
+	start_mba6ulx(r2);
 }
-- 
2.39.5



