Delivery-date: Mon, 26 Jan 2026 10:20:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkIlt-005Ugd-39
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 10:20:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkIls-0000Zv-Vr
	for lore@pengutronix.de; Mon, 26 Jan 2026 10:20:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Qk92+RqsfEh2OGjBh4apeXhcKij8BNEKIJHvNHGO5wc=; b=HE5BoSUXYuNBZo7zpnjDO3haXE
	Y8/RjBoDS3oJ5F+GmAI0X8aU3uMEPEg7887PRBB6sA7loa6Prp5SWZDc4Zf+13Kui32V6Ubriady2
	4Y02rsTkHgcmxvFGGdTSW+kLIkXe8ZSXwL+W2tJ1XFT23/rK8gO04+q4zlXaFP9KvJJakESvajDpl
	W0ZBP0HTuwjDmv64Kf4zjf+4xtlQU+uyRdIK+A0RM5kdnC2QvfG/I1kXzsz2QpU0kJyxyUt/e9uRj
	ZXO9nib4+2TGqVxxyJdZ1D5Mg8cVclhAzmFKj4seoj9GX+lTWyTU96/gb8HitQ4Z+2Zm+2NyNZZWk
	ZuMkRvFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkIlO-0000000CAps-0PeX;
	Mon, 26 Jan 2026 09:20:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkIlL-0000000CApD-1M2y
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 09:20:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkIlH-0000VJ-Su; Mon, 26 Jan 2026 10:19:55 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkIlI-002YbI-19;
	Mon, 26 Jan 2026 10:19:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkIlI-0000000GpFZ-0QZa;
	Mon, 26 Jan 2026 10:19:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 26 Jan 2026 10:19:46 +0100
Message-ID: <20260126091952.4009991-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_011959_362956_727AD45B 
X-CRM114-Status: UNSURE (   9.02  )
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
Subject: [PATCH] test: py: add xfail test for surprising hush quoting behavior
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When mixing both double quotes and single quotes in a command and
passing it through labgrid, the quoting labgrid does on top will exceed
barebox hush's abilities. Fixing this is likely an involved matter, but
let's add a test that's expected to fail, so this can be revisited in
the future.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_shell.py | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/test/py/test_shell.py b/test/py/test_shell.py
index 6591b3097be3..50ae497fc6c3 100644
--- a/test/py/test_shell.py
+++ b/test/py/test_shell.py
@@ -2,6 +2,7 @@
 
 from .helper import skip_disabled
 import json
+import pytest
 
 
 def test_barebox_true(barebox, barebox_config):
@@ -18,6 +19,19 @@ def test_barebox_false(barebox, barebox_config):
     assert returncode == 1
 
 
+@pytest.mark.xfail(reason="barebox Hush quote handling is bogus")
+def test_shell_quoting(barebox):
+    # Labgrid will write this command to a file and execute that and add
+    # extra quoting in the process, which we want hush to be able to handle
+    # Below is equivalent to
+    # echo > testcmd 'echo > /tmp/script '"'"'var="A B"'"'"''; sh testcmd
+    barebox.console.sendline(r"""echo -o testcmd 'echo -o /tmp/script '"'"'var="A B"'"'"''; sh testcmd""")
+    barebox._await_prompt()
+    assert barebox.run_check('cat testcmd') == [r"""echo -o /tmp/script 'var="A B"'"""]
+    assert barebox.run_check('cat /tmp/script') == [r'''var="A B"''']
+    assert barebox.run_check('source /tmp/script && echo "$var"') == "A B"
+
+
 def test_barebox_md5sum(barebox, barebox_config):
     skip_disabled(barebox_config, "CONFIG_CMD_MD5SUM", "CONFIG_CMD_ECHO")
 
-- 
2.47.3



