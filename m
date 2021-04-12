Delivery-date: Mon, 12 Apr 2021 09:18:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqG-0003eK-TK
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 09:18:40 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqG-0004la-0Z
	for lore@pengutronix.de; Mon, 12 Apr 2021 09:18:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ltjKdnGppA1etTx9St+7fkoyrxlaocusGowWVnhHcYY=; b=Ec5i/XZgfd0v2D6IHFGVx9pjE
	PwlZK3mIeUwcDTHrTCZBUxhIJtpzr2ZYCbwmBXp02SoFAsDbP4fJfcACVP0v+0Tc8XBFAe5BSBN7L
	OPhzUIgLfjFzfWDXFBR8XZE9tM1jcrlJKpm2OlCeqzhgIWDYJkltmZgF7DRcUCS3ykw7lD+0dnvMo
	mv50aNypoKfzrAfoUUMUD37KrbR1AccwQKrYfVAXBsePDYIptSF1detCYd1JukHZts024r9v++oT5
	2KgeJPUX+IGoupUIszIs7Gd1izpljQN4S3t3F0Ue7PSnpMe+LwzHvlMa3AC31HWJh3BKe169ompjj
	DnGMr7AVQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVqpC-005vzw-0h; Mon, 12 Apr 2021 07:17:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqoh-005vuJ-NF
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 07:17:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=2nCfNWvwWpHR9NiIJhrRogW+S8Gi3H9dO9EQZr/gDjk=; b=YAH7MrCNHycnfI0cOln9VMqpy3
 2pQRM2mTc7RUhViNnxEREnVhjA8jK9SAlrDXhlm7i2tnxONK67Hv9e6IasNeEvLmHkb78QD1GkmGl
 oIhMF8hqSMD9l1TeXU8Evmo1sLd72bkuLRkLC5l1NWbXD8mON1apM43MRJOIKfDM56Oip54DCgQJz
 SdcqNPN6CI6AMHN1E+jzE6j/pGUAdCccC7mybAQ1iKprdw3Q3WFODSnvkkKa9eEzvzXwgkLF6koyd
 nvbiYXnlyOgIV023dzio7tSAuFVcHLRpxeklbh6tjti/XNnbPHk0ZlyLzuX9xmZdKvM5SRrmBBpfn
 SGyRWi1Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqod-005vEq-RI
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 07:17:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoa-0004HO-Kn; Mon, 12 Apr 2021 09:16:56 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoZ-0002ft-C7; Mon, 12 Apr 2021 09:16:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Apr 2021 09:16:46 +0200
Message-Id: <20210412071651.8769-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412071651.8769-1-a.fatoum@pengutronix.de>
References: <20210412071651.8769-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_001659_940496_B2CB6361 
X-CRM114-Status: GOOD (  15.27  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 12/17] test: add first sample tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The test can be run manually with e.g.

  labgrid-pytest --lg-env test/arm/qemu_virt64_defconfig.yaml test/py

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/.gitignore       |  1 +
 test/__init__.py      |  0
 test/conftest.py      | 21 +++++++++++++++++++++
 test/py/__init__.py   |  0
 test/py/helper.py     | 33 +++++++++++++++++++++++++++++++++
 test/py/test_shell.py | 16 ++++++++++++++++
 6 files changed, 71 insertions(+)
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
index 000000000000..019840d0909d
--- /dev/null
+++ b/test/conftest.py
@@ -0,0 +1,21 @@
+import pytest
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
diff --git a/test/py/__init__.py b/test/py/__init__.py
new file mode 100644
index 000000000000..e69de29bb2d1
diff --git a/test/py/helper.py b/test/py/helper.py
new file mode 100644
index 000000000000..f4a110d89a09
--- /dev/null
+++ b/test/py/helper.py
@@ -0,0 +1,33 @@
+from labgrid.driver import BareboxDriver
+import pytest
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
+            with open('.config') as f:
+                out = f.read().splitlines()
+        except OSError:
+            return []
+
+    options = []
+    for line in out:
+        if line and line.startswith("CONFIG_"):
+            options.append(line.split('=')[0])
+    return options
+
+
+def skip_disabled(config, option):
+    if bool(config) and not option in config:
+        pytest.skip("skipping test due to disabled " + option + "=y dependency")
diff --git a/test/py/test_shell.py b/test/py/test_shell.py
new file mode 100644
index 000000000000..13a57061f6db
--- /dev/null
+++ b/test/py/test_shell.py
@@ -0,0 +1,16 @@
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
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

