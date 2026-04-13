Delivery-date: Mon, 13 Apr 2026 09:46:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzl-00Bdtl-1V
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 09:46:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBzj-0007EW-MN
	for lore@pengutronix.de; Mon, 13 Apr 2026 09:46:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9I3E+w/ZY5iFh4GK0ntV7cfsEQB8ZJ/2fnRs11S20VA=; b=tO4HKDY2HMO1y0viGPp/UQqPaX
	fPoUt/mqtlflnbIv0LpTYpz89z/j/ACQCFVdio6pzHYcccguy3Q2L3oD+5cEbYPO/yc8lBkE5U6+G
	e4a2M/kKACORtFLVy1NVLv41vma4A+pvlxOxL1WxbltmeuprujpkksTAjYElm/mYXSecEFLEaxDfk
	WSlqha7I3Ir3G46La3Z7uYpwPNeKbqSWRHHGvqYYuBzn/lFOGYlXWygLuEZL8QYwvRDdBONpR8/To
	42EzO6CXwTeM55q2a/RNpI9KOkKff5vPhbK+klxV7ns7xJ9e05oa3rMz/+zP8HYXcAAO2SL43Tdc8
	w2G/zZzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBzA-0000000FB48-1CWh;
	Mon, 13 Apr 2026 07:45:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBz7-0000000FB2g-0yQT
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 07:45:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCBz5-0006tX-LH; Mon, 13 Apr 2026 09:45:27 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: "Claude Opus 4.6 (1M context)" <noreply@anthropic.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 09:44:50 +0200
Message-ID: <20260413074522.1410710-8-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413074522.1410710-1-a.fatoum@barebox.org>
References: <20260413074522.1410710-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_004529_281191_D5687299 
X-CRM114-Status: GOOD (  13.64  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] test: add framebuffer screenshot testing via QMP screendump
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add screendump() and parse_ppm() helpers to capture and parse QEMU
framebuffer screenshots using the QMP screendump command. Use them in a
new test that draws a solid color with fbtest and verifies the pixels
match. The test auto-skips when no framebuffer is available (e.g. without
--graphics).

Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/py/helper.py      | 53 ++++++++++++++++++++++++++++++
 test/py/test_fbtest.py | 74 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 127 insertions(+)
 create mode 100644 test/py/test_fbtest.py

diff --git a/test/py/helper.py b/test/py/helper.py
index ab615280048f..2e3bc489d88a 100644
--- a/test/py/helper.py
+++ b/test/py/helper.py
@@ -6,6 +6,7 @@ import os
 import re
 import shlex
 import subprocess
+import tempfile
 
 
 def parse_config(lines):
@@ -200,6 +201,58 @@ def skip_disabled(config, *options):
             pytest.skip("skipping test due to disabled " + (",".join(undefined)) + " dependency")
 
 
+def parse_ppm(path):
+    """Parse a PPM P6 (binary) image file.
+
+    Returns (width, height, data) where data is bytes of RGB pixel values.
+    Pixel (x, y) starts at offset (y * width + x) * 3.
+    """
+    with open(path, 'rb') as f:
+        magic = f.readline().strip()
+        assert magic == b'P6', f"Expected P6, got {magic}"
+
+        line = f.readline()
+        while line.startswith(b'#'):
+            line = f.readline()
+
+        width, height = map(int, line.split())
+        maxval = int(f.readline().strip())
+        assert maxval == 255
+
+        data = f.read()
+        expected = width * height * 3
+        assert len(data) == expected, \
+            f"Expected {expected} bytes, got {len(data)}"
+
+    return width, height, data
+
+
+def screendump(qemu, path=None):
+    """Capture a QEMU framebuffer screenshot via QMP screendump.
+
+    Args:
+        qemu: A labgrid QEMUDriver instance.
+        path: Optional host path for the PPM file. If None, a temp file is used.
+
+    Returns:
+        (width, height, data) tuple from parse_ppm().
+    """
+    if qemu is None:
+        pytest.skip("screendump requires a QEMU target")
+
+    cleanup = path is None
+    if path is None:
+        fd, path = tempfile.mkstemp(suffix='.ppm')
+        os.close(fd)
+
+    try:
+        qemu.monitor_command('screendump', {'filename': path})
+        return parse_ppm(path)
+    finally:
+        if cleanup:
+            os.unlink(path)
+
+
 def ensure_debian_iso(env, destdir):
     """
     Extract Debian kernel and initrd from ISO into destdir.
diff --git a/test/py/test_fbtest.py b/test/py/test_fbtest.py
new file mode 100644
index 000000000000..58b70d7dc4ab
--- /dev/null
+++ b/test/py/test_fbtest.py
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+import hashlib
+import pytest
+from .helper import skip_disabled, screendump
+
+
+@pytest.fixture(autouse=True)
+def check_fbtest_in_qemu(barebox, env, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_FBTEST")
+
+    if 'qemu' not in env.get_target_features():
+        pytest.skip("fbtest tests only possible with QEMU")
+
+    _, _, ret = barebox.run("test -e /dev/fb0")
+    if ret != 0:
+        pytest.skip("no framebuffer device available")
+
+
+def assert_solid_color(data, width, height, color):
+    """Verify that sampled pixels in the lower half match the expected color."""
+    sample_points = [
+        (width // 2, height * 3 // 4),
+        (width // 4, height * 3 // 4),
+        (width * 3 // 4, height * 3 // 4),
+        (width // 2, height - 2),
+    ]
+
+    r_exp = (color >> 16) & 0xff
+    g_exp = (color >> 8) & 0xff
+    b_exp = color & 0xff
+
+    for x, y in sample_points:
+        off = (y * width + x) * 3
+        r, g, b = data[off], data[off + 1], data[off + 2]
+        assert abs(r - r_exp) < 10, f"pixel ({x},{y}): R={r}, expected {r_exp}"
+        assert abs(g - g_exp) < 10, f"pixel ({x},{y}): G={g}, expected {g_exp}"
+        assert abs(b - b_exp) < 10, f"pixel ({x},{y}): B={b}, expected {b_exp}"
+
+
+def test_fb_solid_color(barebox, barebox_config, strategy):
+    color = 0xff0000
+    barebox.run_check(f"fbtest -p solid -c {color:06x}")
+
+    width, height, data = screendump(strategy.qemu)
+    assert_solid_color(data, width, height, color)
+
+
+def screendump_hash(qemu):
+    """Capture a screenshot and return a hash of the pixel data."""
+    _, _, data = screendump(qemu)
+    return hashlib.sha256(data).hexdigest()
+
+
+def test_fb_patterns_distinct_and_stable(barebox, barebox_config, strategy):
+    patterns = ["solid", "geometry", "bars", "gradient"]
+
+    # Render each pattern twice and collect hashes
+    hashes = {p: [] for p in patterns}
+
+    for run in range(2):
+        for pattern in patterns:
+            barebox.run_check(f"fbtest -p {pattern} -c ffffff")
+            hashes[pattern].append(screendump_hash(strategy.qemu))
+
+    # Same pattern must produce the same output across runs
+    for pattern in patterns:
+        assert hashes[pattern][0] == hashes[pattern][1], \
+            f"pattern '{pattern}' produced different output across runs"
+
+    # Different patterns must produce different output
+    unique = set(hashes[p][0] for p in patterns)
+    assert len(unique) == len(patterns), \
+        f"expected {len(patterns)} distinct patterns, got {len(unique)}"
-- 
2.47.3



