Delivery-date: Tue, 28 Oct 2025 19:04:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3i-00ClnP-0Q
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 19:04:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDo3d-0001HY-Qy
	for lore@pengutronix.de; Tue, 28 Oct 2025 19:04:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ldVEMmSff54aoGTeUc9jEftSV3fsrSzombZnL3zPcDM=; b=yUrScUoGPTpH4O8SYhEfPvCU7y
	DCtFOyHJoyyUIPqHHoE3Eo7NjmXU+c+KBKDfibrZ89tZAknAU6D3x30PE7rsmdvVcxRIoK/kyS/zR
	wz1xLOWp+Ensqx+2ScdmXpnjYq1kTl4jNOo9SA0ehCtCF15ejI60o0eNb7HKlatPfYm5U5lWcPMrV
	Vaib6CyZArO+SaDCglPI4/ovoIVIZVygI0Gnv14tdWkaWcWGkEFU9hUpP5gxp67IMJpu6vnCSr8d1
	N7n8uDTv/PafPIBfB7qsVP3emmukxF5nZIX6ACSE3L8RY23fsd8DXGvv3wuQxugGRd6emnGdtdmnM
	IAldfsJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2u-0000000GSHM-3thB;
	Tue, 28 Oct 2025 18:03:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDo2o-0000000GSAW-03NN
	for barebox@bombadil.infradead.org;
	Tue, 28 Oct 2025 18:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ldVEMmSff54aoGTeUc9jEftSV3fsrSzombZnL3zPcDM=; b=bNS3ZbSOkUPlzYU8YcAce/VU02
	A5DPp5Hhec/YwykMdTzkQOh7o8Gn8Vykakoq04pn1tQl+c8d6QYPYJafosXe8l+cAR0vAYSZjU/yP
	szVx4L8fZruXxGM0syIBzKtsV+U6C7WxP2p57tRTwMpnZkLyWAYO+M39TP5/5AEydVcOEeTWc/IBH
	X5Bh8mVo6wlC7mLaKRULGR3gv80RCh5N4YbMvn9sujJQw3UOxhQ8HUG+GklTOG2rutCgjXahS4I31
	PIXpRax0Nrg7NqzLlGano5Ahdbl2x77/7n9WIaRjt0Z87hTqYuT8Rv6xiadhAvq1dDxFpyOZNwkrc
	8LuXgheA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDnAz-000000050DY-2azG
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 17:08:09 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vDo2h-0000PX-EL; Tue, 28 Oct 2025 19:03:35 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 28 Oct 2025 19:03:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-tlv-signature-v2-13-3bafce636ad7@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
In-Reply-To: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=15682; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=zfLmEji6pT6YlWqIpUH0E4Dw5yKaVcch0K5F5a8ndmM=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshkZC3R7n7T6fmkTTzY0u1yb1H8v3W7m8QCrQy09m5cV
 nlsX9TPjlIWBjEuBlkxRZZYNTkFIWP/62aVdrEwc1iZQIYwcHEKwERMWRkZNodeKjyorJjOk5Sv
 eDXBjSu0Y6KQU+3GKUa9J+uKJjLWMDIcXFvpNV36J8OByWvnmp3qEBQxy11hdeD4Bakoz++1F5u
 5AQ==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_170805_861482_26AD4312 
X-CRM114-Status: GOOD (  14.20  )
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
Subject: [PATCH v2 13/17] test: py: add signature to TLV integration tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add TLV signature to TLV integration tests:
 - Signed TLV using development RSA key
 - Modify payload and fix CRC for a "tampered" tlv
 - Include both cases in generator and tlv-command tests.

Use the keys selected by CRYPTO_BUILTIN_DEVELOPMENT_KEYS for all TLV
testing. Consequentially add the matching private keys from the public
repository at [1].

[1]: https://git.pengutronix.de/cgit/ptx-code-signing-dev/

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 crypto/fit-4096-development.key  |  51 ++++++++++
 crypto/fit-ecdsa-development.key |   5 +
 test/py/test_tlv.py              | 206 +++++++++++++++++++++++++++++++--------
 3 files changed, 221 insertions(+), 41 deletions(-)

