Delivery-date: Thu, 11 Dec 2025 21:53:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnex-00AQfK-0A
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:53:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnew-0002p2-D4
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:53:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T+D++NoeMgIZL8ISFIcd5dGSv+/zFx0C+TEKu5iKa88=; b=R1uMP8+4rlYzsCH1WXpDnE0UO5
	mxMOszLYtR2IFeW1tE0ak+fhf+1Xf5GyYb8aZ1y/JqgD1Ni9B1WDSpkR+auLuJ2SOheYuaevWobSo
	+sIZL9EkjYNu7NlH9zxVAQq4AEfFJ0sDlYT8vIMFuEPHqeV0S5PAaNQLZbLTJZroq6t0oL2fz2xS5
	dJLFNwXd50IZyGOHjX+04O12vu3gPQgBti+XopcSiBME6oTdaul5XUIQlDe0mtSnRAkD2iTLQoRqT
	u8w0BhgUXjmqMInQgm/W6ssDEQm2sqpB5sqvqBk6QQJLsYUAHa+ugp8Oj2oUrvhZYs75EPcAtR6k7
	nMg+uJLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTneY-0000000HIAo-2L16;
	Thu, 11 Dec 2025 20:52:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTneV-0000000HI7V-1AKj
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:52:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-0002VJ-Nk; Thu, 11 Dec 2025 21:52:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-005BZ9-1g;
	Thu, 11 Dec 2025 21:52:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-0000000CFbB-1mlN;
	Thu, 11 Dec 2025 21:52:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:50:06 +0100
Message-ID: <20251211205240.2836186-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211205240.2836186-1-a.fatoum@pengutronix.de>
References: <20251211205240.2836186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_125243_333784_26E7FA81 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] test: py: add test for valid JSON output from iomem/clk_dump
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both iomem and clk_dump support a -j parameter for JSON output that's
easier to consume from test suites. Add a simple test that verifies the
JSON can actually be parsed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_shell.py | 41 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/test/py/test_shell.py b/test/py/test_shell.py
index 3d2d85d80594..ac240636714d 100644
--- a/test/py/test_shell.py
+++ b/test/py/test_shell.py
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 from .helper import skip_disabled
+import json
 
 
 def test_barebox_true(barebox, barebox_config):
@@ -39,3 +40,43 @@ def test_barebox_no_err(barebox, barebox_config):
     # TODO extend by err once all qemu platforms conform
     stdout, _, _ = barebox.run('dmesg -l crit,alert,emerg')
     assert stdout == []
+
+
+def count_dicts_in_command_output(barebox, cmd):
+    def count_dicts(obj):
+        count = 0
+        if isinstance(obj, dict):
+            count += 1  # count this dict itself
+            for value in obj.values():
+                count += count_dicts(value)
+        elif isinstance(obj, list):
+            for item in obj:
+                count += count_dicts(item)
+        return count
+
+    stdout = "\n".join(barebox.run_check(cmd))
+    return count_dicts(json.loads(stdout))
+
+
+def test_cmd_iomem(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_IOMEM")
+
+    regions = count_dicts_in_command_output(barebox, 'iomem -j')
+    assert regions > 0
+
+    assert count_dicts_in_command_output(barebox, 'iomem -jv') == regions
+    if regions > 1:
+        assert count_dicts_in_command_output(barebox, 'iomem -jg') > regions
+        assert count_dicts_in_command_output(barebox, 'iomem -vjg') > regions
+    else:
+        assert count_dicts_in_command_output(barebox, 'iomem -jg') >= regions
+        assert count_dicts_in_command_output(barebox, 'iomem -vjg') >= regions
+
+
+def test_cmd_clk(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_CLK")
+
+    regions = count_dicts_in_command_output(barebox, 'clk_dump -j')
+    assert regions >= 0
+
+    assert count_dicts_in_command_output(barebox, 'clk_dump -vj') == regions
-- 
2.47.3



