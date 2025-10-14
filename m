Delivery-date: Tue, 14 Oct 2025 13:03:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8cov-007iJA-2q
	for lore@lore.pengutronix.de;
	Tue, 14 Oct 2025 13:03:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8coq-0003Jh-5j
	for lore@pengutronix.de; Tue, 14 Oct 2025 13:03:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tQERF6VPLA7qWH8skq47IMCNzb74aB33qCvunB5ZYhE=; b=ajf43g9sdiS+043TThuwNUwYzR
	hH74UOXgFe5PXHuPUGGbMfrAQXoQ5xWXWcUM/a7yb/YsO0cB+hfr5f8leyfGn+lpiP+vsWhs5CRNv
	PbaNRm2bjR+1vHTx7Qr3gwNb+ow01qUYk43FqbCkIw4cPGAoKQuIATGTXb8M4bqVHHZVbGGFcA+1j
	SvvPP8aCcuL2i8DCJtAyb2vujwmR3OFDb6K4YjHulxgCvV1XmINA2myAFI1SRKjATkzzBgT/Hj8GI
	K+z2TgelU2swdG8LQ86olQKJJvVI1dTQ6ypeFIGDCb5Jt/LzLRK9zuChI5iBCXqX2zCU33h11kHwx
	qa//8Dxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8coE-0000000G0R4-2GZm;
	Tue, 14 Oct 2025 11:03:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8co6-0000000G0IG-3LMS
	for barebox@lists.infradead.org;
	Tue, 14 Oct 2025 11:03:10 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8co5-0002Tj-Cc; Tue, 14 Oct 2025 13:03:05 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 14 Oct 2025 13:02:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-tlv-signature-v1-7-7a8aaf95081c@pengutronix.de>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=14958; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=z7mN9DGbS1dtPeIByhyiZ+gCv70TcbMiV2AFoOfG3iM=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsh4p/tUxk1TOeXWdaE3CYcCVINb/0zfz8N7s409qut0y
 maHvTWvOkpZGMS4GGTFFFli1eQUhIz9r5tV2sXCzGFlAhnCwMUpABPhNGdkWFmquy121ZYfk/jk
 rA9zsfj1KH7T9lnXUGNVK/42uk83iZFh+afdSeUmF67NXVxqetzbdfZCO+FErSks+74rJdnHzrH
 jBgA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_040307_164330_D8B108B4 
X-CRM114-Status: GOOD (  20.83  )
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
Subject: [PATCH 07/15] scripts: bareboxtlv-generator: Implement signature
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Implement signature and verification for RSA and ECDSA with PKCS1 v1.5
padding and SHA256 hashing based on previous stubs.

Sign the header (consisting of magic, length of the TLV list in bytes,
and a 0 as placeholder for the length of the signature in bytes), and
the TLVs. Store the signature between TLVs and CRC. Include the
signature in the CRC.

The pyca cryptography module and the OpenSSL CLI is required if the
signature features are to be used.

pyca/cryptography does not support PKCS#11 tokens, and no other python
module currently supports this transparently which is why the private
key is accessed via the OpenSSL CLI. This way, any OpenSSL supported
provider can be used e.g. to pass pkcs11-URI's (once pkcs11-provider is
correctly configured for OpenSSL).

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 .../bareboxtlv-generator/bareboxtlv-generator.py   | 242 +++++++++++++++++++--
 scripts/bareboxtlv-generator/requirements.txt      |   1 +
 2 files changed, 225 insertions(+), 18 deletions(-)

diff --git a/scripts/bareboxtlv-generator/bareboxtlv-generator.py b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
index 6174fe91cd..5613f5f0ed 100755
--- a/scripts/bareboxtlv-generator/bareboxtlv-generator.py
+++ b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
@@ -1,7 +1,11 @@
 #!/usr/bin/env python3
 
 import argparse
+import os
+import hashlib
+import shutil
 import struct
+import subprocess
 import sys
 
 import yaml
@@ -14,11 +18,178 @@ except ModuleNotFoundError:
 
 _crc32_mpeg = mkPredefinedCrcFun("crc-32-mpeg")
 
