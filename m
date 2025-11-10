Delivery-date: Mon, 10 Nov 2025 20:05:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIXCd-00HTt0-1l
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 20:05:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIXCc-0002AR-J1
	for lore@pengutronix.de; Mon, 10 Nov 2025 20:05:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+o2Qr2gEp6sX+gOo7OfmGbIC3UpyveyaZfuAV0Xx41w=; b=PXm8wUGZvEE+tNVXC5x8Ff9+fp
	xVZ5rWrLPSeXBJwJw07vaHlVlOV5Ib/FutyKpcVw0HcVmmK3fL7oOKXMgPvVmRa/Qj1wx9+YFCkVA
	MGu5Kg45oLX1wwQUWLna5oqzP+a9KCdR2V9Gqwg+/x7zNJ/NuFa4lPLfiu5a6snLCbHtNi7b46vNB
	qq6jC9ue1SGJsRJJ4F/AFqw9xGRlkgxUq0QLWPZ5vbzN7lFX9GFYQcBf9nAGmFrZ29l3n0pqTC0NR
	ku0/zDbg6qSK005qWoMu+Rw7AecGOMzJ8OfyDrI0VZlND3cErNzCxE5nHds7mhvPhwtNaFDapAbRT
	u0Pv2zVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIXBr-000000060aK-3jQy;
	Mon, 10 Nov 2025 19:04:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIXBp-000000060Zg-0rxu
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 19:04:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vIXBm-000215-MR; Mon, 10 Nov 2025 20:04:30 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vIXBl-0084eE-1Y;
	Mon, 10 Nov 2025 20:04:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vIXBl-0000000EGt2-1cfW;
	Mon, 10 Nov 2025 20:04:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Nov 2025 20:04:27 +0100
Message-ID: <20251110190428.3401453-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_110433_421391_A7B743F5 
X-CRM114-Status: GOOD (  21.68  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] migration-guides: add notes for v2024.09.0 to v2025.04.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

v2024.08.0 was the first release included in OpenEmbedded core, so add
migration guides for later releases to aid users in updating.

November 2024 didn't have a release, so that's why only seven migration
guides are added.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../migration-guides/migration-2024.09.0.rst  |  8 +++++
 .../migration-guides/migration-2024.10.0.rst  | 15 +++++++++
 .../migration-guides/migration-2024.12.0.rst  | 26 ++++++++++++++++
 .../migration-guides/migration-2025.01.0.rst  | 31 +++++++++++++++++++
 .../migration-guides/migration-2025.02.0.rst  | 21 +++++++++++++
 .../migration-guides/migration-2025.03.0.rst  | 25 +++++++++++++++
 .../migration-guides/migration-2025.04.0.rst  | 12 +++++++
 7 files changed, 138 insertions(+)
 create mode 100644 Documentation/migration-guides/migration-2024.09.0.rst
 create mode 100644 Documentation/migration-guides/migration-2024.10.0.rst
 create mode 100644 Documentation/migration-guides/migration-2024.12.0.rst
 create mode 100644 Documentation/migration-guides/migration-2025.01.0.rst
 create mode 100644 Documentation/migration-guides/migration-2025.02.0.rst
 create mode 100644 Documentation/migration-guides/migration-2025.03.0.rst
 create mode 100644 Documentation/migration-guides/migration-2025.04.0.rst

