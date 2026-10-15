Delivery-date: Thu, 15 Oct 2026 13:31:07 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHJfv-00Dtwd-1Q
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 13:31:07 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 936D1202012
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 13:31:06 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NZmzQPHm;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=HAsXeUP2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792063866; a=rsa-sha256;
	cv=pass;
	b=MRiyxFufLFjDIphoVkoRfxBW8GgOXgVvDMhg4l5VI9oJkqnyjJouQIFcNiZmrLNRGMFZYx
	VuRsAIb0Z9ksey6fjPWv84OWJGA+At9P3PfETemFLtiU4u1+tfLzGGvmqBCZil+iEPHjM7
	12rhpkCjzHNS6khHFmhJFkDt73gqtXq7618wXmURaRt55vUBPOH2ZP3woHpV49sxcq44R6
	sV3wKCpQZYpqKl0t69RVua3O5yeIENDDrvlHT7KWI6uI1UkPtP35s/yz6wftHiDGwKmhhJ
	tDvBcre+MmBRmHleh2F/aIl8ebMDv+gaQcbljVkPStJStQ30/MTreOTUJc2jGA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NZmzQPHm;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=HAsXeUP2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792063866;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=IKxOItVrrOBreMV+SVfmjJxudEyeNQo4iThYIy53FSo=;
	b=INz84t66CXwgx7l4O+9jvglpsqD6mvS1uiDfUgHzRgMjfKtBSiuLuiG+MnNlJEW+uDhvHE
	rs88nOeBuv1e7qlPRgZer0CHkoa0mIJhSIHiOFmm2cKM1UfPxtQc6NBZWcvoN9goqAhzNl
	lWWrKqEDu86+PyHLe3shlkR0Fsomj/eYSPsjZbowD9kzsBS9wRcckQXWTLW6vcv4GrJt16
	pdpcb8MDb61zOZAu9GBzhXWuUMLdK43yB/PJHiMAwvRc+P3K7EQxFvGoFpAD2JEOg9amJD
	MotVah420+3kcZomMus9R5XA60ciwShWcnyaknlo5ehAz93UWwjmQE3UEUveqQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IKxOItVrrOBreMV+SVfmjJxudEyeNQo4iThYIy53FSo=; b=NZmzQPHmhaEenCqDiPpKACKsnD
	B36f4dzxz9vdMnP+GAVGGljL0YxGHbj9O7oHmD1+zcrgb+1MkJrQW4JEMk4+jnk2/uTrzID//uqh8
	CkOD24Nopm7v/WLjap3N90lXo8BanGbLf1WPtCvhuX7nWJCWV3T+IiylOvGmSmkVBR4FL642vNX+H
	FNZ7rmfEY3NRNnuMy0rJuyocnKc4gHXLiDLq2HODop9yIE1+MJVp/7Tu4bR0S31dc+ZAdbu0vLGDg
	3ygllhMUXOTFtobjdHO7jNZxzwWu7mjY6su9Xls+Icj4I78P7Srl9QQHaF/9QGJePN7JTsM7FSdz5
	bj+6QKkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJeo-0000000HZg1-1K7k;
	Thu, 15 Oct 2026 11:29:58 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJei-0000000HZdW-16WD
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 11:29:54 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6D8232027CF;
	Thu, 15 Oct 2026 13:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792063790;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IKxOItVrrOBreMV+SVfmjJxudEyeNQo4iThYIy53FSo=;
	b=HAsXeUP2PUpQTGuIAO4a3s5uxuxdo5ZUC8pvc08P2/51vrbImd5KmPUvAAALPW/Saa+VM6
	jJCJfRwrbAOLxNamb9refU2mFekrFKYlnc2k3UTbQpPdjYrKeFduwrN8LOuh1q/b+Q4ThF
	O59x6owdCCaC0wx9qJGHSlSNxyRGnfAu0jJn7R3w35jUO1lnRkPjQg7FFt8p9ugn1cpf1D
	hkfqbXy/1tRSZUmnB48uGmUvFB4RxTzwhBmMdq3oetl0XFZ7Jy+TnxcYbJe0QQatathbfx
	O+YNXBZaIXYcVKmM8RnChNa9OuRSrFvKwTztf6m8Ua41rZxMxTNLQGPvVoI4RQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792063790; a=rsa-sha256;
	cv=none;
	b=aTupjNAm7l+YOQfNilRdu1jIBaBSSvJmqqAwuGqzgX9xrHgfX65I/m434y9T9doBQ748/Z
	SCQl/BA1WXQdoyT5G8zLeUOYvDB5eqzAq0NkrbXupJDlqyb0h7Te3jsALDspZwQNy32UBN
	gx4TfaYbykd3AXVWZPT7o5xvIp8MSegnx7Fpvt0HPkm3KXYsyBEolDFdvLvNlnptx0/dlq
	4YBZ4fV+Q04P2FByHDn6EUup1bNY16bOA9vbAFZO+l8sRwB3tIBFM1HL7fHUbc5ZAFKCMB
	Oe0uCA4jNaqAEKfO1z4OROnuuR4oAqWrRtwsCujTdaQZl9+TW1ox1bx0iOPp0w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792063790;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IKxOItVrrOBreMV+SVfmjJxudEyeNQo4iThYIy53FSo=;
	b=Brpq20DQjaWrq4pGR7BH0JfrGePuFtiLABpYnD/G58k0pf/Pj+BTwAE4F7isYp2SmbH1Cd
	bpSWdFugZRF2NFljV5pZAdYtBcFVGUG4qbsLlOiH6HBO3CvhuyBU2VE8/fkACUpPsrWDBg
	T3UMFYpV9G0qSUTX5HYCAKGibelYdmdykfZZbFnIS1IO6/RUxIt6lBq2HwK9LjO6jnKKx0
	jrYOzii0m0Ccob5EWkCth6jZMRkatRl7sOJ6MtmHobP3W71cL0kVZP+agbv7VqAPEEMAnZ
	MrP9DwPi/f4I8MXNyl8B9PhC3pEmhH7k8Hrtp727MGyjeDJB70jy7EP1B+ip2Q==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 4528D7415DA;
	Thu, 15 Oct 2026 13:29:50 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 2/2] test: py: add test for FIT images in global.of.overlay.path