diff --git a/crypto/fit-4096-development.key b/crypto/fit-4096-development.key
new file mode 100644
index 0000000000..526cdfc2b5
--- /dev/null
+++ b/crypto/fit-4096-development.key
@@ -0,0 +1,51 @@
+-----BEGIN RSA PRIVATE KEY-----
+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
+-----END RSA PRIVATE KEY-----
diff --git a/crypto/fit-ecdsa-development.key b/crypto/fit-ecdsa-development.key
new file mode 100644
index 0000000000..2b13c877a3
--- /dev/null
+++ b/crypto/fit-ecdsa-development.key
@@ -0,0 +1,5 @@
+-----BEGIN EC PRIVATE KEY-----
+MHcCAQEEIEsUW5DEOhD1CYHCnPfDULwbRQO9Yjt2/xM5SoY2GUQtoAoGCCqGSM49
+AwEHoUQDQgAEowCa2OYfPdGRr1JpSYONOA3N2jwJjGbPbfG6uBzKg1VqOOk0a/Vf
+BfEbQev6X96HCd6zvvC2tjBgvICW8UB0TQ==
+-----END EC PRIVATE KEY-----
diff --git a/test/py/test_tlv.py b/test/py/test_tlv.py
index be579629b2..9fb3110cb8 100644
--- a/test/py/test_tlv.py
+++ b/test/py/test_tlv.py
@@ -4,6 +4,7 @@ import sys
 import os
 import re
 import subprocess
+import struct
 from pathlib import Path
 from .helper import skip_disabled
 import pytest
@@ -16,21 +17,94 @@ except ModuleNotFoundError:
 
 
 class _TLV_Testdata:
-    def generator(self, args, check=True):
+    def generator(self, args, expect_failure=False, input=None):
         cmd = [os.sys.executable, str(self.generator_py)] + args
-        res = subprocess.run(cmd, text=True)
-        if check and res.returncode != 0:
-            raise RuntimeError(f"generator failed ({res.returncode}): {res.stdout}\n{res.stderr}")
+        res = subprocess.run(cmd, text=True, input=input, encoding="utf-8", capture_output=True)
+        if res.returncode == 127:
+            pytest.skip("test skipped due to missing host dependencies")
+        if res.returncode == 0 and expect_failure:
+            raise RuntimeError(
+                f"`{' '.join(cmd)}` succeded unexpectedly:\n{res.stderr}\n{res.stdout}"
+            )
+        elif res.returncode != 0 and not expect_failure:
+            raise RuntimeError(
+                f"`{' '.join(cmd)}` failed unexpectedly with {res.returncode}:\n{res.stderr}\n{res.stdout}"
+            )
         return res
 
+    def overwrite_magic(self, new_magic):
+        with open(self.schema, "r", encoding="utf-8") as f:
+            patched_schema = "".join(
+                re.sub(r"^magic:\s*0x[a-fA-F0-9]{8}\s*$", f"magic: {new_magic}\n", line)
+                for line in f
+            )
+        return patched_schema
+
+    def tlv_gen(self, outfile, magic=None, sign=None):
+        param = ["--input-data", str(self.data)]
+        if sign:
+            param += ["--sign", str(sign)]
+        if magic:
+            param += ["/dev/stdin"]
+        else:
+            param += [str(self.schema)]
+        param += [str(outfile)]
+        ret = self.generator(param, input=self.overwrite_magic(magic) if magic else None)
+        assert outfile.exists(), f"TLV {outfile} not created from {' '.join(param)}"
+        return ret
+
+    def tlv_read(self, binfile, magic=None, verify=None, expect_failure=False):
+        param = ["--output-data", "/dev/null"]
+        if verify:
+            param += ["--verify", str(verify)]
+        if magic:
+            param += ["/dev/stdin"]
+        else:
+            param += [str(self.schema)]
+        param += [str(binfile)]
+        ret = self.generator(
+            param,
+            input=self.overwrite_magic(magic) if magic else None,
+            expect_failure=expect_failure,
+        )
+        return ret
+
+    def corrupt(self, fnin, fnout, fix_crc=False):
+        try:
+            from crcmod.predefined import mkPredefinedCrcFun
+        except ModuleNotFoundError:
+            pytest.skip("test skipped due to missing dependency python-crcmod")
+            return
+
+        _crc32_mpeg = mkPredefinedCrcFun("crc-32-mpeg")
+
+        with open(fnin, "r+b") as f:
+            data = bytearray(f.read())
+        data[0x20] ^= 1
+        if fix_crc:
+            crc_raw = _crc32_mpeg(data[:-4])
+            crc = struct.pack(">I", crc_raw)
+            data[-4:] = crc
+        with open(fnout, "wb") as f:
+            f.write(data)
+
     def __init__(self, testfs):
         self.dir = Path(testfs)
         self.scripts_dir = Path("scripts/bareboxtlv-generator")
         self.data = self.scripts_dir / "data-example.yaml"
         self.schema = self.scripts_dir / "schema-example.yaml"
         self.generator_py = self.scripts_dir / "bareboxtlv-generator.py"