+MAGIC_LENGTH = 12
+SPKI_LENGTH = 4
+
+def openssl(args, stdin: bytes = None) -> bytes:
+    """
+    Invoke the OpenSSL CLI with the given arguments
+
+    Parameters:
+        args: List of arguments for the openssl command (excluding 'openssl' itself)
+        stdin: Input bytes to pass to the command's stdin
+
+    Returns:
+        bytes: stdout of the command
+    """
+    cmd = ["openssl"] + args
+
+    result = subprocess.run(
+        cmd,
+        input=stdin,
+        stdout=subprocess.PIPE,
+        check=True
+    )
+
+    return result.stdout
 
 class MaxSizeReachedException(Exception):
     pass
 
 
+class PrivateKey:
+    """
+    A private key for signing TLVs, requires the cryptography module
+    """
+
+    def __init__(self, path: str | None = None):
+        """
+        Load a private key from:
+        - PKCS#12 (.p12/.pfx)
+        - PEM/DER private key file
+        """
+
+        try:
+            from cryptography.hazmat.primitives import serialization
+        except ModuleNotFoundError:
+            print("Error: missing pyca/cryptography dependency", file=sys.stderr)
+            sys.exit(127)
+
+        if shutil.which("openssl") is None:
+            print("The `openssl` binary is required for cryptographic operations but wasn't found in PATH!")
+            sys.exit(127)
+
+        self.inkey = path
+        self.public_key = serialization.load_pem_public_key(openssl(["pkey", "-pubout", "-in", self.inkey]));
+
+    def sign(self, message: bytes) -> bytes:
+        """
+        Sign message with RSA, or ECDSA automatically based on key type.
+        """
+
+        from cryptography.hazmat.primitives.asymmetric import rsa, ec
+        from cryptography.hazmat.primitives.asymmetric.utils import decode_dss_signature
+
+        # Access private keys only via the openssl cli so that any configured provider, such as pkcs11, can be used.
+        sig = openssl(["pkeyutl", "-sign", "-rawin", "-digest", "sha256", "-inkey", self.inkey], stdin = message)
+
+        if isinstance(self.public_key, rsa.RSAPublicKey):
+            return sig
+        elif isinstance(self.public_key, ec.EllipticCurvePublicKey):
+            r, s = decode_dss_signature(sig)
+            key_bits = self.public_key.curve.key_size
+            assert key_bits % 8 == 0
+            key_bytes = key_bits // 8
+            sig  = r.to_bytes(key_bytes, byteorder="big")
+            sig += s.to_bytes(key_bytes, byteorder="big")
+            return sig
+        else:
+            raise TypeError("Unsupported key type")
+
+    def spki_hash(self) -> bytes:
+        """
+        Four bytes of SHA256 digest of the derived public key's SubjectPublicKeyInfo.
+        Used for faster identification of the key to be used for decryption.
+        """
+        pub = PublicKey(pubkey = self.public_key)
+        return pub.spki_hash()
+
+
+class PublicKey:
+    """
+    A public key for validating TLVs signatures, requires the cryptography module
+    """
+
+    def __init__(self, path: str | None = None, pubkey: bytes | None = None):
+        """
+        Load a private key from:
+        - PKCS#12 (.p12/.pfx)
+        - PEM/DER public key file
+        - existing object
+        """
+        try:
+            from cryptography.hazmat.primitives import serialization
+            from cryptography import x509
+        except ModuleNotFoundError:
+            print("Error: missing pyca/cryptography dependency", file=sys.stderr)
+            sys.exit(127)
+
+        if pubkey is not None:
+            assert path is None
+            self.pubkey = pubkey
+        else:
+            with open(path, "rb") as f:
+                data = f.read()
+
+            if path.endswith((".p12", ".pfx")):
+                privatekey, cert, _ = serialization.pkcs12.load_key_and_certificates(data, password=None)
+                self.pubkey = cert.public_key()
+
+            else:
+                try:
+                    self.pubkey = serialization.load_pem_public_key(data)
+                except ValueError:
+                    try:
+                        self.pubkey = serialization.load_der_public_key(data)
+                    except ValueError:
+                        try:
+                            self.pubkey = x509.load_pem_x509_certificate(data).public_key()
+                        except ValueError:
+                            self.pubkey = serialization.load_pem_public_key(openssl(["pkey", "-pubout", "-in", path]))
+
+    def verify(self, message: bytes, signature: bytes) -> bool:
+        """
+        Verify signature
+        """
+
+        from cryptography.hazmat.primitives import hashes
+        from cryptography.hazmat.primitives.asymmetric import rsa, ec, padding
+        from cryptography.hazmat.primitives.asymmetric.utils import encode_dss_signature
+        from cryptography import exceptions
+
+        try:
+            if isinstance(self.pubkey, rsa.RSAPublicKey):
+                self.pubkey.verify(signature, message, padding.PKCS1v15(), hashes.SHA256())
+            elif isinstance(self.pubkey, ec.EllipticCurvePublicKey):
+                key_bits = self.pubkey.curve.key_size
+                assert key_bits % 8 == 0
+                key_bytes = key_bits // 8
+                r = int.from_bytes(signature[:key_bytes], byteorder="big")
+                s = int.from_bytes(signature[key_bytes:], byteorder="big")
+
+                der_sig = encode_dss_signature(r, s)
+                self.pubkey.verify(der_sig, message, ec.ECDSA(hashes.SHA256()))
+            else:
+                raise TypeError("Unsupported key type")
+            return True
+        except exceptions.InvalidSignature:
+            return False
+
+    def spki_hash(self) -> bytes:
+        """
+        Four bytes of SHA256 digest of the public key's SubjectPublicKeyInfo.
+        Used for faster identification of the key to be used for decryption.
+        """
+
+        from cryptography.hazmat.primitives import serialization
+
+        spki = self.pubkey.public_bytes(
+            encoding=serialization.Encoding.DER,
+            format=serialization.PublicFormat.SubjectPublicKeyInfo,
+        )
+        return hashlib.sha256(spki).digest()[:SPKI_LENGTH]
+
+
 class FactoryDataset:
     """
     Generates TLV-encoded datasets that can be used with Barebox's
@@ -41,8 +212,9 @@ class FactoryDataset:
     # };                                                        #
     #############################################################
 
-    Limitations:
-    * Signing is currently not supported and length_sig is always 0x0.
+    Note:
+    * Signature is preceded with four bytes of pubkey checksum which is included in the length_sig field
+    * The length_sig field is set to zero for signage and must be zeroed before verification
     """
 
     def __init__(self, schema):
