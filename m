Delivery-date: Fri, 13 Nov 2026 08:27:31 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRlh5-00AL46-11
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 08:27:31 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 28C03201544
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 08:27:31 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Co1BhwpF;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=My+jvVES;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554851;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=qc3jY51wnDfrPQPC8w98V8rthSxFxE8eb7WZN74rvQc=;
	b=HNLnNPEao7FxKPG7g4VLclGaFk6CxgQBxz/Sr6jtYG/yR6bY9OtAxtmK13WEVglLWqYMSU
	aLRgvuYjiolCj+2ft6M4c7cVu6EwdCKCE4dDz+RENgfZ19ZPlefqPw0Fpzp/aRT9VcxaT6
	K21kRF1Nz/0odTLcBedsVuUVy3PwnohFQQi4xBuoCAByscOeNBPOZY8zfNVTmo0i/NU/05
	KqqHx6xJq2EpfwspVTICuUl1Re4yrjXEy7wd081n2jQlsqhtSunibd633bd4IfjaGxn0hN
	bIQbAxfGDJ6D9j0RNOO6BN9v6XCi6PaJjfHovpo+1sPEa8cG1SAK1FzB8dP3/g==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794554851; a=rsa-sha256;
	cv=pass;
	b=eN+8COSKo6ahcGfS/Y5tRMGaPbGthGsnyl6yejI+IAP7FB/dQ1QxqYjqE2j9Nr01s0c+Wt
	7FIUHa5u7JkNjvQcKIzc7UsMMujfyUn4SPzv/LTzBfYpOXG/i0CiyUTVAehMgBK1IApJia
	uShdy1/Y7thRsXKtHbXBdcHBas/NyiZecKleBBlQ/w0FPiJC9TIlY2oFvicjxNSi3e6Esp
	befkffswSCGa2KcaHM7YH0cnuLy44+XA/vpXSCAfg4puSbq3rydG10DudGsw2FP8Rt9666
	vXPKNVO/pyFaRMUaZhi5yJ/r+bV8dl0Fv+fvvQJ8KbGCILzHoABHiwHALFUO/Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Co1BhwpF;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=My+jvVES;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=qc3jY51wnDfrPQPC8w98V8rthSxFxE8eb7WZN74rvQc=; b=Co1BhwpFw+7KYI
	MutLpRi1UnCIXbjReLmxaCxgfqXcSr6dSLPPROrCV8AeIV4NgXG7qWV1KRAxzzWl6xqzBk8f5jQrP
	E8lo0ylH5tNtygKY1HuPgdcQDHYf5szmbPt4UkTOLB5hptCCaGUc4C21GZvCGxGRbHrHOcokgx8Nb
	zN15Qwp7wp8H2TzjL/WeqR3bA1y7Dczmxps3C1WXe570HGOiQCY3X7sVRBi3KpvrBDMJEtmynI2XO
	RObEerQ6duVFcmMpZQu1ZMOs2HruVxQFHUFHQYd3K/9W4LTZ4oWnCB/KHDkTPVblNK8e90n0+Jcfr
	tzCWtPLkjwzpWi/HIj+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlao-0000000BtEw-2tkP;
	Fri, 13 Nov 2026 07:21:02 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlaY-0000000Bt1b-40uC
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 07:20:58 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BF45A20581F;
	Fri, 13 Nov 2026 08:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qc3jY51wnDfrPQPC8w98V8rthSxFxE8eb7WZN74rvQc=;
	b=My+jvVESLyKb34hF5aNFah0XTLiAGlkab8F8P0QW1lmeX/Cg/Y4szXks0jquANpyGbjKRT
	P14j0jvKWCBke24WZUV53N4OvoCTREeHDb/mgXn9nKo710DMCOC9C7q7M4iCBLNZDPcxXu
	Pi4cYnPufwakGeYs75oP2B3S2rrwUV7sQAPuv5wpfYL1rgLZKCRWWJjdykS5Hwfbaz+Pb2
	4pk6/MY7uVuKzfxqSW+nx7CbJvIkW8ZRHT/x/gRqVUZ4DIfnLFT4gNbJ9ypx4snQ9JFdeq
	g2NwtuzOasB+5K/ERmr1tvHvtaiwyn0kxjS8k3cE0vbPH4p3WeYHYJTkcH3oQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qc3jY51wnDfrPQPC8w98V8rthSxFxE8eb7WZN74rvQc=;
	b=fh/pKZ6Ik4Ce1lvDIIdJ0bj11A+8nLAyLqXx1wB6e3Te0e6Ryk4D3/XM0DzUPTSxwBify/
	2E/SJj96aTTVTP2VG+Sy+XIBFdfE1sfz7/a/nOa3bFsxs/7R8NI8TghC2abNXVne2poVmS
	zfd0KTvPH/PekLtpNOYSCm/hgRSnig/waPtbLq9Oe93CWQxArC9pgzCuJHHTUGtwXybNBC
	F3HChU++IU6FTSqCKOSYtmvDgUgadwdu+E535ij/1JYjMYnyGazlvpQRSozF0GzWqbtzAR
	yA48FmbeTCL+1g4iW0Lhv4IJrql5twnfCvrz64U+ipUmPABdrLTscphBsznbdQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794554441; a=rsa-sha256;
	cv=none;
	b=Dr0boRt/lw50ujq3T9UByT2ThrtsRoJGLraoWsW0u7Umlrax0FuBgGSIzidSIW+NxDJ8aK
	KvGRZ3ihKeH3lYHMUPa/jytsai0dCiPcUgjqg0yAALqh9Xkc3E1+4C0BMZ2LaSMjBVg9TP
	cO+vyMNcV9cUsbaugu/8RdD2/4XdIqSfgx0YHbmxm8blnt88ywULHnFATyudXDtSjJhI2Y
	tYOriWxO+Ikv+4HZl+MBddHJtPbGRtvyhuZ70a/hsmyEsu9tmWSWTUiaE/B384O1UxQsHN
	rJmJR1GDon6XvBdMYjE7Qd0MdolLJVGMpHguqu19wvenIia9vgs46Cgk5VWHxg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2026 08:20:40 +0100
Subject: [PATCH v2 5/9] test: py: add test for reverting globalvars after
 boot
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261113-boot-globalvar-stack-v2-5-14c0f0a0986e@pengutronix.de>
References: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
In-Reply-To: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794554441; l=5643;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=v1d9Z1AAfvlbnUjza34f7WwCB4SdI8mN1ODaLmaJRrk=;
 b=0dF4TFYUJhT9uUVvCwPFF1078FO945RnxZTr2GO6H/OFpBBo//rfZVzEGBAF6bHHbX0I7wVQ5
 HSOaa0jELSMCaDYkj/yZiUxiqBz0IuMeCtNk/749ofvAaAjOhyuQFT1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_232047_432691_2E0D82A8 
X-CRM114-Status: GOOD (  13.32  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 28C03201544
X-Stat-Signature: 1uddrixfskmjorucsts9iuzsgwntfmbk
X-Rspamd-Action: no action

Add tests for the globalvar scope around boot entries: a failing boot
script that changes, creates and removes global.bootm.* and
global.linux.bootargs.* variables and changes global.of.overlay.path and
global.linux.bootargs_append, where the configuration has them, must
leave them as they were before, while globalvars outside the scope keep
their new values. A second test nests boot entries like devboot does
and checks that the outer entry's variables are visible in the inner one
and survive it.

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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