-        self.unsigned_bin = self.dir / 'unsigned.tlv'
-        self.corrupted_bin = self.dir / 'unsigned_corrupted.tlv'
+        self.privkey_rsa = Path("crypto/fit-4096-development.key")
+        self.pubkey_rsa = Path("crypto/fit-4096-development.crt")
+        self.privkey_ecdsa = Path("crypto/fit-ecdsa-development.key")
+        self.pubkey_ecdsa = Path("crypto/fit-ecdsa-development.crt")
+        self.unsigned_bin = self.dir / "unsigned.tlv"
+        self.corrupted_bin = self.dir / "unsigned_corrupted.tlv"
+        self.signed_bin = self.dir / "signed.tlv"
+        self.ecdsa_signed_bin = self.dir / "ecdsa-signed.tlv"
+        self.tampered_bin = self.dir / "signed-tampered.tlv"
+        self.tampered_ecdsa_bin = self.dir / "ecdsa-signed-tampered.tlv"
+
 
 @pytest.fixture(scope="module")
 def tlv_testdata(testfs):
@@ -38,49 +112,99 @@ def tlv_testdata(testfs):
         pytest.skip("missing crcmod dependency")
 
     t = _TLV_Testdata(testfs)
-    t.generator(["--input-data", str(t.data), str(t.schema), str(t.unsigned_bin)])
-    assert t.unsigned_bin.exists(), "unsigned TLV not created"
 
-    with open(t.unsigned_bin, 'r+b') as f:
-        data = bytearray(f.read())
-    data[0x20] ^= 1
-    with open(t.corrupted_bin, "wb") as f:
-        f.write(data)
+    t.tlv_gen(t.unsigned_bin)
+    t.tlv_gen(t.signed_bin, sign=t.privkey_rsa, magic="0x61bb95f3")
+    t.tlv_gen(t.ecdsa_signed_bin, sign=t.privkey_ecdsa, magic="0x61bb95f3")
+
+    t.corrupt(t.unsigned_bin, t.corrupted_bin)
+    t.corrupt(t.signed_bin, t.tampered_bin, fix_crc=True)
+    t.corrupt(t.ecdsa_signed_bin, t.tampered_ecdsa_bin, fix_crc=True)
 
     return t
 
+
 def test_tlv_generator(tlv_testdata):
     t = tlv_testdata
-    out_yaml = t.dir / 'out.yaml'
+    out_yaml = t.dir / "out.yaml"
 
+    t.tlv_read(t.unsigned_bin)
+    t.tlv_read(t.signed_bin, verify=t.pubkey_rsa, magic="0x61bb95f3")
+    t.tlv_read(t.ecdsa_signed_bin, verify=t.pubkey_ecdsa, magic="0x61bb95f3")
 
-    good = t.generator(["--output-data", str(out_yaml), str(t.schema), str(t.unsigned_bin)], check=False)
-    assert good.returncode == 0, f"valid unsigned TLV failed to decode: {good.stderr}\n{good.stdout}"
+    t.tlv_read(t.corrupted_bin, expect_failure=True)
+    t.tlv_read(t.tampered_bin, verify=t.pubkey_rsa, magic="0x61bb95f3", expect_failure=True)
+    t.tlv_read(t.tampered_ecdsa_bin, verify=t.pubkey_ecdsa, magic="0x61bb95f3", expect_failure=True)
 
-    bad = t.generator(["--output-data", str(t.dir / 'bad.yaml'), str(t.schema), str(t.corrupted_bin)], check=False)
-    assert bad.returncode != 0, "unsigned TLV with invalid CRC unexpectedly decoded successfully"
 
-def test_tlv_command(barebox, barebox_config, tlv_testdata):
+@pytest.fixture(scope="module")
+def tlv_cmdtest(barebox_config, tlv_testdata):
     skip_disabled(barebox_config, "CONFIG_CMD_TLV")
