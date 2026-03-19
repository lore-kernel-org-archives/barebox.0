Delivery-date: Thu, 19 Mar 2026 08:21:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37hP-002YBk-1z
	for lore@lore.pengutronix.de;
	Thu, 19 Mar 2026 08:21:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37hO-00010O-Th
	for lore@pengutronix.de; Thu, 19 Mar 2026 08:21:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hk1Thx448nZVjhTyueXlRRGoFe3NB5hlke9jblG3OUU=; b=ZZRD3PGqLJJH4n
	l7Es6UkirQ+3J4NT8EKu1Gf+AgM1zm4pkLyx0IXiwSeepjU/R4LR0jsketksra/a4Jn/hQPwAijEN
	JZo9+gV/AXJe38txfujapxpMaGHtG7EXzmuq4M9oh3MDrfVbqgyhtlTYbL9CDueBo5+dHp0IAMFuH
	UqFjjdb/yw4Wpv9E1Jnv73bkd8A4HA51f68hs3p+d/M+SlbOu/rWQdrjMGdoh1VfCGQxxrjlAycPe
	fm2cLbejI7og01TGRy0B1Rt4/EFBIlHDbMQrCuzemPx6ESWdv+wjM2Y+1ycDyWh9dJ+kx4WnonKOk
	cEDeE3YlBqaRsjFtS/uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37gt-0000000A8je-3ARn;
	Thu, 19 Mar 2026 07:21:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37go-0000000A8h2-1GZg
	for barebox@lists.infradead.org;
	Thu, 19 Mar 2026 07:21:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37gm-0000tU-MN; Thu, 19 Mar 2026 08:21:04 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37gm-0012Ga-1b;
	Thu, 19 Mar 2026 08:21:04 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37gm-0000000A54C-1aNC;
	Thu, 19 Mar 2026 08:21:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 19 Mar 2026 08:20:35 +0100
Message-ID: <20260319072035.2389862-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_002106_338603_51ECBE64 
X-CRM114-Status: GOOD (  12.09  )
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
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
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
Subject: [PATCH v2] scripts: bareboxtlv-generator: add engine support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a -engine option to optionally use engine e.g. to support PKCS# URIs
via engine.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../bareboxtlv-generator.py                   | 20 +++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/scripts/bareboxtlv-generator/bareboxtlv-generator.py b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
index 806d2d8b94..b568e13a37 100755
--- a/scripts/bareboxtlv-generator/bareboxtlv-generator.py
+++ b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
@@ -47,11 +47,12 @@ class PrivateKey:
     A private key for signing TLVs, requires the cryptography module
     """
 
-    def __init__(self, path: str | None = None):
+    def __init__(self, path: str | None = None, engine: str | None = None):
         """
         Load a private key from:
         - PKCS#12 (.p12/.pfx)
         - PEM/DER private key file
+        - Engine-backed key (e.g. PKCS#11 URI with --engine pkcs11)
         """
 
         try:
@@ -65,7 +66,13 @@ class PrivateKey:
             sys.exit(127)
 
         self.inkey = path
-        self.public_key = serialization.load_pem_public_key(openssl(["pkey", "-pubout", "-in", self.inkey]));
+        if engine:
+            pkey_args = ["-engine", engine, "-inform", "engine"]
+            self.pkeyutl_args = ["-engine", engine, "-keyform", "engine"]
+        else:
+            pkey_args = []
+            self.pkeyutl_args = []
+        self.public_key = serialization.load_pem_public_key(openssl(["pkey"] + pkey_args + ["-pubout", "-in", self.inkey]));
 
     def sign(self, message: bytes) -> bytes:
         """
@@ -75,8 +82,8 @@ class PrivateKey:
         from cryptography.hazmat.primitives.asymmetric import rsa, ec
         from cryptography.hazmat.primitives.asymmetric.utils import decode_dss_signature
 
-        # Access private keys only via the openssl cli so that any configured provider, such as pkcs11, can be used.
-        sig = openssl(["pkeyutl", "-sign", "-rawin", "-digest", "sha256", "-inkey", self.inkey], stdin = message)
+        # Access private keys only via the openssl cli so that any configured engine/provider, such as pkcs11, can be used.
+        sig = openssl(["pkeyutl"] + self.pkeyutl_args + ["-sign", "-rawin", "-digest", "sha256", "-inkey", self.inkey], stdin = message)
 
         if isinstance(self.public_key, rsa.RSAPublicKey):
             return sig
@@ -503,7 +510,8 @@ def _main():
     parser = argparse.ArgumentParser(description="Generate a TLV dataset for the Barebox TLV parser")
     parser.add_argument("schema", help="YAML file describing the data.")
     parser.add_argument("--input-data", help="YAML file containing data to write to the binary.")
-    parser.add_argument("--sign", help=" When using --input-data: Private key to sign the TLV with.")
+    parser.add_argument("--sign", help="When using --input-data: Private key to sign the TLV with.")
+    parser.add_argument("--engine", help="OpenSSL engine to use for private key operations (e.g. pkcs11).")
     parser.add_argument("--output-data", help="YAML file where the contents of the binary will be written to.")
     parser.add_argument("--verify", help="When using --output-data: Public key to verify the signature against")
     parser.add_argument("binary", help="Path to where export data to be copied into DUT's EEPROM.")
@@ -519,7 +527,7 @@ def _main():
             data = yaml.load(d_fh, Loader=yaml.SafeLoader)
 
         if args.sign:
-            privkey = PrivateKey(path=args.sign)
+            privkey = PrivateKey(path=args.sign, engine=args.engine)
         else:
             privkey = None
         bin = eeprom.encode(data, sign=privkey)
-- 
2.47.3



