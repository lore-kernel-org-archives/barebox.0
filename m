Delivery-date: Fri, 30 Oct 2026 15:51:44 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMnxI-005BME-1C
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 15:51:44 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 367D4201F03
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 15:51:44 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=14TrVzWD;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=aOyzfGmP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793371904;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=jOI+oy0nFpXfaPcRdB00+Kxn/teiTtUTA20tQTMWWVM=;
	b=KpgE4BenDSrNmThpfeJL0oh1aLE1dvejY86KdkNPNpKZd3ObQj5XhdECh6hixlGnoGbtVV
	OKg2GN5rm6pllecScEYWwa/LbWZudUQoAGuIeYZyq//9d+vbveIwkHeaYxUu+2LZtvcqRO
	gTRjGrol3YxpXOOcier1lEN+4SeWBn1A6Fb4lof+xF05bKXXejHHl2tg743XQkVn+NvqP/
	uhAYAGxB1jE2Ekqp4wyN69P49arnEzXpBSlHnUPoo5QpXlnbbCZ64WPll4W4BU1g0ClJIg
	gqeEVk8MCIUWjASFCqXscxcDu9fPke7wX5nHaQ9rK4Z5BYFYAKAc0w4sIVR0hg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=14TrVzWD;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=aOyzfGmP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793371904; a=rsa-sha256;
	cv=fail;
	b=hCmeMP0Nsd28SAzyMBChyzSu/QXOr3AV61W8G2naM7ZMCxFOJ3HUQuv8mNhd24SGQGixvH
	nMcymG8FZoakKVPZeW0ABpQLoODuoOtM/GYsnAoFvdbpTzesRr0RZHwV0YlRrPZZ7j9Kuy
	cHR1AbXmU9bvUrVETkDj9goNGx2JX4BV3Mr/9GzK8kLE4y4ynsIfsy1r3BM18tstxWdxD2
	SWSTsM9ju2rsqKYoO9rLkVXedLJZUBrNYHhyWISg109lZ/Uxd4NtDfAXKpQr/asxVHXM9m
	+ln7yw6aNV69E7tFBIRe+oB16l8b2OZEiPE86/lS7edk1GLuWT0p1HdnzccOrw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=jOI+oy0nFpXfaPcRdB00+Kxn/teiTtUTA20tQTMWWVM=; b=14TrVzWDWsn7hz
	gdZkr5Kbin13q8QHsDxnaJMNpGs2J5nI0USUzQJdpHVjgqQqpMQp3c1Vei3Ad3WUylsKR2+Be2FK0
	JDHhLfTnfO85A6UIDXgpqqOuEfvGSgg9hJyoawiWsHf+lPS9NQ2IEyYNU4MhZ/HRXakC0Vv3nORdG
	BqyhiepAlyKjETkWAzcg1ZVzpplV3cZu0S4VCMsdd1Hw8gjnjVaQLFbvSi42XfNVixN+mEBaLbcoX
	V2aV/ar9D2bOF+O59z4hEMRkgB4TsRS9MXR59UF7URXVShK4aI+jTbZxwHgIsBcVfCwYvqns/s9hs
	rc9sSFFhgrqSUm0aaYNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnMS-0000000Bqjd-0l80;
	Fri, 30 Oct 2026 14:13:40 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnMN-0000000BqhC-2xdW
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 14:13:38 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A4B8C20295E;
	Fri, 30 Oct 2026 15:13:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793369612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jOI+oy0nFpXfaPcRdB00+Kxn/teiTtUTA20tQTMWWVM=;
	b=aOyzfGmPl5ekDS/fyEW10r0jqNJ/WPzmHlO4b4EoLpNy0ki8cJf83plEo4Q41rShy5uCrJ
	ubejvxrqdFxdk1d06aFDwg1vLk5rdj1VZzuPBaDt6ollJ6mclWRoMoifsQG+NCN4S2bVgB
	rPXtn5qc+DnGYwko0ontQpu53eBNE7EueFv0pXELQfpwcl/G8runuGW5RYEsdgHwqzFT/S
	g5kAY342AhkL5y0eoot1oGKMU3/H/u8fV8WfUFkTKiMzD/ZnLYJF0C3ijmkdKU7ujIJdLx
	YOwnIAe2iftO5OKPSSKEmaVO1aC3zVnWY/FefN8wV3a2UfsPpK1J0mOBIR2LNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793369612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jOI+oy0nFpXfaPcRdB00+Kxn/teiTtUTA20tQTMWWVM=;
	b=gFCfV9/+qz2rT20DvRQzHq7s6Vwsc2Ch6gofaY6yLWIIokNUlr9WSjBHaaRSis09OF4O4f
	1pUSn7B3xwrhEHsGkqYyublDCClpP5gkvseLZLzVsBwe87m4WHHx6lRURBN7wLIHLe+F3a
	jBs/zXZaMjUd9AdguK6pyQC5KRvMS4oZxwTQRejdKzTWWPcKvnnYQqWwqkmbGAsCkVInoJ
	/1zC9TPpOIaaSpj4CWdUqvxvDkZSZex5C3Ld3b2zkaWAK18EjuIn+Gtn8WbrmtdFopEYcP
	Y0cR22kn6LH5akN9M6TCIs/iSB/LRiLtTRR4Ehf1/uOGqS8ImyC1JlWHZecelg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793369612; a=rsa-sha256;
	cv=none;
	b=Jvc8qBtQMgjdf1JZBGSWjt8uXhqEJWYv7zfL9MkHTgqCxENof/EzGOpEeXD77+JjJ8/Hjs
	FTBnL1hNtJgiFHFT3BCJXY/I5UJaEYVkqvHYdCta3zc1Tp7X/Qhw0rTM2ilZ2uFnxJmanV
	GAtT6rncMLtIO07/KVbqtNB1yIzYGEwC/ClQWH7DpsjSv5jxx/a8YNCbUJjnCTcXV+OJho
	VBD4ozVXR+SJg9KGW58HRNmmLnU6zWKuiFl/2LF7WIDiFnY7z6RDK5wsxdd6f1iNNyO1i8
	I/pp/jAdP7V6Q7jBTFkogjd1p/nL/M3jklPjXNklYzDM7RNijv7QxdD3UjKPjQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 15:13:28 +0100
