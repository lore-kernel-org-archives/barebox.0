Delivery-date: Wed, 15 Oct 2025 11:26:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8xmF-008338-32
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 11:26:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8xmF-0007pN-Ch
	for lore@pengutronix.de; Wed, 15 Oct 2025 11:26:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iPNn7VmtfE1gjrwvl9mO9/1GeREnOUFt/PDX/FNktBQ=; b=FdxrbgmMsmVa6bbrjLbyHbHwO6
	my5aRDO40yxYdVrPlVN5WzmEcPPM8B48y9oIXLhhIHTi29WlwSR3uzLD1BZonvbWDthnzW9WsrcYG
	geDiRFmW/HgmJwBpQlm4+p4KVP7Zor4N0LZZalXOsg6RmvTozwcZvrA7R2g1euVGKeiGLkF1q0OvU
	WSHASYCLjYvoQb2/daaAoASgPLc+SUI59bqowYkW7rVLBrVVKyLhH+mUSYlb6/aa5Q7vlyryDqTi8
	LVxL2/QUUoHeR38WXti8BQCDQRZ3obJH/fcbfmoS9b8y8mtZk+h+zpOfrAOq876c+J/IXNB/sR1DR
	581uAAmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xlo-000000018iU-1L5f;
	Wed, 15 Oct 2025 09:26:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xll-000000018gU-2jKJ
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 09:26:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8xlj-0007ix-Sb; Wed, 15 Oct 2025 11:26:03 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8xlj-003hWr-2G;
	Wed, 15 Oct 2025 11:26:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v8xlj-00000009san-2Xon;
	Wed, 15 Oct 2025 11:26:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jonas Rebmann <jre@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 Oct 2025 11:26:01 +0200
Message-ID: <20251015092602.2354751-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_022606_152941_61893EE3 
X-CRM114-Status: GOOD (  10.25  )
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
Subject: [PATCH v2] fixup! test: py: add TLV integration tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

test: py: tlv: skip tests if crcmod is missing

We document nowhere that crcmod is a required dependency for the test
suite. Skip the tests requiring it if it's not installed.

In the future, it's probably worthwhile to add some requirements.txt or
similar that uv could use to set up a python environment with all the
dependencies?

Cc: Jonas Rebmann <jre@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - do not touch the generator and do the skipping in the test itself to
    allow for easier backporting (Jonas)
---
 test/py/test_tlv.py | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/test/py/test_tlv.py b/test/py/test_tlv.py
index 963f3749b33b..c1bb9a17b4a8 100644
--- a/test/py/test_tlv.py
+++ b/test/py/test_tlv.py
@@ -1,14 +1,17 @@
+import sys
 import os
 import re
 import subprocess
 from pathlib import Path
-from crcmod.predefined import mkPredefinedCrcFun
 from .helper import skip_disabled
-
-_crc32_mpeg = mkPredefinedCrcFun("crc-32-mpeg")
-
 import pytest
 
+try:
+    from crcmod.predefined import mkPredefinedCrcFun
+    _crc32_mpeg = mkPredefinedCrcFun("crc-32-mpeg")
+except ModuleNotFoundError:
+    _crc32_mpeg = None
+
 
 class _TLV_Testdata:
     def generator(self, args, check=True):
@@ -29,6 +32,9 @@ class _TLV_Testdata:
 
 @pytest.fixture(scope="module")
 def tlv_testdata(testfs):
+    if _crc32_mpeg is None:
+        pytest.skip("missing crcmod dependency")
+
     t = _TLV_Testdata(testfs)
     t.generator(["--input-data", str(t.data), str(t.schema), str(t.unsigned_bin)])
     assert t.unsigned_bin.exists(), "unsigned TLV not created"
-- 
2.47.3



