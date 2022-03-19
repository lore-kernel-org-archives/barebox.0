Delivery-date: Sat, 19 Mar 2022 08:28:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVTVs-00GW29-DY
	for lore@lore.pengutronix.de; Sat, 19 Mar 2022 08:28:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVTVt-0002IC-5H
	for lore@pengutronix.de; Sat, 19 Mar 2022 08:28:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KIh5qXdRSsO77IZSF1fWnd59/8Tn4EsdIir8Ig8YpQw=; b=F0Ct7ai71dRTCv
	GqGC+1j3p6Ezy/EkB/Vf9tW9cYn4gTxar7QZKgN7Mw0blWf63QSr7ngQV6aFLwBvEyYIRsK9Btkyg
	jYcjxkKmr0ly9QNUkzw2dAmJKdV1oOwnQhbIbaX8OTpUnM4JoInrFEc9atrs4M3VAm7+ETt4FPZFB
	uTA1MFv6dRmkI4ILN8YwmkQFo8EUP06y6HXAF6Sp4CEhkhsAf83UlOul2Jxn38Cf2ZqYbx/B4Sw+3
	OSXi1cv++UPeyc5r1orVhvk8KI9Y7Kr9X5OETDybzh5NVwtRFwYumcbr497aysDXgUw/Y11ovP7wp
	V0DxXTIOIF0qsYbkUbew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVTRv-003NCL-DL; Sat, 19 Mar 2022 07:24:31 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVTRo-003NAV-84
 for barebox@lists.infradead.org; Sat, 19 Mar 2022 07:24:27 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by mail.gandi.net (Postfix) with ESMTPSA id 20EAE1C0007;
 Sat, 19 Mar 2022 07:24:16 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 19 Mar 2022 08:24:10 +0100
Message-Id: <20220319072410.1310723-4-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220319072410.1310723-1-ahmad@a3f.at>
References: <20220319072410.1310723-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_002424_470441_1EC37502 
X-CRM114-Status: UNSURE (   6.85  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] RISC-V: sifive: enable SPI Flash and SD in config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To test SD-Card:

  ./test/emulate.pl sifive_defconfig  -- -drive file=image.sdcard,if=sd

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/riscv/configs/sifive_defconfig | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/configs/sifive_defconfig b/arch/riscv/configs/sifive_defconfig
index 59cfebf194df..6ebe6eaf3785 100644
--- a/arch/riscv/configs/sifive_defconfig
+++ b/arch/riscv/configs/sifive_defconfig
@@ -13,13 +13,10 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_IMD_TARGET=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PBL_CONSOLE=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_BAREBOXENV_TARGET=y
-CONFIG_BAREBOXCRC32_TARGET=y
 CONFIG_STATE=y
 CONFIG_STATE_CRYPTO=y
 CONFIG_BOOTCHOOSER=y
@@ -85,20 +82,21 @@ CONFIG_VIRTIO_CONSOLE=y
 CONFIG_SERIAL_SIFIVE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_GPIO=y
+CONFIG_SPI_SIFIVE=y
 CONFIG_I2C=y
 CONFIG_I2C_GPIO=y
 CONFIG_MTD=y
-# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_RAW_DEVICE=y
 CONFIG_MTD_CONCAT=y
 CONFIG_MTD_M25P80=y
 CONFIG_DRIVER_CFI=y
 CONFIG_DRIVER_CFI_BANK_WIDTH_8=y
-CONFIG_DISK=y
-CONFIG_DISK_WRITE=y
 CONFIG_VIRTIO_BLK=y
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT=y
+CONFIG_MCI=y
+CONFIG_MCI_SPI=y
 CONFIG_CLOCKSOURCE_DUMMY_RATE=60000
 CONFIG_EEPROM_AT24=y
 CONFIG_HWRNG=y
@@ -126,3 +124,6 @@ CONFIG_ZSTD_DECOMPRESS=y
 CONFIG_XZ_DECOMPRESS=y
 CONFIG_BASE64=y
 CONFIG_DIGEST_CRC32_GENERIC=y
+CONFIG_IMD_TARGET=y
+CONFIG_BAREBOXENV_TARGET=y
+CONFIG_BAREBOXCRC32_TARGET=y
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

