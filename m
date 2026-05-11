Delivery-date: Mon, 11 May 2026 17:55:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMSyo-000bLP-1e
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 17:55:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMSyj-0001oj-Dc
	for lore@pengutronix.de; Mon, 11 May 2026 17:55:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=x7ZKF2OwEZL6SJBziN2CwyrwQbnPF1PTda3yC4jInPg=; b=LhGcwx4lM4t2P9ipsSnMeaMvbH
	Or1iy5V0K4AytjSS1FdcfQbQZSOvRgn2rOC1G1pDVQsNUqNoVbuOD5yMLdxhZelAhduOMmLOXQRPi
	E5XWPZSLHI4+WnWQsz6JPCBtLOUoJnOdtxw9qtE6PhppK6sAFDQJJDFrx2OrtFUU9tzVqaVGZ7ptk
	W+6uOBXKWWHwS0oVOnR2zZB3DjR1NpxEWam3J2DyuV9lv92vI4n2KgHsR0iWEDIQdL2Q0InXjWMTZ
	sQjw2ipOqTAnQ/AR0/ULB2RR9822Rnceacy+xMq9NK60W9kvQgxbJrW45LF/I0vkE/9p8k2kQjeMb
	UXf2eepA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMSxG-0000000E7ED-3l9A;
	Mon, 11 May 2026 15:54:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMSxD-0000000E7DP-0ueN
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 15:54:01 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wMSx9-0001Rd-QO; Mon, 11 May 2026 17:53:55 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 11 May 2026 17:53:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260511-rockchip-secure-boot-doc-v1-1-b4339a0d007f@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAI37AWoC/x3M0QpFQBCA4VfRXJ8puyG8is7FGoNJGc0iJe9uc
 /ld/P8NkU04QpvdYHxKFF0T3C8DmsM6McqQDD73VV46h6a00CwbRqbDGHvVHQclDFQ05IpQc+k
 h5ZvxKNe37v7P8wLOoCmIagAAAA==
X-Change-ID: 20260511-rockchip-secure-boot-doc-ac49c14a8e52
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_085359_324567_8BBF4030 
X-CRM114-Status: GOOD (  22.68  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: rk35xx: add secure boot documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While barebox supports secure boot on rk3588, user documentation how to
sign images and enable secure boot is still lacking.

Add this documentation, now.

While at it, add some documentation for the Rockchip image header, too,
to explain how the signature guarantees the integrity and authenticity
of the included barebox image.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 Documentation/boards/rk35xx.rst | 108 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 108 insertions(+)

diff --git a/Documentation/boards/rk35xx.rst b/Documentation/boards/rk35xx.rst
index fe74e10870eb..0fbc58a46332 100644
--- a/Documentation/boards/rk35xx.rst
+++ b/Documentation/boards/rk35xx.rst
@@ -151,3 +151,111 @@ For base functionality, it probably requires only porting the
 Linux clk and pinctrl drivers as well as the boilerplate needed
 for every SoC. Reach out to the :ref:`mailing list <feedback>`
 if you have unsupported hardware.
+
+Rockchip Secure Boot
+--------------------
+
+Rockchip Secure Boot is a Rockchip feature to ensure the integrity and
+legitimacy of the firmware running on a device. The Bootrom verifies that the
+header of a loaded Rockchip image contains a public key that matches a sha265
+hash that is stored in the OTP fuses of the SoC and a signature that can be
+verified with this public key.
+
+This allows to verify that the image has been signed by the owner of the
+private key that was authorized when secure boot was activated on the board.
+
+The Rockchip header especially contains the public key as a Modulus, Exponent,
+and NP triple, and hashes over each code sector in this image. The signature
+comprises the entire rkimage header except for the signature itself. Thus the
+signature verifies that the hashes over the code sectors are trustworthy and,
+indirectly, the code sectors are trustworthy ::
+
+    0x0 +---------------------------------+      -
+        | Magic                           |      |
+   0x78 +---------------------------------+      |
+        | sector                          |--+   | Signed Area
+        | hash                            +  |   |
+  0x200 +---------------------------------+  |   |
+        | Modulus                         |  |   |
+        | Exponent                        |  |   |
+        | NP                              |  |   |
+  0x600 +---------------------------------+  |   -
+        | Signature                       |  |
+  0x800 +---------------------------------+  |
+        | ...                             |  |
+        +---------------------------------+  |
+        | Barebox Prebootloader (PBL)     |<-+
+        | Piggydata (Main Barebox Binary) |
+        +---------------------------------+
+
+The public key is not stored in the OTP due to size reasons, but instead a
+sha256 hash over the public key as contained in the rkimage is stored in the
+OTP. The Bootrom verifies that the hash in the OTP matches the hash of the
+public key.
+
+Signing Rockchip Images
+^^^^^^^^^^^^^^^^^^^^^^^
+
+The Bootrom allows to use RSA-2048 or RSA-4096 keys for verification.
+
+Generate an RSA key pair for image signing and verification::
+
+  $ openssl genrsa -f4 -out <key.pem> 4096
+
+Enable ``CONFIG_ARCH_ROCKCHIP_IMAGE_SIGNED`` and let
+``CONFIG_ARCH_ROCKCHIP_IMAGE_SIGN_KEY`` point to your generated PEM file.
+
+The Rockchip images generated by the barebox build are now signed with the
+configured key.
+
+The ``rk-otp.sh`` script prints the sha256 hash of a key in a PEM file or a key
+embedded into an rkimage. You may verify that the image is actually signed with
+your key by comparing the output of the following two commands::
+
+  $ scripts/rk-otp.sh <key.pem>
+  $ scripts/rk-otp.sh <rkimage>
+
+Secure Boot
+^^^^^^^^^^^
+
+The barebox ``rksecure`` command allows to burn a hash into the OTP and enable
+secure boot at runtime.
+
+Since the secure OTP are only accessible from the secure world, barebox cannot
+directly access the OTP area. In order to write or read the secure OTP from
+barebox, you need an OP-TEE with the rksecure PTA. See the OP-TEE documentation
+how to enable this PTA.
+
+.. note::
+
+   The OP-TEE rksecure PTA is only available in Upstream OP-TEE.
+   Rockchips Downstream OP-TEE blob does not support writing the OTP area and
+   enabling Secure Boot.
+
+Enable the ``rksecure`` command by enabling the following config variables::
+
+  CONFIG_CMD_RKSECURE
+  CONFIG_OPTEE_RKSECURE
+
+The Bootrom also boots signed images if secure boot is not enabled. Thus, you
+may boot the same image used with and without secure boot enabled devices.
+
+You may use the ``rksecure`` command to retrieve the current secure boot status
+and the burned hash from a device::
+
+  barebox$ rksecure -i
+
+To enable secure boot on a device, run the following command. ``<hash>`` is the
+hash returned by the ``rk-otp.sh`` script and ``<bits>`` needs to match the bit
+length of the RSA key that you use for image signing::
+
+  barebox$ rksecure -x <hash> -b <bits> -l
+
+.. warn::
+
+   Once you executed this command on a device, the Bootrom will
+   reject any image that has not been signed with the appropriate RSA key.
+
+You may check the secure boot status again with ``rksecure -i`` and try
+booting an unsigned or corrupted image to verify secure boot is actually
+enabled.

---
base-commit: 019d102038a64e6b6e8f445cbfd2d15e68d0ec3f
change-id: 20260511-rockchip-secure-boot-doc-ac49c14a8e52

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