@@ -130,7 +302,7 @@ class FactoryDataset:
         """
         self.schema = schema
 
-    def encode(self, data):
+    def encode(self, data, sign: PrivateKey | None = None) -> bytes:
         """
         Generate an EEPROM image for the given data.
 
@@ -138,6 +310,7 @@ class FactoryDataset:
         """
         # build payload of TLVs
         tlvs = b""
+        signature = b""
 
         for name, value in data.items():
             if name not in self.schema["tags"]:
@@ -192,12 +365,20 @@ class FactoryDataset:
 
             tlvs += struct.pack(f">HH{fmt}", tag["tag"], struct.calcsize(fmt), bin)
 
+        sig_len = 0
+
         # Convert the framing data.
-        len_sig = 0x0  # Not implemented.
-        header = struct.pack(">3I", self.schema["magic"], len(tlvs), len_sig)
-        crc_raw = _crc32_mpeg(header + tlvs)
+        header = struct.pack(">3I", self.schema["magic"], len(tlvs), sig_len)
+
+        if sign:
+            # Sign with sig_len = 0, the actual signature length will not be signed!
+            signature = sign.spki_hash() + sign.sign(header + tlvs)
+            # Actual header now with length of the signature
+            header = struct.pack(">3I", self.schema["magic"], len(tlvs), len(signature))
+
+        crc_raw = _crc32_mpeg(header + tlvs + signature)
         crc = struct.pack(">I", crc_raw)
-        bin = header + tlvs + crc
+        bin = header + tlvs + signature + crc
 
         # Check length
         if "max_size" in self.schema and len(bin) > self.schema["max_size"]:
@@ -206,7 +387,7 @@ class FactoryDataset:
             )
         return bin
 
-    def decode(self, bin):
+    def decode(self, bin, pubkey: PublicKey | None = None):
         """
         Decode a TLV-encoded binary image.
 
@@ -218,17 +399,13 @@ class FactoryDataset:
         if len(bin) < 16:
             raise ValueError("Supplied binary is too small to be TLV-encoded data.")
 
-        bin_magic, bin_tlv_len, bin_sig_len = struct.unpack(">3I", bin[:12])
+        bin_magic, bin_tlv_len, bin_sig_len = struct.unpack(">3I", bin[:MAGIC_LENGTH])
         # check magic
         if bin_magic != self.schema["magic"]:
             raise ValueError(f'Magic missmatch. Is {hex(bin_magic)} but expected {hex(self.schema["magic"])}')
 