-    t = tlv_testdata
-    with open(t.data, 'r', encoding='utf-8') as f:
-        yaml_lines = [l.strip() for l in f if l.strip() and not l.strip().startswith('#')]
-
-    stdout = barebox.run_check(f"tlv /mnt/9p/testfs/{t.unsigned_bin.name}")
-
-    # work around 9pfs printing here after a failed network test
-    tlv_offset = next((i for i, line in enumerate(stdout) if line.startswith("tlv")), None)
-    tlv_lines = stdout[tlv_offset + 1:-1]
-
-    assert len(yaml_lines) == len(tlv_lines), \
-        f"YAML and TLV output line count mismatch for {t.unsigned_bin.name}"
-
-    for yline, tline in zip(yaml_lines, tlv_lines):
-        m = re.match(r'^\s*([^=]+) = "(.*)";$', tline)
-        assert m, f"malformed tlv line: {tline}"
-        tkey, tval = m.group(1), m.group(2)
-        m = re.match(r'^([^:]+):\s*(?:"([^"]*)"\s*|(.*))$', yline)
-        assert m, f"malformed yaml line: {yline}"
-        ykey, yval = m.group(1), m.group(2) or m.group(3)
-        assert ykey == tkey, f"key mismatch: {ykey} != {tkey}"
-        assert str(yval) == str(tval), f"value mismatch for {ykey}: {yval} != {tval}"
+    skip_disabled(barebox_config, "CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS")
+
+    class _TLV_Cmdtest:
+        def __init__(self, tlv_testdata):
+            self.t = tlv_testdata
+            with open(tlv_testdata.data, "r", encoding="utf-8") as f:
+                self.yaml_lines = [
+                    l.strip() for l in f if l.strip() and not l.strip().startswith("#")
+                ]
+
+        def test(self, barebox, fn, fail=False):
+            cmd = f"tlv /mnt/9p/testfs/{fn}"
+            stdout, stderr, exitcode = barebox.run(cmd, timeout=2)
+            if fail:
+                assert exitcode != 0
+                return
+            elif exitcode != 0:
+                raise RuntimeError(f"`{cmd}` failed with exitcode {exitcode}:\n{stderr}\n{stdout}")
+
+            # work around a corner case of 9pfs printing here (after a failed network test?)
+            tlv_offset = next((i for i, line in enumerate(stdout) if line.startswith("tlv")), None)
+            tlv_lines = stdout[tlv_offset + 1 : -1]
+
+            assert len(self.yaml_lines) == len(tlv_lines), (
+                f"YAML and TLV output line count mismatch for {fn}"
+            )
+
+            for yline, tline in zip(self.yaml_lines, tlv_lines):
+                m = re.match(r'^\s*([^=]+) = "(.*)";$', tline)
+                assert m, f"malformed tlv line: {tline}"
+                tkey, tval = m.group(1), m.group(2)
+                m = re.match(r'^([^:]+):\s*(?:"([^"]*)"\s*|(.*))$', yline)
+                assert m, f"malformed yaml line: {yline}"
+                ykey, yval = m.group(1), m.group(2) or m.group(3)
+                assert ykey == tkey, f"key mismatch: {ykey} != {tkey}"
+                assert str(yval) == str(tval), f"value mismatch for {ykey}: {yval} != {tval}"
+
+    return _TLV_Cmdtest(tlv_testdata)
+
+
+def test_tlv_cmd_unsigned(barebox, barebox_config, tlv_cmdtest):
+    skip_disabled(barebox_config, "CONFIG_CRYPTO_RSA")
+    tlv_cmdtest.test(barebox, tlv_cmdtest.t.unsigned_bin.name)
+
+
+def test_tlv_cmd_signed(barebox, barebox_config, tlv_cmdtest):
+    skip_disabled(barebox_config, "CONFIG_CRYPTO_RSA")
+    tlv_cmdtest.test(barebox, tlv_cmdtest.t.signed_bin.name)
+
+
+def test_tlv_cmd_ecdsa_signed(barebox, barebox_config, tlv_cmdtest):
+    skip_disabled(barebox_config, "CONFIG_CRYPTO_ECDSA")
+    tlv_cmdtest.test(barebox, tlv_cmdtest.t.ecdsa_signed_bin.name)
+
+
+def test_tlv_cmd_corrupted(barebox, barebox_config, tlv_cmdtest):
+    skip_disabled(barebox_config, "CONFIG_CRYPTO_RSA")
+    tlv_cmdtest.test(barebox, tlv_cmdtest.t.corrupted_bin.name, fail=True)
+
+
+def test_tlv_cmd_tampered(barebox, barebox_config, tlv_cmdtest):
+    skip_disabled(barebox_config, "CONFIG_CRYPTO_RSA")
+    tlv_cmdtest.test(barebox, tlv_cmdtest.t.tampered_bin.name, fail=True)
+
+
+def test_tlv_cmd_ecdsa_tampered(barebox, barebox_config, tlv_cmdtest):
+    skip_disabled(barebox_config, "CONFIG_CRYPTO_ECDSA")
+    tlv_cmdtest.test(barebox, tlv_cmdtest.t.tampered_ecdsa_bin.name, fail=True)

-- 
2.51.2.535.g419c72cb8a