Subject: [PATCH 1/5] boot: report the exit status of failing boot scripts
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-devboot-v1-1-ab9dd3a92c66@pengutronix.de>
References: <20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de>
In-Reply-To: <20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793369612; l=3228;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=uPShFAKyB4b3grp+ruNsJmc+h8XNmSTZSSMOY5vK/sw=;
 b=gjyWJsa/M2rBWAhBCoGRMwaNnMxzuRs782A31Oqvtej5h1eUwV5JZeKBy80qVkAHV9KbXsa/8
 oOhbyksovs8AdgmysT/9zXZr3CYDy8z0QR/TpBtZqTyXV6wSS6wudVr
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_071336_045232_AB732D29 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  When a boot script exits with a non-zero status, execute_binfmt()
    returns that status as a positive value. bootscript_boot() passes it to strerror(-ret)
    and boot_entry() to %pe, both of which expect a [...] 
 
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
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: mh8gftoc5a98n4i1b1oomtc4hx4ysafe
X-Rspamd-Queue-Id: 367D4201F03

When a boot script exits with a non-zero status, execute_binfmt()
returns that status as a positive value. bootscript_boot() passes it to
strerror(-ret) and boot_entry() to %pe, both of which expect a negative
errno, resulting in messages like:

  ERROR: Running script '/env/boot/mmc' failed: error -1
  ERROR: Booting entry 'mmc' failed: 0000000000000001

Allow boot entries to return a boot script's exit status and have
boot_entry() report it as such. bootscript_boot() now only reports
errors of its own, so a failing script results in a single

  ERROR: Booting entry 'mmc' failed: exit status 1

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/boot.c               | 11 +++++++----
 include/boot.h              |  1 +
 test/py/test_boot_script.py | 13 +++++++++++++
 3 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index 023eaf5145..b993cabf65 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -115,10 +115,11 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 	 * without the shell expanding or splitting it first.
 	 */
 	ret = execute_binfmt(bs->args ? 2 : 1, argv);
-	if (ret) {
-		pr_err("Running script '%s' failed: %s\n", bs->entry.path, strerror(-ret));
+	if (ret < 0)
+		pr_err("Running script '%s' failed: %pe\n", bs->entry.path, ERR_PTR(ret));
+	/* positive values are the exit status, reported by boot_entry() */
+	if (ret)
 		return ret;
-	}
 
 	/* No point in repeating bootm if script already called it */
 	if (bootm_nattempts != bootm_command_attempts())
@@ -206,7 +207,9 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 	scope = boot_globalvar_scope_push();
 
 	ret = be->boot(be, verbose, dryrun);
-	if (ret && ret != -ENOMEDIUM)
+	if (ret > 0)
+		pr_err("Booting entry '%s' failed: exit status %d\n", be->title, ret);
+	else if (ret && ret != -ENOMEDIUM)
 		pr_err("Booting entry '%s' failed: %pe\n", be->title, ERR_PTR(ret));
 
 	globalvar_scope_pop(scope);
diff --git a/include/boot.h b/include/boot.h
index b30cdd314a..bb99dacc85 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -20,6 +20,7 @@ struct bootentry {
 	const char *title;
 	char *description;
 	const char *path;
+	/* 0 on success, else negative errno or a boot script's exit status */
 	int (*boot)(struct bootentry *entry, int verbose, int dryrun);
 	void (*release)(struct bootentry *entry);
 	struct bootm_overrides overrides;
diff --git a/test/py/test_boot_script.py b/test/py/test_boot_script.py
new file mode 100644
index 0000000000..be08e964d9
--- /dev/null
+++ b/test/py/test_boot_script.py
@@ -0,0 +1,13 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+
+def test_boot_script_exit_status(barebox):
+    barebox.run_check("echo -o /env/boot/exit3 '#!/bin/sh'")
+    barebox.run_check("echo -a /env/boot/exit3 'exit 3'")
+
+    stdout, _, ret = barebox.run("boot exit3")
+    assert ret != 0
+    assert "ERROR: Booting entry 'exit3' failed: exit status 3" in stdout
+    assert not any("Running script" in line for line in stdout)
+
+    barebox.run_check("rm /env/boot/exit3")

-- 
2.47.3



