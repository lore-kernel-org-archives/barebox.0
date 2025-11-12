Delivery-date: Wed, 12 Nov 2025 17:41:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJDuj-000EnV-2a
	for lore@lore.pengutronix.de;
	Wed, 12 Nov 2025 17:41:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJDuj-0004XS-6b
	for lore@pengutronix.de; Wed, 12 Nov 2025 17:41:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Edox8XHD86WJz3XnJB9R7ZpuEKF2Wv5lxZc3y/eozcE=; b=4aM/3yN5yQEm1WV9GHTfYdlCtX
	1W9BXDvtTtoN20kkycsXpSQA+Na976yKkwC5++NVFr9Ja8Q8kGRHFdY+ZtezvFMY3/WoAtJyRYYQC
	uFUmBgcEbMTAnwmENIGoKrIgrCXwr8lJ5+tp4XfOxSpSHdrmmfqulYIk+xBQHe/tik5pKarncvE0Y
	PxILYPpL/5hGzRPcRnBfP9ZrRa4xEK0bKWQ+dKvuyAK83I2wsss0ukK8Jepidb/qy5QcvGlZQAuB+
	FCep7MiG2/a6BHd5F1gdYkDpz/U1nJ+WTiBBSYJCWSeAtmkoFFB6MZ987mVFOzXBXu6mcF3PSg667
	6krX+I/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDuA-00000009CH2-1xm3;
	Wed, 12 Nov 2025 16:41:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDu7-00000009CGJ-2lhM
	for barebox@lists.infradead.org;
	Wed, 12 Nov 2025 16:41:09 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vJDu4-0004OO-AF; Wed, 12 Nov 2025 17:41:04 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Wed, 12 Nov 2025 17:40:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251112-tlv-bytes-v1-1-d0ed7117e814@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAJa4FGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQ0Mj3ZKcMt2kypLUYt0kAwPzREtjY4OkVAsloPqCotS0zAqwWdFKQW7
 OSrG1tQCJhNVfYAAAAA==
X-Change-ID: 20251112-tlv-bytes-b007a9330be8
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=2507; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=u0AuN5uxq2cYhiDRnkwCzoJcc5Rzm2f2Rgtriw1UyYg=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsgU2TH//XUGBc/Kr9kR/43+OXCkXA//entztcb6luDp1
 76n6OWadpSyMIhxMciKKbLEqskpCBn7XzertIuFmcPKBDKEgYtTACZy/AHDf9+1FQsu/Kqvk+pf
 wr55/dK35WcOetUL/VxeH3XQxEPg01OGP1wVt5kWtvLxfugMXMC5sjPkX/Ph2tuPPvw4Fpy5Jnu
 GFSMA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_084107_706171_30299BAF 
X-CRM114-Status: UNSURE (   9.46  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH RFC] bareboxtlv-generator: add raw "bytes"-format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Stores a byte sequence up to the maximum supported length of 65'535
bytes, encoded from and decoded to a hexadecimal representation.

Whitespace in the input string is skipped, allowing for arbitrary
grouping of the hexadecimal digits in the yaml input data.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
I did not end up using this format and no mappings/parsers exist on the
barebox end. Leaving the patch here for future reference.
---
 scripts/bareboxtlv-generator/bareboxtlv-generator.py | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/scripts/bareboxtlv-generator/bareboxtlv-generator.py b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
index aa243d8b06..1fd5a45d43 100755
--- a/scripts/bareboxtlv-generator/bareboxtlv-generator.py
+++ b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
@@ -320,6 +320,18 @@ class FactoryDataset:
                 if len(bin) > 2**16 - 1:
                     raise ValueError(f"String {name} is too long!")
 
+            elif tag_format == "bytes":
+                try:
+                    bin = bytes.fromhex(value)
+                except ValueError:
+                    raise ValueError(f"{name}: Invalid hex string for bytes format")
+                if "length" in tag:
+                    if tag["length"]!=len(bin):
+                        raise ValueError(f"{name}: schema requires this byte sequence to be {tag["length"]} bytes but the given sequence is {len(bin)} byte long.")
+                fmt = f"{len(bin)}s"
+                if len(bin) > 2**16 - 1:
+                    raise ValueError(f"Bytes {name} is too long!")
+
             elif tag_format == "decimal":
                 fmtl = tag["length"]
                 if fmtl == 1:
@@ -451,6 +463,8 @@ class FactoryDataset:
                 value = struct.unpack_from(fmt, bin, data_ptr)[0]
             elif tag_schema["format"] == "string":
                 value = bin[data_ptr : data_ptr + tag_len].decode("UTF-8")  # noqa E203
+            elif tag_schema["format"] == "bytes":
+                value = bin[data_ptr : data_ptr + tag_len].hex()
             elif tag_schema["format"] == "mac-sequence":
                 if tag_len != 7:
                     raise ValueError(f"Tag {name} has wrong length {hex(tag_len)} but expected 0x7.")

---
base-commit: f485ddfccf960959d25462073528d314b8bf1aea
change-id: 20251112-tlv-bytes-b007a9330be8

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