Date: Thu, 15 Oct 2026 13:29:41 +0200
Message-ID: <20261015112949.2983458-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015112949.2983458-1-a.fatoum@pengutronix.de>
References: <20261015112949.2983458-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_042952_458834_EC6C54C6 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Applying overlays
    from a FIT image in global.of.overlay.path has no test coverage so far. Let's
    add a test that builds a FIT with three overlay configurations and a kernel
    configuration and checks the fixed-up device tree: the kernel configuration
    is skipped, the pattern and compatible fil [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 T_PDS_OTHER_BAD_TLD    Untrustworthy TLDs
                             [URI: overlays.fit (fit)]
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 936D1202012
X-Stat-Signature: 89xjxun3rdq8ye6m643yd3qtkwfjk84q

From: Ahmad Fatoum <a.fatoum@barebox.org>

Applying overlays from a FIT image in global.of.overlay.path has no test
coverage so far.

Let's add a test that builds a FIT with three overlay configurations and
a kernel configuration and checks the fixed-up device tree: the kernel
configuration is skipped, the pattern and compatible filters are honoured
and an overlay with a bad hash is not applied.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/py/test_of_overlay.py | 204 +++++++++++++++++++++++++++++++++++++
 1 file changed, 204 insertions(+)
 create mode 100644 test/py/test_of_overlay.py

diff --git a/test/py/test_of_overlay.py b/test/py/test_of_overlay.py
new file mode 100644
index 000000000000..8eb2e5e30aa7
--- /dev/null
+++ b/test/py/test_of_overlay.py
@@ -0,0 +1,204 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+import os
+import shutil
+import subprocess
+import pytest
+from .helper import skip_disabled, filter_errors
+
+TESTNODE = "/barebox-fit-overlay-test"
+
+# name: (compatible, value of the order property)
+OVERLAYS = {
+    "a": (None, "a"),
+    "b": ("barebox,fit-overlay-test-b", "b"),
+    "c": ("barebox,fit-overlay-test-c", "c"),
+    "kernel": (None, "kernel"),
+}
+
+ITS = """/dts-v1/;
+
+/ {
+	description = "global.of.overlay.path test";
+	#address-cells = <1>;
+
+	images {
+		kernel {
+			data = /incbin/("kernel.bin");
+			type = "kernel";
+			arch = "arm64";
+			os = "linux";
+			compression = "none";
+			hash-1 {
+				algo = "sha256";
+			};
+		};
+%s	};
+
+	configurations {
+		/* has a kernel, so it is not an overlay configuration */
+		conf-kernel {
+			kernel = "kernel";
+			fdt = "overlay-kernel";
+		};
+%s	};
+};
+"""
+
+ITS_OVERLAY = """		overlay-%s {
+			data = /incbin/("%s.dtbo");
+			type = "flat_dt";
+			arch = "arm64";
+			compression = "none";
+			hash-1 {
+				algo = "sha256";
+			};
+		};
+"""
+
+ITS_CONFIG = """		conf-%s {
+			fdt = "overlay-%s";
+		};
+"""
+
+
+def mkdtso(name, compatible, order):
+    compat = f'\tcompatible = "{compatible}";\n' if compatible else ""
+
+    return f"""/dts-v1/;
+/plugin/;
+
+/ {{
+{compat}	fragment@0 {{
+		target-path = "/";
+		__overlay__ {{
+			{TESTNODE[1:]} {{
+				applied-{name};
+				order = "{order}";
+			}};
+		}};
+	}};
+}};
+"""
+
+
+def run(cmd, **kwargs):
+    subprocess.run(cmd, check=True, **kwargs)
+
+
+@pytest.fixture(scope="module")
+def overlay_fit(testfs):
+    path = os.path.join(testfs, "of-overlay")
+    os.makedirs(path, exist_ok=True)
+
+    images = configs = ""
+    for name, (compatible, order) in OVERLAYS.items():
+        with open(os.path.join(path, f"{name}.dtso"), "w") as f:
+            f.write(mkdtso(name, compatible, order))
+
+        if name != "kernel":
+            images += ITS_OVERLAY % (name, name)
+            configs += ITS_CONFIG % (name, name)
+
+    images += ITS_OVERLAY % ("kernel", "kernel")
+
+    with open(os.path.join(path, "overlays.its"), "w") as f:
+        f.write(ITS % (images, configs))
+    with open(os.path.join(path, "kernel.bin"), "wb") as f:
+        f.write(b"not a kernel")
+
+    try:
+        for name in OVERLAYS:
+            run(["dtc", "-I", "dts", "-O", "dtb", "-o", f"{name}.dtbo",
+                 f"{name}.dtso"], cwd=path)
+        run(["mkimage", "-f", "overlays.its", "overlays.fit"], cwd=path,
+            stdout=subprocess.DEVNULL)
+    except FileNotFoundError as e:
+        shutil.rmtree(path)
+        pytest.skip(f"missing dependency: {e}")
+
+    # Change a property name in overlay-b, so its hash no longer matches
+    with open(os.path.join(path, "overlays.fit"), "rb") as f:
+        fit = f.read()
+    assert fit.count(b"applied-b") == 1
+    with open(os.path.join(path, "tampered.fit"), "wb") as f:
+        f.write(fit.replace(b"applied-b", b"applied-x"))
+
+    yield "/mnt/9p/testfs/of-overlay"
+
+    shutil.rmtree(path)
+
+
+@pytest.fixture(scope="function")
+def overlay_vars(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_FITIMAGE", "CONFIG_OF_OVERLAY",
+                  "CONFIG_CMD_OF_DUMP")
+
+    yield
+
+    barebox.run_check('global.of.overlay.path=""')
+    barebox.run_check('global.of.overlay.pattern="*"')
+    barebox.run_check('global.of.overlay.compatible=""')
+
+
+def fixed_testnode(barebox):
+    """Return the applied overlays and the order property of the test node
+    in the device tree a kernel would be started with"""
+    stdout, _, returncode = barebox.run(f"of_dump -F -p {TESTNODE}")
+    if returncode != 0:
+        return set(), None, stdout
+
+    applied = {line[len("applied-"):-1] for line in stdout
+               if line.startswith("applied-")}
+    order = next((line.split('"')[1] for line in stdout
+                  if line.startswith("order = ")), None)
+
+    return applied, order, stdout
+
+
+def test_of_overlay_fit(barebox, overlay_vars, overlay_fit):
+    barebox.run_check(f"global.of.overlay.path={overlay_fit}/overlays.fit")
+
+    applied, order, stdout = fixed_testnode(barebox)
+
+    assert filter_errors(stdout) == [], stdout
+    # conf-kernel is skipped, the others are applied in FIT order
+    assert applied == {"a", "b", "c"}, stdout
+    assert order == "c", stdout
+
+    # Only the device tree passed to the kernel is changed
+    _, _, returncode = barebox.run(f"of_dump {TESTNODE}")
+    assert returncode != 0
+
+
+def test_of_overlay_fit_pattern(barebox, overlay_vars, overlay_fit):
+    barebox.run_check(f"global.of.overlay.path={overlay_fit}/overlays.fit")
+
+    # The pattern matches on the configuration name
+    barebox.run_check('global.of.overlay.pattern="conf-a overlay-b *-c"')
+    applied, order, stdout = fixed_testnode(barebox)
+    assert applied == {"a", "c"}, stdout
+    assert order == "c", stdout
+
+    barebox.run_check('global.of.overlay.pattern="conf-kernel"')
+    applied, _, stdout = fixed_testnode(barebox)
+    assert applied == set(), stdout
+
+
+def test_of_overlay_fit_compatible(barebox, overlay_vars, overlay_fit):
+    barebox.run_check(f"global.of.overlay.path={overlay_fit}/overlays.fit")
+
+    # Overlays without a compatible are always applied
+    barebox.run_check("global.of.overlay.compatible=barebox,fit-overlay-test-b")
+    applied, order, stdout = fixed_testnode(barebox)
+    assert applied == {"a", "b"}, stdout
+    assert order == "b", stdout
+
+
+def test_of_overlay_fit_bad_hash(barebox, overlay_vars, overlay_fit):
+    barebox.run_check(f"global.of.overlay.path={overlay_fit}/tampered.fit")
+
+    # overlay-b sets applied-x instead of applied-b in tampered.fit
+    applied, _, stdout = fixed_testnode(barebox)
+    assert "x" not in applied, stdout
+    assert any("hash BAD" in line for line in stdout), stdout
-- 
2.47.3



