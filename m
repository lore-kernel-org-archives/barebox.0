Delivery-date: Mon, 13 Oct 2025 15:57:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8J3Q-007OHa-01
	for lore@lore.pengutronix.de;
	Mon, 13 Oct 2025 15:57:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8J3P-0005eS-Cz
	for lore@pengutronix.de; Mon, 13 Oct 2025 15:57:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TVeB0UxM1AHi5nr9FWgsZLZRjqeYW0n8JA+ZlkDxx2A=; b=WOzzdhtv8UDV40
	J6DnecyIli1YAyeKvU38zAhFUnaNIMKHehcD3OwBcl5NWg3UzStmRHhG/X012B8niTdTNTx/6vaQC
	ehUtdMPUiwnGhXXkEo5v/HA0fMCOdcCctxCdFOzFvIlgowVd5XW3GgWQq91L7EQH2bAHmKWxTR3Ac
	O+7uBzfN7eRtrQARt5xtiySO5GnpGJihSk3Xh/UySuXLohCfKMP0AyzJ7pgNVFnhd/60aG+7XTV8l
	gjWZpiPA59yAV1lWWZofxIo6LCdBtbxeyFsL6Ri2XDnxRwi2SkWyKKfp7uVmagIh5GGyBJoB7JXsC
	TXwaYE3gQWyIxg28WnEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8J2i-0000000DHdH-3D4S;
	Mon, 13 Oct 2025 13:56:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8J2f-0000000DHcQ-3SzC
	for barebox@lists.infradead.org;
	Mon, 13 Oct 2025 13:56:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8J2d-0005W6-FW; Mon, 13 Oct 2025 15:56:47 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8J2d-003OSt-0X;
	Mon, 13 Oct 2025 15:56:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8J2d-0000000Dqkj-0EDF;
	Mon, 13 Oct 2025 15:56:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 13 Oct 2025 15:56:34 +0200
Message-ID: <20251013135645.3282864-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_065649_884086_C2F7E672 
X-CRM114-Status: GOOD (  14.12  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>
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
Subject: [PATCH master] Documentation: migration-2025.09.0: add missing guide
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

v2025.09.0 has been released and it contained multiple things worthy of
a migration notes entry. Add them now.

Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
@Sascha, @Marco, please check if I got the details right. Please try to
update the migration guide yourselves when doing similarly breaking
changes in future. Thanks.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/migration-guides/index.rst      |  6 ++--
 .../migration-guides/migration-2025.09.0.rst  | 33 +++++++++++++++++++
 2 files changed, 35 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-2025.09.0.rst

diff --git a/Documentation/migration-guides/index.rst b/Documentation/migration-guides/index.rst
index 2dfa7f05bb40..a04b2b07c4d3 100644
--- a/Documentation/migration-guides/index.rst
+++ b/Documentation/migration-guides/index.rst
@@ -9,8 +9,6 @@ configuration and downstream board support. barebox API breakage that
 cause build errors are generally out-of-scope for these documents.
 
 .. toctree::
+   :glob:
 
-   migration-2025.05.0
-   migration-2025.06.0
-   migration-2025.07.0
-   migration-2025.08.0
+   migration-20*
diff --git a/Documentation/migration-guides/migration-2025.09.0.rst b/Documentation/migration-guides/migration-2025.09.0.rst
new file mode 100644
index 000000000000..f432991449e9
--- /dev/null
+++ b/Documentation/migration-guides/migration-2025.09.0.rst
@@ -0,0 +1,33 @@
+Release v2025.09.0
+==================
+
+Removal of CONFIG_BOOTM_FITIMAGE_PUBKEY
+---------------------------------------
+
+The legacy way of adding FIT keys to the barebox build was having mkimage
+generate a device tree snippet and including it in the barebox board device
+tree::
+
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
+
+This has now been removed in favor of ``CONFIG_CRYPTO_PUBLIC_KEYS``.
+This option doesn't consume device tree snippets, but file paths to
+the PEM or PKCS#11 URIs and thus will require a build-time OpenSSL dependency.
+
+Build dependencies
+------------------
+
+* Building barebox for 64-bit Rockchip platforms required OpenSSL v3.0 or later.
+  This was unintended and the fix is queued for v2025.10.0.
+
+* ti-linux-firmware 11.00.14 renames ``ti-fs-firmware-am62lx-hs-fs-enc.bin`` to
+  to ``ti-fs-firmware-am62lx-hs-enc.bin`` and ``ti-fs-firmware-am62lx-hs-fs-cert.bin``
+  is renamed to ``ti-fs-firmware-am62lx-hs-cert.bin`` and barebox has followed suit.
+
+Rename in /dev
+--------------
+
+EEPROMs that are pointed at by a device tree alias do no longer have
+an extra 0 at the end, e.g., ``/dev/eeprom00`` has become ``/dev/eeprom0``.
-- 
2.47.3



