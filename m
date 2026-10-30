Delivery-date: Fri, 30 Oct 2026 11:55:19 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMkGU-0057IB-27
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 11:55:19 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8D9FD20296B
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 11:55:18 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2DiDUcYX;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=gM5Pcz1N;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357718;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=IbukKrCLsnwnxnKsZsdfQN8dqj/aZB5DyAFsSmzUA1Q=;
	b=CuZpboao+PQ1XS5YHQsQy3cR+fF7AVAD/FzBf+7Ur9jQKGrztdNFIFGOv/wuH+byy9GbEd
	dHU/9z3gVDoPoQcIfgxI737nc9NRB4owSg8CxGuj7jbW+mx9XnevLNep64/TTNx7r+VW5u
	hKPSWXZDnXhKtBNr4RYTH7DlceJm/r2POZaGqMdQEollHwmWJheKYCP8dd8dVRGfXxFFij
	J/fvy2Y9AThXc1ZVxnOvM5s3JN9BSTjC9+hz4D/rGpNuK6jM0QI3vCdoQw8jrBcsUd1ggV
	Ic73eXvBrGP7Y4XO9CegiuxMeOj1GZta2+2kUR5UutT0OTqcQgas0pC4T41Pcg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2DiDUcYX;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=gM5Pcz1N;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793357718; a=rsa-sha256;
	cv=fail;
	b=G95djsMCeMFKe8uQ3ZaBRcUll4LykXaDHI21QvPPHy0AQmXlIp/YW+IP1h4jon+uynt9om
	yl9WemqMsDMiD6KDhuYhzE6Dby3hqZzoHbk1YuAnFqNSQ8f7BdpeOCqx+1mvFc/qNlibwr
	imIV41+c/D7ZI1wTkA3715XnK6FKuqKRGrz+90Oh8kEwx7kIgqlWewiEFEzunRm9tNxQVE
	kr2Z4/y634NIa1XjTrfS69/9sZc/sNVpFgdqmrl2UWGKTc6no9cr3ofztZ5V/ZY/86E45D
	kHEs1C2e0BDpkLE9R/1ReQMZwg093NffJSd6EsSzAdcjAfJT8PPjUArbUJqa2g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=IbukKrCLsnwnxnKsZsdfQN8dqj/aZB5DyAFsSmzUA1Q=; b=2DiDUcYX8Aax8Z
	bTzID56LT2mgIEX9vZCxEsbBS22FevUU1wnwcNglzVp8gEs/ah5jPjN19FUGrzlMXYKYOYNuBc6zN
	7FPfjH07RCAtFjOiO/icrZXukRiLq4S3Bxt6F7K6WK3ZldS9oeQ6X7PVd4gr81DrH4ikmf/6pnj5P
	jCVuoATp6vUXnBm5li+90PdMRywRha++XdjlRlwQniZruLJ91Ch+URmSXKeloRnOP4VIBuHrFKnmg
	QfgGwdFrIiZwWlN4sJAqEraSmGhl7oZGTBKQnhS2Z9SJKCFOND5HCuCuIND2h3vedqxGT8o40jCzN
	Cd6TlEzpt7/zDn7qY35w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFO-0000000BSrA-28aW;
	Fri, 30 Oct 2026 10:54:10 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFK-0000000BSmj-1St9
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 10:54:08 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CDC7820296A;
	Fri, 30 Oct 2026 11:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IbukKrCLsnwnxnKsZsdfQN8dqj/aZB5DyAFsSmzUA1Q=;
	b=gM5Pcz1NtJNozjADRiaLm5XJHL0Q1qccnlRVReOGbck2R7xZb7p5DUQ4uArzPzQCwBlqe4
	r1vAMuitUfPkYlCDHifOQBJ7AosigIpdE6jtv2vA0vKJ08Kngi7gcru0WYxeIIl8KxxlHi
	I6QAdijuGQISPqRjCr5qLbFSJEiJRRq9FWTdB3WJw/E29aZ6rJQvYO2lsnmoOa85LuK9JM
	Vac8Iq6qQvrZ16UnRLIG9v+X2HzuWo3acCINlj9j8/kLVsFK1EBntEe5KDnG1tXSQ64JWb
	6kTSdeFf3+hEFBam9kuu4FnUnqjr9IjfpIWt28gv/bqCOaGrpkH9m31oXbP+kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IbukKrCLsnwnxnKsZsdfQN8dqj/aZB5DyAFsSmzUA1Q=;
	b=QQWHZrlu83/u90bdlSGQR6BRESaRxy35E7ZnLuLWJoh+LDp7iNXE8CVfvv5BVqzrWOb+/Z
	SKSyTRKQM43WHshDw6SeF5C6AhHDyxIUvSZ9UP6uLHAY+U08lNpT0Ly2iPYXGMoG+Hb6rz
	uLmtYBV1QklianN5FjyojixB3fupVUw+to+blfuZ1Nnd3D4XsZuHUvCoEAf9M8B1hdNUE7
	gpg6r8+Iha0CyyznTZyU7KGJVECvurxehTZPQOIzgMKjIZ1stSxODqvnEppxSXwzNLffXO
	XbvVmOxXOSTNCOQncJ0C72oNy2jahhUBPu/dHLhpknQTxhWOGJoJuDdjdLTeAg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793357640; a=rsa-sha256;
	cv=none;
	b=aMOighyYKFxId3O/Ruk8r2IXd9a4vI1P/elGj+7wn9CxoNnT3/3S5ufA876U9W7X4Feo8H
	r/9It1J5ef3kIaZmEd3CtTbSZVzTi2gzBxhYiO4+V09eHttRL6Ue/JuTXTxlg6y3dWr2y1
	Eb5dfriEBJvI2lU2Ls5XaHS8eJ8DMdsqpNMtTlM07EATJ/WF8XfxZDJTnDp7C2JA6qgRXh
	hbyQ1WoZ267gSmL7I2y5qsXKjUxUMGfDwiwslxREU0k6nW3csf72nxpB6CRPD2MgtXfqle
	nVxd9nPcbqKz/iX0RFjfhblokYAtY6LZno465OgIVsibpsHahxXoQjTzx4DTPQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 11:54:03 +0100
