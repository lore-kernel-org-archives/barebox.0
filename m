Delivery-date: Thu, 06 Nov 2025 16:19:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lm-00FytV-0V
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 16:19:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vH1lg-000737-DX
	for lore@pengutronix.de; Thu, 06 Nov 2025 16:19:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dvL9KpF/7dTF9mu/hytxZU1z313fUfLLsOkBFXUVwHk=; b=cwQxMYMQO709O2l0Ag6uHwiB/1
	GUVAMp6J5SMgbJJYqH+iBJDq+DkmehsGydkZ1eO17A2QVMptRzInABy5v1GgM0NAs3itMbG6CJZcG
	Wx/t8HyaRI+ffrc90xTviN3Kczk9HOD/d3yvZj81U305SNZPCv5bwzCK5t30UAM1x4lJ3gh9B33oi
	c+CutSg6eE/LC+7fnwOyiMEhtOJeosroDOtBm014XruugYvkejQZ0LLm8N8m6hQOwGw5sOcseYa47
	WMJmkv9ZieWItsQ/1bHu7HNpOoD1lXP/a2ZmYR6MT/N3ZM1/J74Dq15/4PUNFyfDFlKF75TeL6nra
	M2lNW9uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1ky-0000000Fnfl-3ATb;
	Thu, 06 Nov 2025 15:18:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH1kq-0000000FnUV-3IsO
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 15:18:34 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vH1kZ-0005tl-3G; Thu, 06 Nov 2025 16:18:11 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 06 Nov 2025 16:18:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-tlv-signature-v3-11-5d00ed378e75@pengutronix.de>
References: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
In-Reply-To: <20251106-tlv-signature-v3-0-5d00ed378e75@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=2756; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=DvTg9FOgr+nRZY3iy5O4rnBlVVecN6SyKSebd3TppHs=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjk2aOfUv2pJaVoeYh0ibLbw51y/rs2351ZFCjJmGfh2
 KHHZf+8o5SFQYyLQVZMkSVWTU5ByNj/ulmlXSzMHFYmkCEMXJwCMJGlMowM/SI866PMfGafrRJ+
 1/2u82LO1kxr3+6QVWaMXnWnZlSyMTJ8vz/lZH7d8otnBZ137jfxL/xwXz72qZnyncCNF853rtz
 JBwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_071830_087800_F17AB762 
X-CRM114-Status: GOOD (  13.31  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 11/17] common: tlv: default decoder for signed TLV
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Introduce a second default decoder that behaves just like barebox_tlv_v1
but uses the "tlv-generic" keyring.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 .../devicetree/bindings/nvmem/barebox,tlv.yaml     |  1 +
 common/tlv/barebox.c                               | 25 +++++++++++++++++++++-
 include/tlv/format.h                               |  1 +
 3 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml b/Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml
index 7a77b9a0b4..7d678ee04a 100644
--- a/Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml
+++ b/Documentation/devicetree/bindings/nvmem/barebox,tlv.yaml
@@ -22,6 +22,7 @@ properties:
     items:
       - enum:
         - barebox,tlv-v1        # magic: 0x61bb95f2
+        - barebox,tlv-v1-signed # magic: 0x61bb95f3
         - lxa,tlv-baseboard-v1  # magic: 0xbc288dfe
         - lxa,tlv-powerboard-v1 # magic: 0xdca5a870
       - const: barebox,tlv
diff --git a/common/tlv/barebox.c b/common/tlv/barebox.c
index b941463b31..24de3eeaaa 100644
--- a/common/tlv/barebox.c
+++ b/common/tlv/barebox.c
@@ -177,16 +177,39 @@ static struct of_device_id of_matches[] = {
 	{ .compatible = "barebox,tlv-v1" },
 	{ /* sentinel */}
 };
+static struct of_device_id of_matches_signed[] = {
+	{ .compatible = "barebox,tlv-v1-signed" },
+	{ /* sentinel */ }
+};
 
 static struct tlv_decoder barebox_tlv_v1 = {
 	.magic = TLV_MAGIC_BAREBOX_V1,
 	.driver.name = "barebox-tlv-v1",
 	.driver.of_compatible = of_matches,
 	.mappings = mappings,
+	.signature_keyring = NULL,
+};
+
+static struct tlv_decoder barebox_tlv_v1_signed = {
+	.magic = TLV_MAGIC_BAREBOX_V1_SIGNED,
+	.driver.name = "barebox-tlv-v1-signed",
+	.driver.of_compatible = of_matches_signed,
+	.mappings = mappings,
+	.signature_keyring = "tlv-generic",
 };
 
 static int tlv_register_default(void)
 {
-	return tlv_register_decoder(&barebox_tlv_v1);
+	int err;
+
+	err = tlv_register_decoder(&barebox_tlv_v1);
+	if (err)
+		return err;
+	if (IS_ENABLED(CONFIG_TLV_SIGNATURE)) {
+		err = tlv_register_decoder(&barebox_tlv_v1_signed);
+		if (err)
+			return err;
+	}
+	return 0;
 }
 device_initcall(tlv_register_default);
diff --git a/include/tlv/format.h b/include/tlv/format.h
index cbe0a132b1..ab12f0c9bb 100644
--- a/include/tlv/format.h
+++ b/include/tlv/format.h
@@ -23,6 +23,7 @@
 #include <linux/build_bug.h>
 
 #define TLV_MAGIC_BAREBOX_V1		0x61bb95f2
+#define TLV_MAGIC_BAREBOX_V1_SIGNED	0x61bb95f3
 #define TLV_MAGIC_LXA_BASEBOARD_V1	0xbc288dfe
 #define TLV_MAGIC_LXA_POWERBOARD_V1	0xc6895c21
 #define TLV_MAGIC_LXA_IOBOARD_V1	0xdca5a870

-- 
2.51.2.535.g419c72cb8a



