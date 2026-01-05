Delivery-date: Mon, 05 Jan 2026 15:33:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcldr-001YBo-1g
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 15:33:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcldq-0004dk-Tu
	for lore@pengutronix.de; Mon, 05 Jan 2026 15:33:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0LNRvEPxj8pCtpED2FvMxgPZkCmAi6pp0XYt5RgyjMM=; b=JRt8y2IiiMfN421Bo6AkkCRyWv
	2OVnQG18CnpEVOed5uFoCdd9/6UMx8QxpxoZO6e4eSf+kx8oYEhaJstJg/NDsKxtk2g/Mndum08pk
	vpCH4lsJAb8gyXUvwtBsWKxhwWnCZl6kxz8drW50iysBd/+wrFCUublHY09ozxU2CF2lPxeJPufM9
	oNIxkJk7C8x61/SfEst2oOCI3TEivwYJcHbOBCZplGmfZ1FR26hDkd65LJuBZWD9Hjx98GHzOCAnM
	6TrOmg6101wwcKGO0v/IciWkd5JhZLlTdhC+68kn1sy39yghFwI781TtbpO2Di6hv8095V/EzazFN
	kaz/3EGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcldS-0000000BXgK-0a2B;
	Mon, 05 Jan 2026 14:32:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcldL-0000000BXd7-2rKf
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 14:32:37 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vcldI-0004R0-6F; Mon, 05 Jan 2026 15:32:32 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 05 Jan 2026 15:32:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-rockchip-secure-boot-v1-1-eaf5053a7d7e@pengutronix.de>
References: <20260105-rockchip-secure-boot-v1-0-eaf5053a7d7e@pengutronix.de>
In-Reply-To: <20260105-rockchip-secure-boot-v1-0-eaf5053a7d7e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_063235_726507_67024DFD 
X-CRM114-Status: GOOD (  10.95  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH RFC 1/3] scripts: rockchip: add script to calculate key
 hash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The script calculates the key hash that needs to be written to the fuses
of a Rockchip rk3588 SoC to enable secure boot.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 scripts/rk-otp.sh | 70 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/scripts/rk-otp.sh b/scripts/rk-otp.sh
new file mode 100755
index 000000000000..f059f74aa563
--- /dev/null
+++ b/scripts/rk-otp.sh
@@ -0,0 +1,70 @@
+#!/usr/bin/env bash
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# rk-otp.sh - Print the key hash that needs to be written to the OTP of a
+# Rockchip SoC to enable secure boot.
+
+set -e
+
+if [ "$#" -lt "1" ]; then
+    echo "Usage: $0 [FILE]>"
+    exit 1
+fi
+
+FILE=$1
+
+# Pad INPUT to SIZE bytes and reverse byte order
+pad_reverse () {
+    SIZE=$1
+    INPUT=$2
+
+    # A byte consists of two hex values
+    SIZE=$((SIZE * 2))
+
+    # Pad using sed since numbers are too large
+    PAD=$(printf "%0${SIZE}x" 0 | sed -nE "s/0{${#INPUT}}$/${INPUT}/p")
+
+    # TODO Replace bashism with POSIX sh
+    REVERSE=""
+    for (( i = 0; i < SIZE; i += 2 )); do
+        REVERSE+="${PAD:${SIZE} - 2 - $i:2}"
+    done
+
+    echo "$REVERSE"
+}
+
+rkss_read () {
+    RKSS=$1
+
+    # Extract the public key from the image
+    xxd -ps -s 512 -l 560 "$RKSS"
+}
+
+pem_read () {
+    PEM=$1
+
+    KEY=$(openssl rsa -in "$PEM" -pubin -modulus -text -noout)
+    # Extract size of key in bits
+    KEY_SIZE=$(echo "$KEY" | sed -nE 's/Public-Key: \(([0-9]+) bit\)/\1/p')
+
+    # Extract modulus as hex value
+    MODULUS=$(echo "$KEY" | sed -nE 's/Modulus=([0-9ABCDEF]+)/\1/p')
+    # Extract exponent and convert it to hex value
+    EXPONENT=$(echo "$KEY" | sed -nE 's/Exponent: ([0-9]+) (.*)/obase=16;\1/p' | BC_LINE_LENGTH=0 bc)
+    # Calculate acceleration factor as hex value
+    NP=$(echo "ibase=16;modulus=$MODULUS;ibase=A;obase=16;2 ^ ($KEY_SIZE + 132) / modulus" | BC_LINE_LENGTH=0 bc)
+
+    # Build the public key with padding in reverse byte order
+    pad_reverse 512 "$MODULUS"
+    pad_reverse 16 "$EXPONENT"
+    pad_reverse 32 "$NP"
+}
+
+if [ "$(head -c 4 "$FILE")" = "RKSS" ]; then
+    KEYHEX=$(rkss_read "$FILE")
+else
+    KEYHEX=$(pem_read "$FILE")
+fi
+
+# Convert hex format of public key to binary and calculate sha256 as hex
+echo "$KEYHEX" | xxd -r -p | sha256sum | sed -nE 's/([0-9abcdef]+).*/\1/p'

-- 
2.47.3



