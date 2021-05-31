Delivery-date: Mon, 31 May 2021 08:57:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbs4-0002kP-M5
	for lore@lore.pengutronix.de; Mon, 31 May 2021 08:57:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbs1-0000a5-Nd
	for lore@pengutronix.de; Mon, 31 May 2021 08:57:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Vi+w/wgUGiWPAAM44lnJXTcpp2SBg4sFB+4e5gxiu8=; b=oT0PfwCOQbZDLF
	iaVDFsoEHlmn7DWFlRm7duiwlkU/bxmVzTDOV5yG537FbCmxOM8dtF/nQ3vXwl5IhAJBIQqbkPbwz
	NUdZO4s9bvh3K8ye1G5iyilJJN3AEzmezivv/v7otmi4eNXzXYPa5wm4Hok3vF3YSNBGBErTUzGzb
	qoyx3coGV/FRjSNTrPy7KonPLeZ4qB+Dsts0ufLxKe2A0V5Wwhdn0iUzA85/xfY1afPXOFby7CmUR
	lPeCGavZz3gupHPehmNRI5iWpwevighOM+aE6m0/AdMScdfkDHXT5nhqhDiFJTuMYH/B7/ssQdrku
	0siwdAu+fP18qr4yNiCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnbqn-00B1Ie-A2; Mon, 31 May 2021 06:56:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnbq8-00B0sD-5B
 for barebox@lists.infradead.org; Mon, 31 May 2021 06:55:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnbpa-0007yn-QP; Mon, 31 May 2021 08:55:22 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnbpZ-0003gS-Su; Mon, 31 May 2021 08:55:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 08:55:17 +0200
Message-Id: <20210531065520.12385-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531065520.12385-1-a.fatoum@pengutronix.de>
References: <20210531065520.12385-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210530_235556_249725_7F394290 
X-CRM114-Status: GOOD (  15.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/13] test: add first sample tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The test can be run manually with e.g.

  labgrid-pytest --lg-env test/arm/qemu_virt64_defconfig.yaml test/py

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/.gitignore       |  1 +
 test/__init__.py      |  0
 test/conftest.py      | 34 ++++++++++++++++++++++++++++++++++
 test/py/__init__.py   |  0
 test/py/helper.py     | 38 ++++++++++++++++++++++++++++++++++++++
 test/py/test_shell.py | 37 +++++++++++++++++++++++++++++++++++++
 6 files changed, 110 insertions(+)
 create mode 100644 test/.gitignore
 create mode 100644 test/__init__.py
 create mode 100644 test/conftest.py
 create mode 100644 test/py/__init__.py
 create mode 100644 test/py/helper.py
 create mode 100644 test/py/test_shell.py

diff --git a/test/.gitignore b/test/.gitignore
new file mode 100644
index 000000000000..bee8a64b79a9
--- /dev/null
+++ b/test/.gitignore
@@ -0,0 +1 @@
+__pycache__
diff --git a/test/__init__.py b/test/__init__.py
new file mode 100644
index 000000000000..e69de29bb2d1
diff --git a/test/conftest.py b/test/conftest.py
new file mode 100644
index 000000000000..5acc1a99e18e
--- /dev/null
+++ b/test/conftest.py
@@ -0,0 +1,34 @@
+import pytest
+import os
+from .py import helper
+
+
+@pytest.fixture(scope='function')
+def barebox(strategy, target):
+    strategy.transition('barebox')
+    return target.get_driver('BareboxDriver')
+
+
+@pytest.fixture(scope='function')
+def shell(strategy, target):
+    strategy.transition('shell')
+    return target.get_driver('ShellDriver')
+
+
+@pytest.fixture(scope="session")
+def barebox_config(strategy, target):
+    strategy.transition('barebox')
+    command = target.get_driver("BareboxDriver")
+    return helper.get_config(command)
+
+def pytest_configure(config):
+    if 'LG_BUILDDIR' not in os.environ:
+        if 'KBUILD_OUTPUT' in os.environ:
+            os.environ['LG_BUILDDIR'] = os.environ['KBUILD_OUTPUT']
+        elif os.path.isdir('build'):
+            os.environ['LG_BUILDDIR'] = os.path.realpath('build')
+        else:
+            os.environ['LG_BUILDDIR'] = os.getcwd()
+
+    if os.environ['LG_BUILDDIR'] is not None:
+        os.environ['LG_BUILDDIR'] = os.path.realpath(os.environ['LG_BUILDDIR'])
diff --git a/test/py/__init__.py b/test/py/__init__.py
new file mode 100644
index 000000000000..e69de29bb2d1
diff --git a/test/py/helper.py b/test/py/helper.py
new file mode 100644
index 000000000000..4a68e83669ba
--- /dev/null
+++ b/test/py/helper.py
@@ -0,0 +1,38 @@
+from labgrid.driver import BareboxDriver
+import pytest
+import os
+from itertools import filterfalse
+
+
+def get_config(command):
+    """Returns the enabled config options of barebox, either from
+    a running instance if supported or by looking into .config
+    in the build directory.
+    Args:
+        command (BareboxDriver): An instance of the BareboxDriver
+    Returns:
+        list: list of the enabled config options
+    """
+    assert isinstance(command, BareboxDriver)
+
+    out, err, returncode = command.run("cat /env/data/config")
+    if returncode != 0:
+        try:
+            with open(os.environ['LG_BUILDDIR'] + "/.config") as f:
+                out = f.read().splitlines()
+        except OSError:
+            return set()
+
+    options = set()
+    for line in out:
+        if line and line.startswith("CONFIG_"):
+            options.add(line.split('=')[0])
+    return options
+
+
+def skip_disabled(config, *options):
+    if bool(config):
+        undefined = list(filterfalse(config.__contains__, options))
+
+        if bool(undefined):
+            pytest.skip("skipping test due to disabled " + (",".join(undefined)) + " dependency")
diff --git a/test/py/test_shell.py b/test/py/test_shell.py
new file mode 100644
index 000000000000..0d2dfe38c5dd
--- /dev/null
+++ b/test/py/test_shell.py
@@ -0,0 +1,37 @@
+import pytest
+from .helper import *
+
+
+def test_barebox_true(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_TRUE")
+
+    _, _, returncode = barebox.run('true')
+    assert returncode == 0
+
+
+def test_barebox_false(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_FALSE")
+
+    _, _, returncode = barebox.run('false')
+    assert returncode == 1
+
+def test_barebox_md5sum(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_MD5SUM", "CONFIG_CMD_ECHO")
+
+    barebox.run_check("echo -o md5 test")
+    out = barebox.run_check("md5sum md5")
+    assert out == ["d8e8fca2dc0f896fd7cb4cb0031ba249  md5"]
+
+def test_barebox_version(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_VERSION")
+
+    stdout, _, returncode = barebox.run('version')
+    assert 'barebox' in stdout[1]
+    assert returncode == 0
+
+def test_barebox_no_err(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_DMESG")
+
+    # TODO extend by err once all qemu platforms conform
+    stdout, _, _ = barebox.run('dmesg -l crit,alert,emerg')
+    assert stdout == []
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

