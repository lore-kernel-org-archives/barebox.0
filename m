Delivery-date: Tue, 26 Apr 2022 08:48:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njEzb-00FbMS-Ie
	for lore@lore.pengutronix.de; Tue, 26 Apr 2022 08:48:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njEzY-0007Rt-KP
	for lore@pengutronix.de; Tue, 26 Apr 2022 08:48:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j9AuNrDWRrqRWavZYZ1HCeZ+3v1pE3lcphTTPAdypFc=; b=KThYJSvWrbjcn0
	P+XjLxFLbIyamvUKhJX/6l6JXnTK3LRiKun5wC0dJ+Q2x/97ytNOAvD8V5rIBDF3Q1+DRITxO2GLr
	xbMsTxzs//ZoDo9gULTnDdm3pgdf0J81NF2sboAFXhFXS88oJMwF0JkfBgKaBTnnbFZInjGRGoVR2
	Rrojz3arlYxMedRE0RFCAve25w9NmvBRyur7F5dK/RiTBQU6Mi2ryiewGsY/SKXlIsyVYtBicacxo
	NK9WMZv7z/V2EMAJlhzM+YNFPtYZpaVkytKH2WUAewAmXrD/Ybo4UWOlwnyGhWnRfR3/8BeKBJbPl
	ZNZ+c/0pt4WnStJoiG/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njExo-00CnmL-RM; Tue, 26 Apr 2022 06:46:20 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njExj-00Cnj3-97
 for barebox@lists.infradead.org; Tue, 26 Apr 2022 06:46:17 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by mail.gandi.net (Postfix) with ESMTPSA id 893E920009;
 Tue, 26 Apr 2022 06:46:09 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 26 Apr 2022 08:46:04 +0200
Message-Id: <20220426064604.422292-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220426064604.422292-1-ahmad@a3f.at>
References: <20220426064604.422292-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_234615_499796_F38342A5 
X-CRM114-Status: UNSURE (   7.30  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] RISC-V: sifive: enable SPI Flash and SD in config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To test SD-Card:

  ./test/emulate.pl sifive_defconfig  -- -drive file=image.sdcard,if=sd

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  - No change
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