Subject: [PATCH 05/10] test: py: add test for reverting globalvars after
 boot
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-boot-globalvar-stack-v1-5-a03803e1100c@pengutronix.de>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793357640; l=5630;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=mFFDy3QWuRnRuAWNhn9VFsuXLRCHoxIhxDg7JS9MhKE=;
 b=CvZxFz46OD201birvzKQCnHDLAMG85pUH1NAziS7ree/QrBPQxwS6IffLXMSRLOUWNC6WFt3j
 qOTVq1crW5JDpq37yZiAIT0JWHrkT3rthMmdN7UxT9Ujte28QLbdw60
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_035406_548592_5DB14CD6 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Add tests for the globalvar scope around boot entries: a failing
    boot script that changes, creates and removes global.bootm.* and global.linux.bootargs.*
    variables and changes global.of.overlay.path a [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: gz1iyek99w8mk5b1r9etxioozy5f6icc
X-Rspamd-Queue-Id: 8D9FD20296B

Add tests for the globalvar scope around boot entries: a failing boot
script that changes, creates and removes global.bootm.* and
global.linux.bootargs.* variables and changes global.of.overlay.path and
global.linux.bootargs_append, where the configuration has them, must
leave them as they were before, while globalvars outside the scope keep
their new values. A
second test nests boot entries like devboot does and checks that the
outer entry's variables are visible in the inner one and survive it.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 test/py/test_boot_globalvar_scope.py | 117 +++++++++++++++++++++++++++++++++++
 1 file changed, 117 insertions(+)

diff --git a/test/py/test_boot_globalvar_scope.py b/test/py/test_boot_globalvar_scope.py
new file mode 100644
index 0000000000..041d38c814
--- /dev/null
+++ b/test/py/test_boot_globalvar_scope.py
@@ -0,0 +1,117 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+import pytest
+from .helper import devinfo, skip_disabled
+
+
+def write_bootscript(barebox, name, lines):
+    barebox.run_check(f"echo -o /env/boot/{name} '#!/bin/sh'")
+    for line in lines:
+        # Variable references must reach the script unexpanded. Neither
+        # quoting nor a backslash achieves that here, so splice in the
+        # dollar sign from a variable.
+        line = line.replace("$", "${dollar}")
+        barebox.run_check(f"dollar='$'; echo -a /env/boot/{name} \"{line}\"")
+
+
+def globals_now(barebox):
+    params = devinfo(barebox, "global")["Parameters"]
+    # devinfo prints "value (type: ...)", strip the annotation
+    return {k: v.split(" (type:")[0].strip('"') for k, v in params.items()}
+
+
+@pytest.fixture(scope="function")
+def scope_globals(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_BOOT", "CONFIG_CMD_GLOBAL",
+                  "CONFIG_CMD_ECHO")
+
+    barebox.run_check("global.bootm.image=/preset/image")
+    barebox.run_check("global linux.bootargs.preset=preset=1")
+    barebox.run_check("global linux.bootargs.removed=removed=1")
+    barebox.run_check("global.bootm.appendroot=0")
+    old_user = barebox.run_check("echo ${global.user}")[0]
+
+    yield old_user
+
+    barebox.run_check(f"global.user={old_user}")
+    barebox.run("global -r linux.bootargs.preset")
+    barebox.run("global -r linux.bootargs.removed")
+    barebox.run_check("global.bootm.image=")
+
+
+def test_boot_entry_reverts_globalvars(barebox, scope_globals):
+    old_user = scope_globals
+    before = globals_now(barebox)
+
+    # boot related globalvars outside of bootm.* and linux.bootargs.*,
+    # where the configuration has them
+    others = {var: val for var, val in (("of.overlay.path", "/does/not/exist"),
+                                        ("linux.bootargs_append", "1"))
+              if var in before}
+
+    write_bootscript(barebox, "scope", [
+        *(f"global.{var}={val}" for var, val in others.items()),
+        "global.bootm.image=/does/not/exist",
+        "global.bootm.oftree=/does/not/exist.dtb",
+        "global.bootm.appendroot=1",
+        "global.linux.bootargs.dyn.root=root=/dev/leak",
+        "global linux.bootargs.leak=leak=1",
+        "global.linux.bootargs.preset=preset=2",
+        "global -r linux.bootargs.removed",
+        "global.user=scope-test",
+    ])
+
+    # bootm fails on the nonexistent image, so boot returns
+    barebox.run("boot scope")
+
+    after = globals_now(barebox)
+
+    # values within the boot scope are restored...
+    assert after["bootm.image"] == "/preset/image"
+    assert after["bootm.oftree"] == before["bootm.oftree"]
+    assert after["bootm.appendroot"] == "0"
+    assert after["linux.bootargs.preset"] == "preset=1"
+    for var in others:
+        assert after[var] == before[var]
+
+    # ...vars created by the boot entry are gone...
+    assert "linux.bootargs.leak" not in after
+    assert "linux.bootargs.dyn.root" not in after
+    assert "linux.bootargs.dyn.ip" not in after
+
+    # ...vars removed by the boot entry are back...
+    assert after["linux.bootargs.removed"] == "removed=1"
+
+    # ...and the loadaddrs don't come back as 0xfffffffe after a failed boot
+    assert after["bootm.image.loadaddr"] == before["bootm.image.loadaddr"]
+
+    # globalvars outside the boot scope are left alone
+    assert after["user"] == "scope-test"
+    assert old_user != "scope-test"
+
+
+@pytest.mark.usefixtures("scope_globals")
+def test_boot_entry_scope_nests(barebox):
+    # devboot-style: an outer entry sets up bootargs that must be visible
+    # in, and survive, the inner boot entry
+    write_bootscript(barebox, "scope-inner", [
+        "global.bootm.image=/does/not/exist",
+        "echo inner-sees ${global.linux.bootargs.outer}",
+        "global.linux.bootargs.outer=outer=clobbered",
+        "global linux.bootargs.inner=inner=1",
+    ])
+    write_bootscript(barebox, "scope-outer", [
+        "global linux.bootargs.outer=outer=1",
+        "boot scope-inner",
+        "echo outer-sees ${global.linux.bootargs.outer} "
+        "inner=${global.linux.bootargs.inner}",
+    ])
+
+    stdout, _, _ = barebox.run("boot scope-outer")
+    assert "inner-sees outer=1" in stdout
+    assert "outer-sees outer=1 inner=" in stdout
+
+    after = globals_now(barebox)
+    assert "linux.bootargs.outer" not in after
+    assert "linux.bootargs.inner" not in after
+    assert after["bootm.image"] == "/preset/image"

-- 
2.47.3



