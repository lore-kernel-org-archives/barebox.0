Delivery-date: Mon, 11 Aug 2025 14:30:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRf7-009Kgd-0V
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulReo-0005on-OG
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MOcewNwkz0kBXpBTP8LOmx2uOfLHGCZZIotF0asNxrA=; b=Jv+kAue2elrMIcZSkms19PxIpn
	/DFXx7at/HW7kcrh89xlng2ChFyl2+1T4vV/uj4IDSZxN9JC7dqawGHFjiGPjgyg15y8//sQ78jSz
	7rbg7psdAdhpgTqRWO34LL/HSY4ZOzDffoUL9N2I0fI6HASIhkb01SnTGSsO/JlpWyVyNNsO6CtuU
	/n0wHCdqLbtFNFe1Mw4JVu1hBPdUvRp44Q/uDvyx4IMxTlg7owSSnSrJRWRknPt/yGrWjuGR9x1J7
	HTnPMwHdaTWGo0zMg6DDc3+x9HOo0prlKS8gzCAZUGyeZDn5oUNL3bUSKGVUmCY62bMLoa6C/pe/i
	GEeq8Lig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdv-00000007duj-448f;
	Mon, 11 Aug 2025 12:28:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdf-00000007dW0-3Atw
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdd-0004WP-4e; Mon, 11 Aug 2025 14:28:29 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:50 +0200
Message-Id: <20250811122824.1667791-11-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052831_794310_CAAF2AB0 
X-CRM114-Status: GOOD (  10.62  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/44] test: py: change barebox_config from set to dict
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The use of a set to collect enabled config options means that we can't
make use of options of non-boolean type. Switch over to a dict to
support arbitrary types.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/py/helper.py | 46 ++++++++++++++++++++++++++++++++++------------
 1 file changed, 34 insertions(+), 12 deletions(-)

diff --git a/test/py/helper.py b/test/py/helper.py
index 191af47a7f14..d4949acb63a0 100644
--- a/test/py/helper.py
+++ b/test/py/helper.py
@@ -3,7 +3,36 @@ import pytest
 import os
 import re
 import shlex
-from itertools import filterfalse
+
+
+def parse_config(lines):
+    options = {}
+    for line in lines:
+        if line and line.startswith("CONFIG_"):
+            key, val = line.split("=", 1)
+            key = key.strip()
+            val = val.strip()
+
+            if val == "y":
+                options[key] = True
+            elif val == "m":
+                options[key] = False
+            elif val == "n":
+                options[key] = None
+            elif val.startswith('"') and val.endswith('"'):
+                options[key] = val[1:-1]
+            else:
+                options[key] = int(val, base=0)
+
+    return options
+
+
+def open_config_file(path):
+    try:
+        with open(path) as f:
+            return f.read().splitlines()
+    except OSError:
+        return []
 
 
 def get_config(command):
@@ -19,17 +48,10 @@ def get_config(command):
 
     out, err, returncode = command.run("cat /env/data/config")
     if returncode != 0:
-        try:
-            with open(os.environ['LG_BUILDDIR'] + "/.config") as f:
-                out = f.read().splitlines()
-        except OSError:
-            return set()
+        out = open_config_file(os.environ['LG_BUILDDIR'] + "/.config")
+
+    return parse_config(out)
 
-    options = set()
-    for line in out:
-        if line and line.startswith("CONFIG_"):
-            options.add(line.split('=')[0])
-    return options
 
 def devinfo(barebox, device):
     info = {}
@@ -107,7 +129,7 @@ def of_get_property(barebox, path):
 
 def skip_disabled(config, *options):
     if bool(config):
-        undefined = list(filterfalse(config.__contains__, options))
+        undefined = [opt for opt in options if opt not in config]
 
         if bool(undefined):
             pytest.skip("skipping test due to disabled " + (",".join(undefined)) + " dependency")
-- 
2.39.5



