Delivery-date: Tue, 20 Jan 2026 17:12:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viEKt-003Rb9-09
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 17:12:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viEKs-0001Xb-1T
	for lore@pengutronix.de; Tue, 20 Jan 2026 17:12:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=30OU4toLqo6ei+bk1wVzJInqIYw19Vfc7p6865CNeOk=; b=CIBwQfNnxiSSmHKD8WsSStZSLs
	Apa0Zb95glnJJ2mQWT6cz93ojbRBtBv69WxydzNj6LaJKC5bS1AwOXbloDLpdcLugm2b3XEzrUOHJ
	uNK0s18JLWn/MAmLZzBSvj6J+x1ZAxAewJcRySWIe0MHBBwTjIiYNffheVnfN4cemzXZYid6RPtz7
	QPFGkhb1ZWyMVey75XMv85nG2B0n5aDyVAopY2xkTc8M9vO8Ui8kmws4/ya2+fS+oNbmZNeDBAK22
	8yJwRuw77+IKBYmR1kVjti2Vjt6sv6kawvM9PHXvy5UUIvBpqnfdNgqv3iRDzPyIFXpiW3sEyFubn
	WIlzAcww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viEKM-000000048No-103w;
	Tue, 20 Jan 2026 16:11:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viEKK-000000048NW-3tJC
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 16:11:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=30OU4toLqo6ei+bk1wVzJInqIYw19Vfc7p6865CNeOk=; b=kYQQwcf2qBuvvxG1py9gh+A3FH
	VPagyydmj22N/x+udIR5Zpua2wRZj6bz5yriE/DAsD0ZCJQI6CCASpV6vaduPg/LJWf9f/urHeqMg
	xfPNKLE/FFchSVRJoWbTgqPFKQiSXQsHjF4BgtdqhyVn4yFJNzQtgrDuwt1ltTmBM65/mYXqNbQxx
	Qaxr/PZo6QBzahDvxc5x+SGxTC9HVrEMH01sruxZ1ADCBap/ofcX8QRRPArheUtyK0z87BJBvIdjd
	EDkU5pSuuL9W2NsNBogW56g2GFIgQ25qbBYMwP37A0DeSF/AtBgX10AgmVYaSeyEGMNkfPprclcy7
	/yZ+yqow==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viEKI-0000000ENhP-02yA
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 16:11:31 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1viEKH-0001Ie-F5; Tue, 20 Jan 2026 17:11:29 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 20 Jan 2026 17:11:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-tlv_bind_serial-v3-2-91db0e4b07fb@pengutronix.de>
References: <20260120-tlv_bind_serial-v3-0-91db0e4b07fb@pengutronix.de>
In-Reply-To: <20260120-tlv_bind_serial-v3-0-91db0e4b07fb@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=2236; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=KkOLobFq+MMtTlX9/R6iMvp00SIjgYarGcTQmpFXSGE=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjMX2mwRCF92aoN4ounJJ5O63wu0vnibMjq2C/MklkeN
 +ZxCT5q6yhlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAEzkciUjww7no+Kn7Xfb2V2X
 2NL6LD3E4u7U21yzVL44ZfAfz2R/8Jbhr3jwtoO3TFfN05nq6FYRtFk8Tf5wRUdkn1WdIQeb+p1
 mfgA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_161130_179518_71719E8C 
X-CRM114-Status: UNSURE (   8.85  )
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
Subject: [PATCH v3 2/2] bareboxtlv-generator: add raw "bytes"-format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Stores a byte sequence up to the maximum supported length of 65'535
bytes, encoded from and decoded to a hexadecimal representation.

Whitespace in the input string is skipped, allowing for arbitrary
grouping of the hexadecimal digits in the yaml input data.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
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

-- 
2.51.2.535.g419c72cb8a



