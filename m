Delivery-date: Mon, 13 Oct 2025 14:01:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8HEm-007MRD-2Y
	for lore@lore.pengutronix.de;
	Mon, 13 Oct 2025 14:01:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8HEm-0006XJ-73
	for lore@pengutronix.de; Mon, 13 Oct 2025 14:01:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/yZA2gPfFPc6oVYfYGIzRpjICGuhAXiCGN+n2RfyCdk=; b=gdoo0sFJDGMxYeAjfrATZIAnVq
	7mE/qZ2hj6MhnrglPxqMQasiz0kiiFWAwCgCKQLeIePv5K+0+W6dKZuKCQe5bp+HD7VrqIXK0YYAS
	w3OiiHnzIgPtNMyM/wSx51DAOLHyzLXNVbegq/OqdPLF8FgD9cO+DNR+xi5ulChmceuVi29OJqdCT
	JI6OegraP9Y/tGclaeFmsQZGMsCQgQ20CYqZ9j8IdC+9DCi8NW/Q07ApqAwDVsme1CSVsXrW1aSDs
	4OvCWVqv9FITeS1ClV/mUfFTxt6dIicmZvHHEH+f9hpnup4VjBIaYSkx14q3JaLHdbJS/73VIfttX
	F4WTxnOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8HED-0000000D4M0-32Zk;
	Mon, 13 Oct 2025 12:00:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8HEB-0000000D4Jd-1EMa
	for barebox@lists.infradead.org;
	Mon, 13 Oct 2025 12:00:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8HE9-0006EL-Em; Mon, 13 Oct 2025 14:00:33 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8HE9-003NRB-0s;
	Mon, 13 Oct 2025 14:00:33 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8HE9-00000003CEu-0fjq;
	Mon, 13 Oct 2025 14:00:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jonas Rebmann <jre@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Oct 2025 14:00:30 +0200
Message-ID: <20251013120031.761008-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_050035_335223_81B9727F 
X-CRM114-Status: GOOD (  10.41  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! test: py: add TLV integration tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

test: py: tlv: skip when crcmod is missing

TLV tests shouldn't fail the test suite if the dependencies for the
generator scripts are not available.

Therefore, have the script return 127 as specific error code and skip
the test in that case.

While at it, also drop the currently unused import for mkPredefinedCrcFun.

Cc: Jonas Rebmann <jre@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/bareboxtlv-generator/bareboxtlv-generator.py | 8 +++++++-
 test/py/test_tlv.py                                  | 6 +++---
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/scripts/bareboxtlv-generator/bareboxtlv-generator.py b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
index 5f9285a80630..6174fe91cdd4 100755
--- a/scripts/bareboxtlv-generator/bareboxtlv-generator.py
+++ b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
@@ -2,9 +2,15 @@
 
 import argparse
 import struct
+import sys
 
 import yaml
-from crcmod.predefined import mkPredefinedCrcFun
+
+try:
+    from crcmod.predefined import mkPredefinedCrcFun
+except ModuleNotFoundError:
+    print("Error: missing crcmod dependency", file=sys.stderr)
+    sys.exit(127)
 
 _crc32_mpeg = mkPredefinedCrcFun("crc-32-mpeg")
 
diff --git a/test/py/test_tlv.py b/test/py/test_tlv.py
index 963f3749b33b..79f9f9d01bbb 100644
--- a/test/py/test_tlv.py
+++ b/test/py/test_tlv.py
@@ -2,11 +2,8 @@ import os
 import re
 import subprocess
 from pathlib import Path
-from crcmod.predefined import mkPredefinedCrcFun
 from .helper import skip_disabled
 
-_crc32_mpeg = mkPredefinedCrcFun("crc-32-mpeg")
-
 import pytest
 
 
@@ -14,6 +11,9 @@ class _TLV_Testdata:
     def generator(self, args, check=True):
         cmd = [os.sys.executable, str(self.generator_py)] + args
         res = subprocess.run(cmd, text=True)
+        if res.returncode == 127:
+            pytest.skip("test skipped due to missing host dependencies")
+
         if check and res.returncode != 0:
             raise RuntimeError(f"generator failed ({res.returncode}): {res.stdout}\n{res.stderr}")
         return res
-- 
2.47.3



