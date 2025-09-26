Delivery-date: Fri, 26 Sep 2025 12:15:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v25Tp-001IJS-2B
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 12:15:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v25Tm-0004nD-MU
	for lore@pengutronix.de; Fri, 26 Sep 2025 12:15:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XAa0TwDootebBSjSqsU0py2tYev1vQoVieegTIaW2QU=; b=xZ8FPLhQTZKOeo/iPs8Kgzb0df
	c16t5k9w7IbirpPuQb6u6mPVliq4fQUPr/Ag/6EJ9v5OjSzpbrnCWVkPC5+QHgaeIGaOqUKuYstkN
	aBri2wrF8baNpChF16OKlVc4S473vk+OLyu5UvKSX8C8vSzJPHcSSHcAiHrRUt2GFcwE9ko4cDIWS
	sLd8MBQ6oBsYNl+wWrbBvJuVLMUGpB+ua3qgVxVd0xPnIpefDV5lC4gz3HeASLcZEhit9+1aNoYvn
	yTxxqXh6BJ+K6VVq9hvTfJbbH8P3Lj9NbayoDHMNkF5n1en0kpwZ0XdcjRPY7H8f+t+zMbyZvbVji
	tVxW9Uzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v25TE-00000000IbD-11ej;
	Fri, 26 Sep 2025 10:14:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v25TB-00000000IWq-1QjY
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 10:14:30 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v25T8-0004Ji-Ig; Fri, 26 Sep 2025 12:14:26 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 26 Sep 2025 12:14:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-tlv-integration-v1-7-45dc68b9b602@pengutronix.de>
References: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
In-Reply-To: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=4043; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=P+IuEVp2hPDlMjdFh7IuDAZJZ2NJYR+35cXg7GMxex0=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4lt6oXXXJccvBTcYVcm/uHvrmedJtTo6mazwPz63Hh
 9eFzA5c3FHKwiDGxSArpsgSqyanIGTsf92s0i4WZg4rE8gQBi5OAZhI/05Ghrsxz3pPRBiczzAs
 XL0nzejQlVX8VeLP9BgEGjt7X8dcKGdkmBPuEOJyJ3g62+/36z0eN/3j+SZotGIxy5sk0fofX88
 eYAcA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_031429_389456_343E6AED 
X-CRM114-Status: GOOD (  11.20  )
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
Subject: [PATCH 7/7] test: py: add TLV integration tests
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
 test/py/test_tlv.py | 80 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/test/py/test_tlv.py b/test/py/test_tlv.py
new file mode 100644
index 0000000000..3e8faafd25
--- /dev/null
+++ b/test/py/test_tlv.py
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+import os
+import re
+import subprocess
+from pathlib import Path
+from crcmod.predefined import mkPredefinedCrcFun
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
+def test_tlv_command(barebox, tlv_testdata):
+    t = tlv_testdata
+    _, _, rc = barebox.run("ls /mnt/9p/testfs")
+    if rc != 0:
+        pytest.xfail("skipping test due to missing --fs testfs=")
+
+    with open(t.data, 'r', encoding='utf-8') as f:
+        yaml_lines = [l.strip() for l in f if l.strip() and not l.strip().startswith('#')]
+
+    stdout = barebox.run_check(f"tlv /mnt/9p/testfs/{t.unsigned_bin.name}")
+    tlv_lines = stdout[1:-1]
+
+    assert len(yaml_lines) == len(tlv_lines), \
+        f"YAML and TLV output line count mismatch for {t.unsigned_bin.name}"
+
+    for yline, tline in zip(yaml_lines, tlv_lines):
+        ykey, yval = [x.strip() for x in yline.split(':', 1)]
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