diff --git a/Documentation/migration-guides/migration-2024.09.0.rst b/Documentation/migration-guides/migration-2024.09.0.rst
new file mode 100644
index 000000000000..3cd4a6b053a2
--- /dev/null
+++ b/Documentation/migration-guides/migration-2024.09.0.rst
@@ -0,0 +1,8 @@
+Release v2024.09.0
+==================
+
+Board support
+-------------
+
+The board code of the TQMA8MPXL SoM is now applied to all boards using the SoM
+and not only to the official TQ baseboards.
diff --git a/Documentation/migration-guides/migration-2024.10.0.rst b/Documentation/migration-guides/migration-2024.10.0.rst
new file mode 100644
index 000000000000..de652819dec0
--- /dev/null
+++ b/Documentation/migration-guides/migration-2024.10.0.rst
@@ -0,0 +1,15 @@
+Release v2024.10.0
+==================
+
+Fastboot
+--------
+
+* ``fastboot getvar all`` is now the only way to list fastboot variables.
+  The unintended shortcuts (``"al"``, ``"a"`` and ``""``) are now an error.
+
+* ``fastboot getvar`` no longer aborts the boot countdown as the ``fwupd``
+  fastboot plugin was found to probe some variables automatically,
+  inadvertently halting device boot.
+  Other calls like ``fastboot oem`` or ``fastboot flash`` continue to abort
+  the countdown as before.
+
diff --git a/Documentation/migration-guides/migration-2024.12.0.rst b/Documentation/migration-guides/migration-2024.12.0.rst
new file mode 100644
index 000000000000..9aff9fd88cc1
--- /dev/null
+++ b/Documentation/migration-guides/migration-2024.12.0.rst
@@ -0,0 +1,26 @@
+Release v2024.12.0
+==================
+
+spi-gpio DT bindings
+--------------------
+
+Support for the old deprecated device tree binding has been removed.
+If spi-gpio binding is to be used in barebox, the new binding
+(e.g. ``sck-gpios`` instead of ``gpio-sck``) must be used.
+
+Configuration options
+---------------------
+
+* ``CONFIG_CRYPTO_RSA_KEY`` has been renamed to ``CONFIG_CRYPTO_PUBLIC_KEYS``
+  to reflect that it now accepts multiple entries and is no longer limited
+  to RSA with the addition of ECDSA support.
+
+* ``CONFIG_CRYPTO_RSA_KEY_NAME_HINT`` has been removed. To specify a hint, add it
+  in front of the key into ``CRYPTO_PUBLIC_KEYS``, e.g. ``hint1:file1 hint2:file2``.
+
+LZ4 compression
+---------------
+
+barebox now expects ``lz4`` to be available instead of ``lz4c`` if
+the barebox proper binary is configured to be LZ4-compressed.
+Customizing the name is possible via the ``LZ4`` environment variable.
diff --git a/Documentation/migration-guides/migration-2025.01.0.rst b/Documentation/migration-guides/migration-2025.01.0.rst
new file mode 100644
index 000000000000..d1ff7da9787c
--- /dev/null
+++ b/Documentation/migration-guides/migration-2025.01.0.rst
@@ -0,0 +1,31 @@
+Release v2025.01.0
+==================
+
+Layerscape
+----------
+
+Support for the NXP-specific PPA Secure Monitor has been removed in
+favor of ARM Trusted Firmware-A as the former has been long unmaintained.
+
+I2C Adapter numbering
+---------------------
+
+``i2c0`` to ``i2c31`` are now reserved for I2C adapters with device tree
+aliases. Do not rely on a fixed numbering for other non-aliased adapters.
+
+OP-TEE for Rockchip
+-------------------
+
+The BL32 firmware images are now called ``firmware/rk3XXX-bl32.bin``
+instead of ``firmware/rk3XXX-op-tee.bin``. Raw OP-TEE binaries without
+a header now use the load address the vendor blobs are hardcoded to
+run at instead of the previous ``0x200000``. To override, use an OP-TEE
+image with a header specifying the correct load address.
+
+TFTP
+----
+
+The default TFTP window size has been reverted to 1 as many network
+drivers couldn't cope with the increased throughput.
+This can be reverted by setting ``CONFIG_FS_TFTP_MAX_WINDOW_SIZE``
+or at runtime via the ``global.tftp.windowsize`` variable.
diff --git a/Documentation/migration-guides/migration-2025.02.0.rst b/Documentation/migration-guides/migration-2025.02.0.rst
new file mode 100644
index 000000000000..c585d2e96341
--- /dev/null
+++ b/Documentation/migration-guides/migration-2025.02.0.rst
@@ -0,0 +1,21 @@
+Release v2025.02.0
+==================
+
+Environment Auto-Probe
+----------------------
+
+A new magic variable ``global.env.autoprobe`` now controls whether barebox
+will automatically probe known block devices for a GPT barebox environment
+partition if no environment was specified by other means.
+
+The variable defaults to ``0`` (false) if ``CONFIG_INSECURE`` is disabled.
+
+The most secure option remains disabling ``CONFIG_ENV_HANDLING`` completely
+or, starting with v2025.10.0, using the security policy support for runtime
+access control.
+
+Zynq 7000
+---------
+
+The MMC controller numbering is now fixed: ``mmc0`` & ``mmc1`` for
+``&sdhci0`` and ``&sdhci1`` respectively.
diff --git a/Documentation/migration-guides/migration-2025.03.0.rst b/Documentation/migration-guides/migration-2025.03.0.rst
new file mode 100644
index 000000000000..4f2a25eb3d40
--- /dev/null
+++ b/Documentation/migration-guides/migration-2025.03.0.rst
@@ -0,0 +1,25 @@
+Release v2025.03.0
+==================
+
+OMAP console fixup
+------------------
+
+The option ``CONFIG_DRIVER_SERIAL_NS16550_OMAP_TTYS`` now controls whether
+barebox fixes up ``ttyS`` or ``ttyO`` into the kernel command line
+``console=`` option.
+
+fixed-partitions on SD/MMC
+--------------------------
+
+Linux v6.13-rc1 added ``CONFIG_OF_PARTITION``, which interprets
+``fixed partitions`` nodes in SD/MMC nods differently to the barebox
+behavior: It ignores the GPT/MBR if fixed-partitions are specified,
+instead of allowing them to co-exist like in barebox.
+
+To accommodate both the existing barebox and the new kernel functionality,
+users should replace ``fixed-partitions``-compatible device tree subnodes
+of SD/eMMC with ``barebox,fixed-partitions``.
+
+Similarly, the default for ``global.of_partition_binding`` has been changed
+to the new ``adaptive`` option, which fixes up ``barebox,fixed-partitions``
+except for MTD.
diff --git a/Documentation/migration-guides/migration-2025.04.0.rst b/Documentation/migration-guides/migration-2025.04.0.rst
new file mode 100644
index 000000000000..de7efdf47fe6
--- /dev/null
+++ b/Documentation/migration-guides/migration-2025.04.0.rst
@@ -0,0 +1,12 @@
+Release v2025.04.0
+==================
+
+Boot overrides
+--------------
+
+It's no longer possible to override ``global.bootm.image`` with
+the new ``boot -o`` syntax. This override led to issues when
+substituting wildly different boot image formats.
+
+This feature will likely be added back in future in a more
+conservative form.
-- 
2.47.3



