Delivery-date: Mon, 29 Sep 2025 10:05:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38so-002Lcc-1N
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 10:05:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38sn-0000lF-JM
	for lore@pengutronix.de; Mon, 29 Sep 2025 10:05:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zh001LMM+SRhIuwn69NcytyTW/cbf2k2TcUNT4FMPWE=; b=igubr0OdbF6WsPO3AeojdaAcQF
	JCbyPA+JWV3XBHnCsOGhrSVQViGyEZfP0fk7TtbLEshQfel+v/2NwadKPqZJObahdzw6XxoPbeHlX
	e9tj+q7L4nFmeZ15xwqQzKs1RqZWH/D6oxAwYiWhea0vRzhPkJwVrKu7c6pUxyK/z0nyz4MLllmn5
	ONSZOqvJ0qAXHPT7ZguWLU6FqJ3LNichVPDMKNxPNzqalShP5O87dx1QfnCZS7Wqgo1zzQP4EbQvb
	W40NeuS1y9qcp/egocGcSwAbpMMD9H3yI4VbbvAN1wUlG84Z2146v4kRTasQzVYmg7+YJ5Pp9CRwe
	oSOa14+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38sG-00000001iPT-1yjL;
	Mon, 29 Sep 2025 08:04:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38s9-00000001iGw-1Ekv
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 08:04:40 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v38s6-000070-Gj; Mon, 29 Sep 2025 10:04:34 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 29 Sep 2025 10:04:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250929-tlv-integration-v2-9-55f75da7e670@pengutronix.de>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
In-Reply-To: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=4074; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=b0nCyy+j7PaFk8Bg7HWnk80N83eke5gzRGV6zwNQRTc=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4ZTvxy8TdN3bdaNe8zHZ35nQlMb0Fs5fdMFARuMOUv
 iCs6vDC0o5SFgYxLgZZMUWWWDU5BSFj/+tmlXaxMHNYmUCGMHBxCsBE0s8z/BX8WjnvXdG9LHPj
 7sDI6FK+9wmlp02/M38UFphSYDfb9AAjw8xX7Hscji26/FBn0RXnV8G/ddpe8V3REok/al9w87R
 GLx8A
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_010437_382300_99308444 
X-CRM114-Status: GOOD (  11.24  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 9/9] test: py: add TLV integration tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With TLV signature coming up, we want to test all things TLV more
thoroughly, including "roundtrip" integration tests that include the
bareboxtlv-generator python-script and the tlv barebox-command.

 - Encode the example TLV data
 - Add a "corrupted" variant of that tlv binary with a bit error
 - Test decoding those binaries using bareboxtlv-generator
 - Test decoding those binaries using the tlv-command

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 test/py/test_tlv.py | 78 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/test/py/test_tlv.py b/test/py/test_tlv.py
new file mode 100644
index 0000000000..963f3749b3
--- /dev/null
+++ b/test/py/test_tlv.py
@@ -0,0 +1,78 @@
+import os
+import re
+import subprocess
+from pathlib import Path
+from crcmod.predefined import mkPredefinedCrcFun
+from .helper import skip_disabled
+
+_crc32_mpeg = mkPredefinedCrcFun("crc-32-mpeg")
+
+import pytest
+
+
+class _TLV_Testdata:
+    def generator(self, args, check=True):
+        cmd = [os.sys.executable, str(self.generator_py)] + args
+        res = subprocess.run(cmd, text=True)
+        if check and res.returncode != 0:
+            raise RuntimeError(f"generator failed ({res.returncode}): {res.stdout}\n{res.stderr}")
+        return res
+
+    def __init__(self, testfs):
+        self.dir = Path(testfs)
+        self.scripts_dir = Path("scripts/bareboxtlv-generator")
+        self.data = self.scripts_dir / "data-example.yaml"
+        self.schema = self.scripts_dir / "schema-example.yaml"
+        self.generator_py = self.scripts_dir / "bareboxtlv-generator.py"
+        self.unsigned_bin = self.dir / 'unsigned.tlv'
+        self.corrupted_bin = self.dir / 'unsigned_corrupted.tlv'
+
+@pytest.fixture(scope="module")
+def tlv_testdata(testfs):
+    t = _TLV_Testdata(testfs)
+    t.generator(["--input-data", str(t.data), str(t.schema), str(t.unsigned_bin)])
+    assert t.unsigned_bin.exists(), "unsigned TLV not created"
+
+    with open(t.unsigned_bin, 'r+b') as f:
+        data = bytearray(f.read())
+    data[0x20] ^= 1
+    with open(t.corrupted_bin, "wb") as f:
+        f.write(data)
+
+    return t
+
+def test_tlv_generator(tlv_testdata):
+    t = tlv_testdata
+    out_yaml = t.dir / 'out.yaml'
+
+
+    good = t.generator(["--output-data", str(out_yaml), str(t.schema), str(t.unsigned_bin)], check=False)
+    assert good.returncode == 0, f"valid unsigned TLV failed to decode: {good.stderr}\n{good.stdout}"
+
+    bad = t.generator(["--output-data", str(t.dir / 'bad.yaml'), str(t.schema), str(t.corrupted_bin)], check=False)
+    assert bad.returncode != 0, "unsigned TLV with invalid CRC unexpectedly decoded successfully"
+
+def test_tlv_command(barebox, barebox_config, tlv_testdata):
+    skip_disabled(barebox_config, "CONFIG_CMD_TLV")
+    t = tlv_testdata
+    with open(t.data, 'r', encoding='utf-8') as f:
+        yaml_lines = [l.strip() for l in f if l.strip() and not l.strip().startswith('#')]
+
+    stdout = barebox.run_check(f"tlv /mnt/9p/testfs/{t.unsigned_bin.name}")
+
+    # work around 9pfs printing here after a failed network test
+    tlv_offset = next((i for i, line in enumerate(stdout) if line.startswith("tlv")), None)
+    tlv_lines = stdout[tlv_offset + 1:-1]
+
+    assert len(yaml_lines) == len(tlv_lines), \
+        f"YAML and TLV output line count mismatch for {t.unsigned_bin.name}"
+
+    for yline, tline in zip(yaml_lines, tlv_lines):
+        m = re.match(r'^\s*([^=]+) = "(.*)";$', tline)
+        assert m, f"malformed tlv line: {tline}"
+        tkey, tval = m.group(1), m.group(2)
+        m = re.match(r'^([^:]+):\s*(?:"([^"]*)"\s*|(.*))$', yline)
+        assert m, f"malformed yaml line: {yline}"
+        ykey, yval = m.group(1), m.group(2) or m.group(3)
+        assert ykey == tkey, f"key mismatch: {ykey} != {tkey}"
+        assert str(yval) == str(tval), f"value mismatch for {ykey}: {yval} != {tval}"

-- 
2.51.0.297.gca2559c1d6



