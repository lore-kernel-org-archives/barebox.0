Delivery-date: Tue, 14 Oct 2025 13:04:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8cp2-007iJv-2R
	for lore@lore.pengutronix.de;
	Tue, 14 Oct 2025 13:04:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8cp1-0003UA-7t
	for lore@pengutronix.de; Tue, 14 Oct 2025 13:04:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KXavZKmwMo0HYQgBsn5hyh3TX9vqbwROa8GUhgd5L5M=; b=di1xOz914RwtVQc/2LQEfcbmDq
	5RvcpjOGIgyOws9k20p2hK5jDS54V5+HvRhiJyuawCbKRenY/F5HiaGrmtXDcjPhJOysXUnnVwXoZ
	FNxak5fwXziLV9/n2g5VL64BoI7y1N/InRjC6WWg4jQK+alxu2xNYmZNkCk3HMgcbUvNR/en7wC7U
	Gt8E8acxvHOrTJvJIqY8uicW/B8qWKLEG3+YUbZa259PfTB7Fu2ZpAVcXtjWfw6vAbfAlbJPV75Pv
	TtvoCloxQHmepGy7hVmmLEXjmQ0Esu19RtY5PmOQmN3iQkStHRQBJoGiC8x9zCNCaLavTdkjGjssf
	oYArBAvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8coP-0000000G0dC-1kzi;
	Tue, 14 Oct 2025 11:03:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8coO-0000000G0bO-1vpb
	for barebox@bombadil.infradead.org;
	Tue, 14 Oct 2025 11:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=KXavZKmwMo0HYQgBsn5hyh3TX9vqbwROa8GUhgd5L5M=; b=Nsf33wKcpAL8zKz2Uud/c4JbSc
	RdFqNlJKp7svijFQ5JC/LVs2FNYGw1B6kXmIkFTqK2ULeGMXh65/MbufPVvHFVQLzVrMYTREhgp6J
	brhLqEgIpGfP9O8zorTifvVCqdPzdvRgjZeazPhy/XNBVXfbMAthRrVA9SZiGPubPOKMWhvFmBQuA
	b5ol5D6BDfqnM4GCMrs/yiKh/cpZUhUAUYIKTS8xbhXUymDqDE5F3+ZL1S6aERu2QXFKKdI7B9juR
	bpSChz8B/C+l5YwrVXRTPiBDlmI75rq0udtz4/gKAEqg9EKV/5D/ZTV1V9FO26r5ZyRSsnIp2tRKH
	xLMYKpIA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8co8-000000056ko-1lXx
	for barebox@lists.infradead.org;
	Tue, 14 Oct 2025 11:03:20 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8co5-0002Tj-Fs; Tue, 14 Oct 2025 13:03:05 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 14 Oct 2025 13:03:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-tlv-signature-v1-10-7a8aaf95081c@pengutronix.de>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=2740; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=etK4TwrdLw1ja3om6ww1SuVDZs4w8rBG5BTrxEzmnSg=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsh4p/tsa3yTY/t5/pMKPGmBa3nfLnQR+LKDf8Xjo0ceX
 /3Fdmrry45SFgYxLgZZMUWWWDU5BSFj/+tmlXaxMHNYmUCGMHBxCsBEroYzMhxQs5bQa449bvAz
 8LN408SjNn8Mf1ty/l0kdn/usqJve08yMqxa97zyWlz/X+a9B3iEZ3aw8hhz+GQvLHv9/NKml8W
 TX7ABAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_120308_989016_088445F4 
X-CRM114-Status: GOOD (  12.83  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 10/15] common: tlv: default decoder for signed TLV
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Introduce a second default encoder that behaves just like barebox_tlv_v1
but uses the "tlv" keyring.

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
index b941463b31..d4970e6ebf 100644
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
+	.signature_keyring = "tlv",
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
2.51.0.297.gca2559c1d6