-        # check signature length
-        if bin_sig_len != 0:
-            raise ValueError("Signature check is not supported!")
-
         # check crc
-        crc_offset = 12 + bin_tlv_len + bin_sig_len
+        crc_offset = MAGIC_LENGTH + bin_tlv_len + bin_sig_len
         if crc_offset > len(bin) - 4:
             raise ValueError("crc location calculated behind binary.")
         bin_crc = struct.unpack(">I", bin[crc_offset : crc_offset + 4])[0]  # noqa E203
@@ -236,8 +413,26 @@ class FactoryDataset:
         if bin_crc != calc_crc:
             raise ValueError(f"CRC missmatch. Is {hex(bin_crc)} but expected {hex(calc_crc)}.")
 
-        ptr = 12
-        while ptr < crc_offset:
+        # check signature length
+        if bin_sig_len != 0 and pubkey is None:
+            print("WARNING: TLV contains a signature but signature verification not enabled via --verify!", file=sys.stderr)
+        elif bin_sig_len == 0 and pubkey is not None:
+            raise ValueError("TLV signature validation was requested but TLV is unsigned.")
+        elif pubkey is not None:
+            sig_offset = MAGIC_LENGTH + bin_tlv_len
+            bin_sig = bin[sig_offset + SPKI_LENGTH : sig_offset + bin_sig_len]
+            spki = bin[sig_offset : sig_offset + SPKI_LENGTH]
+            if spki != pubkey.spki_hash():
+                raise ValueError("TLV signature SPKI mismatch.")
+
+            # verify file excluding signature itself, and excluding signature length field
+            bin_verify = bytearray(bin[:sig_offset])
+            bin_verify[8:12] = struct.pack(">I", 0)
+            if not pubkey.verify(bin_verify, bin_sig):
+                raise ValueError("TLV signature validation failed.")
+
+        ptr = MAGIC_LENGTH
+        while ptr < MAGIC_LENGTH + bin_tlv_len:
             tag_id, tag_len = struct.unpack_from(">HH", bin, ptr)
             data_ptr = ptr + 4
             ptr += tag_len + 4
@@ -299,7 +494,9 @@ def _main():
     parser = argparse.ArgumentParser(description="Generate a TLV dataset for the Barebox TLV parser")
     parser.add_argument("schema", help="YAML file describing the data.")
     parser.add_argument("--input-data", help="YAML file containing data to write to the binary.")
+    parser.add_argument("--sign", help=" When using --input-data: Private key to sign the TLV with.")
     parser.add_argument("--output-data", help="YAML file where the contents of the binary will be written to.")
+    parser.add_argument("--verify", help="When using --output-data: Public key to verify the signature against")
     parser.add_argument("binary", help="Path to where export data to be copied into DUT's EEPROM.")
     args = parser.parse_args()
 
@@ -311,14 +508,23 @@ def _main():
     if args.input_data:
         with open(args.input_data) as d_fh:
             data = yaml.load(d_fh, Loader=yaml.SafeLoader)
-        bin = eeprom.encode(data)
+
+        if args.sign:
+            privkey = PrivateKey(path=args.sign)
+        else:
+            privkey = None
+        bin = eeprom.encode(data, sign=privkey)
         with open(args.binary, "wb+") as out_fh:
             out_fh.write(bin)
 
     if args.output_data:
         with open(args.binary, "rb") as in_fh:
             bin = in_fh.read()
-        data = eeprom.decode(bin)
+        if args.verify:
+            pubkey = PublicKey(path=args.verify)
+        else:
+            pubkey = None
+        data = eeprom.decode(bin, pubkey=pubkey)
         with open(args.output_data, "w+") as out_fh:
             yaml.dump(data, out_fh)
 
diff --git a/scripts/bareboxtlv-generator/requirements.txt b/scripts/bareboxtlv-generator/requirements.txt
index a1f7e3b3f2..9125d46b55 100644
--- a/scripts/bareboxtlv-generator/requirements.txt
+++ b/scripts/bareboxtlv-generator/requirements.txt
@@ -1,2 +1,3 @@
 crcmod
 pyaml
+cryptography[signature]

-- 
2.51.0.297.gca2559c1d6



