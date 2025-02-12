Delivery-date: Wed, 12 Feb 2025 11:57:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiAQQ-001OWW-1G
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 11:57:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiAQO-0000ET-VN
	for lore@pengutronix.de; Wed, 12 Feb 2025 11:57:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dSvVjmzAQ6QxHe/jktW5a3QVCupMwm0ND+lgwu9bewc=; b=m9vccMfza4g8AJ1lxwc8dsZbpg
	Ng3EzQx11qIuSflT0LIm6Xv7vIygX/KnU5LSEZKIpFFUTcQUABAK8pqdmAdKqimf2ooOwriVeEA8J
	er/ygPP+YfVCKkx7vn4Lg0/io9MXSpodplRXbcX+1WodToiaP6Wv2GZHs2XyTl3XikT9xqiy9IokW
	Ah4stAiJUnh8OPpCntbB4D+/KcmIz9rjEeZJfVE/T/TXWNMM593ElbqCpGxr5uNj44Oak6+7cv36k
	j3wVO4KQmKHRlRdbC55C3qJATspEsbK15a3k7snEveo5SFvMkejAnXSI0jFegiJRWkUg3o8J0dfuz
	ZICZiAxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiAPt-000000074TL-09P1;
	Wed, 12 Feb 2025 10:56:29 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiAJK-0000000734j-2UWq
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 10:49:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1739357366;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dSvVjmzAQ6QxHe/jktW5a3QVCupMwm0ND+lgwu9bewc=;
	b=Z725cQc88NfVr1Ak0ks4Zn6xp3HhBUN+jQjvaPV2AZgh3CTTpEKonsW1GBqg/QCRkjfRtQ
	ywet1+Jrw7pOniOLLUoVBKvHXURmPIckdn2AUPCbyuH7k9FyG86fPojEEMvx43/M7Z8jKa
	oKd8E0FgQqKc8h1pA3fdg1NBDCsr9pZ+TsuuxyWW3/cTRapG3eyDUW8ZZ5i1zm+PP5KMrx
	Fb9KYODuUuUIkDiNpHSPoPt+P/qfU8icFCMS4lZ6oulzTKtvULIKxB+2zQp0kyDWqdpct3
	kdqHIsgHELT+y5PlllCdycLrlcMTZ3Lrs0ddjAz6D2NmO2Ge3hD2WzP8cX8jUA==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:6f02:8f71:b5f4:2800])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 1ef4fbb8 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Wed, 12 Feb 2025 11:49:26 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Wed, 12 Feb 2025 11:48:42 +0100
Message-ID: <20250212104842.504-7-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250212104842.504-1-jmaselbas@zdiv.net>
References: <20250212104842.504-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_024942_914382_D444EF3C 
X-CRM114-Status: GOOD (  16.83  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 6/6] Documentation: sunxi: Add some documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add some user documentation on how to build a second stage barebox image,
and how to boot from u-boot.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 Documentation/boards/sunxi.rst | 116 +++++++++++++++++++++++++++++++++
 1 file changed, 116 insertions(+)
 create mode 100644 Documentation/boards/sunxi.rst

diff --git a/Documentation/boards/sunxi.rst b/Documentation/boards/sunxi.rst
new file mode 100644
index 0000000000..8d00507434
--- /dev/null
+++ b/Documentation/boards/sunxi.rst
@@ -0,0 +1,116 @@
+.. SPDX-License-Identifier: GPL-2.0+
+
+Allwinner sunxi
+===============
+
+Boot process
+------------
+
+On power-up Allwinner SoC starts in boot ROM, aka BROM, which will search
+for a bootable image (eGON header): first from the SD card, then from eMMC.
+If no image is found then the boot ROM will enter into FEL mode that can be
+used for programming and recovery through USB.
+
+Some board may have a button to enter FEL mode at startup. If not, another
+way to enter FEL mode is to not have a valid bootable eGON image, this can
+be achieved by erasing existing eGON image headers.
+
+.. note::
+
+   Currently Barebox cannot boot directly on Allwinner sunxi SoC and can
+   only be used as a secondary bootloader, requiring u-boot to initialize
+   the SDRAM controller and starting the TF-A and optionally Crust.
+
+
+Building barebox second stage
+-----------------------------
+
+The generic ``barebox-dt-2nd.img`` armv8 image should enable all the needed
+drivers.
+
+To build the image do:
+
+.. code-block:: sh
+
+  export ARCH=arm CROSS_COMPILE=aarch64-linux-gnu-
+  make multi_v8_defconfig
+  make
+
+Installing barebox second stage
+-------------------------------
+
+Copy the built ``barebox-dt-2nd.img`` image into the first fat partition
+of the boot medium.
+
+.. code-block:: sh
+
+  # mount /dev/sdX1 /mnt/${mount_dir}
+  # cp ${build_dir}/images/barebox-dt-2nd.img /mnt/${mount_dir}
+  # umount /mnt/${mount_dir}
+
+
+Booting barebox from U-Boot
+---------------------------
+
+Currently Barebox can only be started as a second stage, and relies on
+U-Boot for the SDRAM initialisation and to start the TF-A.
+
+.. code-block:: console
+
+  # on u-boot console, `mmc 0:1` is the first partition on the sd card
+  fatload mmc 0:1 0x42000000 barebox-dt-2nd.img
+  fatload mmc 0:1 0x44000000 dtbs-lts/allwinner/sun50i-a64-pine64-plus.dtb
+  booti 0x42000000 - 0x44000000
+
+.. note::
+
+   A FIT image might be built and used instead of directly using the `barebox-dt-2nd.img`,
+   this hasn't been tested yet, but using a FIT image sound like a better option.
+
+See also the general documentation on :ref:`second_stage`.
+
+Building Arm Trusted Firmware (TF-A)
+------------------------------------
+
+.. note::
+
+   This step is currently only needed when building U-Boot.
+   This step is also documented in U-Boot documention.
+
+Boards using a 64-bit Soc (A64, H5, H6, H616, R329) require the BL31 stage of
+the Arm Trusted Firmware-A firmware. This provides the reference
+implementation of secure software for Armv8-A, offering PSCI and SMCCC
+services. Allwinner support is fully mainlined. To build bl31.bin:
+
+.. code-block:: sh
+
+  git clone https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git
+  cd trusted-firmware-a
+  make CROSS_COMPILE=aarch64-linux-gnu- PLAT=sun50i_a64 DEBUG=1
+  cp build/sun50i_a64/debug/bl31.bin ${barebox_dir}/firmware/sun50i-a64-bl31.bin
+
+The target platform (``PLAT=``) for A64 and H5 SoCs is sun50i_a64, for the H6
+sun50i_h6, for the H616 sun50i_h616, and for the R329 sun50i_r329.
+
+Building U-Boot image
+---------------------
+
+Please refere to the relevant U-Boot_ build documentation (or ``/doc/board/allwinner/sunxi.rst`` in u-boot src tree).
+
+.. _U-Boot: https://docs.u-boot.org/en/latest/board/allwinner/sunxi.html#building-the-u-boot-image
+
+
+Installing the first stage bootloader
+-------------------------------------
+
+Installing on a (micro-) SD card
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+The bootable image, a eGON header followed by the actual image, must be
+located at the fixed offset of 8192 bytes (8KB) from the start of the
+disk (sector 16).
+
+.. code-block:: sh
+
+  # copy the bootable fsbl image (including eGON header) into disk sdX
+  dd if=${fsbl.img} of=/dev/sdX bs=512 seek=16
-- 
2.48.1



