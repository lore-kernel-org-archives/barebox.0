Delivery-date: Tue, 28 Oct 2025 19:04:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3Z-00Clio-0n
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 19:04:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3U-00018y-Pl
	for lore@pengutronix.de; Tue, 28 Oct 2025 19:04:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dvL9KpF/7dTF9mu/hytxZU1z313fUfLLsOkBFXUVwHk=; b=CT5hKc2AmP7rcVtdbVUtGdg90V
	mHS3uNaJj1mkZdLihHyWit8YO+ftNmIGArWAK+WX3wy3Iv4eXASi7iQQACuFwRr7+r76f0nYzvvET
	anvxmCbeovP6PVok3EVDF+ArP17cpzKuKdhshIa1+6s1WyzPJui78ZjwuLrE2iRlwGpavU5PxHd3r
	KIaCCcPhBrMg9ql4HP7OJls2ZSQnZtRh1Pkw+1Ih+9PO5s/uhmE40oSTSwyWO6HYfukX+5t/uFf/y
	o9kbEsys6c+v/UuXHiT968QGKIu59IbcwJw4p3+/Y6pTl4S2dGNG6ai6y7FF6F2QCXfXA10bJ8X5g
	HYM53T0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2n-0000000GSAO-0iJi;
	Tue, 28 Oct 2025 18:03:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2m-0000000GS9W-0mZy
	for barebox@bombadil.infradead.org;
	Tue, 28 Oct 2025 18:03:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=dvL9KpF/7dTF9mu/hytxZU1z313fUfLLsOkBFXUVwHk=; b=lWym26hNxLB59vNR1sMKV8VJ4l
	rdklzfrQ6BmpwHNKLMDm7x2PYFxWxnVMnYDSL9smSz3pEph9cnozXWpGF4i57ROZRsA7THJlsehAI
	LsTMH3ske7oph54I4kFYsoxPI8axUNPJ/8cyJQp8/ktHBQ0eRvfIT8jDUp2x1mLPUWcSo64fDpT4J
	w0xB3dpPlhM7GQRxBB90hLEIT+Cb8aAkVb6XCa4FPiyu7/xb2+bK9hS/LqCbeHKMlny55LlUPDnXb
	1gIU8t/GHStdAOMk6G4u4jjsPC8AYkz8ioEkVxMzxC+DqOJrDOU0J99DSfoS0R9T/r109iLkzTBJN
	UD/aABaw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDnAz-000000050DT-2fLB
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 17:08:07 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vDo2h-0000PX-BK; Tue, 28 Oct 2025 19:03:35 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 28 Oct 2025 19:03:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-tlv-signature-v2-11-3bafce636ad7@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
In-Reply-To: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=2756; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=DvTg9FOgr+nRZY3iy5O4rnBlVVecN6SyKSebd3TppHs=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkZC0WZDdY9mFh44oZWkp6m5d7/gtbkblX8fkVs2XrD
 01z+2S/vqOUhUGMi0FWTJElVk1OQcjY/7pZpV0szBxWJpAhDFycAjAR5wsM/0ytX8YGWPyTso+3
 6Aj2v7xjfROf84+XU2Use+Vez+t6osXIMJG5fBNny9WI9yk39Z4ub9f7umaf+TrWHx+izvjbT83
 NZwEA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_170805_815973_8D379C2F 
X-CRM114-Status: GOOD (  13.09  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 11/17] common: tlv: default decoder for signed TLV
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



