Delivery-date: Fri, 13 Nov 2026 11:00:22 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRo50-00ANex-10
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 11:00:22 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2CA80202266
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 11:00:22 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yql5wL7u;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=LSf2H0uD;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794564022;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Fo45/mCzwMsSVCi8vYANqsPQ1b4zLtVoMUcqpQ0ZJL8=;
	b=dt9ORHtZNMqMdIwDrdHxp2sxHy8ldHyjbRL9IXNbnDOlWqlhXrmXCYWmuIolqVA3a9CQtK
	r71a6qARQNlkgCPqVKzfBCXHGZYBEZR6O3F4MCQ4Xfd57k90/uNoH3AjKvr23ZDppSxOAw
	ShSy2j+YiUVBSd/+F5VnTjzl0I+6t+rKbo/HBP+F7LC7/zz8VfjBID2w0D92tiP9Dg2sgy
	n/sfEWIHnckdACHVg/Yzhwi0ie4/KSyKNBUpGmxO+FQm7qxiyiGt3yFhK0L3RPuVXEDNdD
	mv/69UuAgB8YLuTGTi5lWgnopb8q3UgomL1PzEVSjOtHqakD+Ow8baf6dFJ7eQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794564022; a=rsa-sha256;
	cv=fail;
	b=HCOuxtSHnyEyONtmS8X8o+Ly7Abzzs4X+mdrE+IIe8wwO2HijE8ZPqe0RB79fJJh4g7JuI
	lBUiTQgjWoANak2TsrRh5UyZ8VGKSYO3Y6f3nZPLRY5xci4+JxpPfRIH6KaBTvjZolRNri
	FHvhWeIoPmePh0ZCL90hEXZoOevvcAAMR/xpc4wjfu8sqg9q7z59YdyTG/hGgCQj+FPiLj
	X2PBh6gAdz5eBuDqHnfojUZN3VpzJCJyYdLJe14cOfwD7jLIos+kUaQRjyV6FYLW4qYl38
	WoBSFjyAEnof/LhNBTHAw/4Bdc8kYADEVNOUsTI9iURNJb7AKuCufbUFULjBeQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yql5wL7u;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=LSf2H0uD;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Fo45/mCzwMsSVCi8vYANqsPQ1b4zLtVoMUcqpQ0ZJL8=; b=yql5wL7ue74ZhiatvE1P/ugjwg
	vcwn/QnAJHogDs9EQVrUjNmkV/ThvdQNi7mD/Mwy5XBu/nXPDt3Cc+1LnXg8n0zrc8uaQ6AnCOfCH
	vScmIHCE1Njjgkvu9oBVlY1X7c0eXP2ljByrcozz1coT6VcHeKqDp5cZV5xAIIf0aYahjmSIULVv6
	1I5wF5uywBO2zbYmGsqEcdUmsbOJ5D6OmLkN0ojum0gHThlzPLVCgtuWOm1mG4m1ZE8qeoAZLPmJI
	OwCWkdZGuBqLOMqqndMwxQrQ/9CX2z0dhFqMDfXTVX0/x7Cjh6baXbopIB3JsoUbqKCP+HcgRfpto
	PNaMzm9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo3G-0000000CHRB-2HDg;
	Fri, 13 Nov 2026 09:58:34 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo3C-0000000CHNy-3EQD
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 09:58:33 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C7FCB202266;
	Fri, 13 Nov 2026 10:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563908;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Fo45/mCzwMsSVCi8vYANqsPQ1b4zLtVoMUcqpQ0ZJL8=;
	b=LSf2H0uDct4/TEEb6u+evgNLqhhgjqHx9cpgcql84Cr3eIIspLldb3p3VHpASJHWzDgMRm
	tGxoEsCIenZLHCXM0b+JE39ST2sGv770wWrYUsr+JmcZrAcdNCxiYTJPQ22uuL80MwUfRy
	cpkgr3aHxj8pmxWG+n2Qqv2uAnlMW8UYjRk5jBZgQF78po22VPqDscn2OuV/ep7xKZJj/6
	7YX5vYr6XmloSUZcfyV1Iv6kUb9/WV0z4th9U7+o6KisuUpYYfCMfLeWcw2q1QhY2qXYTj
	uAt73IlrmPzkijUAjYJmWIA+N5FkYbCHNTjHdrgjpxfTPZR5KIZhpj7TJBA+8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563908;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Fo45/mCzwMsSVCi8vYANqsPQ1b4zLtVoMUcqpQ0ZJL8=;
	b=WgBMGZXRHzz0MR5EOruRnxNHWG3QP89rszfDUyy7gSBZTvhFo/qgQ5JVH34YjGuv/8+btz
	MdCExH31svnSchvpnSxgSLWWOoOw+vflfhz9xGa6hmGTq0oILLvxyvH6KQtsLLfN8XhVXY
	Smfdb8wxJrvTy8a3FziXLvHg3+Jqe2+koDr+lFnj9Nd0rSywDh+CDl4cZGHnw3+R8JKz0y
	EuK1nGQqYMYMkcQyLEHNLEsuLyRYnJOqjEbQhIJjBqj3zT7eNzts0K6oNWWdkVKEavhMtR
	1YbTPuN55ImX0Ckycy15/V79MU7XtWNrsFfkbVTKUrTdDn2hxcy/RGh//BK+hg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794563908; a=rsa-sha256;
	cv=none;
	b=dC8EwForLKV2is7OuFORstpg9S+6JlHGNDCsgpqle/omkhCHNY71t35WRbn6yULaVrM3H8
	FbzorU+WF+ogGv5/eQKCauOscf8iRM/SlNBcn0HMs9OYjf9SpF2VqDS4wVmth6apQdh5sv
	oTY4CZ7qQBK+khn7qK6XzDJ6fNDXTIdJx9TRn7D0jRbxVtVqyX8j1eQa8XF5IwoolaeYLW
	ryAhVv8U9W8DXCalOgficWvjASZp8pIcGpsvsBDMAG4pZuGTzbZUhJmeFb+OL+jvQBh0Cm
	1lo+zFg9OW6OF5CRVn14GH9TQzTaEqy3sgTIaQOYr1YHoUm74YqFNKCmWDIl5Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2026 10:58:24 +0100
Subject: [PATCH v2 1/6] boot: report the exit status of failing boot
 scripts
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261113-devboot-v2-1-f6853990006d@pengutronix.de>
References: <20261113-devboot-v2-0-f6853990006d@pengutronix.de>
In-Reply-To: <20261113-devboot-v2-0-f6853990006d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794563908; l=3244;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=dXI6gv6EGss4R0qY4LNHmJ1EW2w2H3+bjlRPmJ0C1do=;
 b=l3MkBNijSrXZowQFJdMKeFpA0L0hFNLQLexirHleC8Ekpa+IlMdo6CmSYFCcN+eeZKikJy5DG
 rS4vaDw/A7ICchrkpxrnJrtnbI6zs8fGO/pYiUYJu9N3vGhnMPoGt5N
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_015830_976072_78717AF0 
X-CRM114-Status: GOOD (  15.93  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_ALL(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 2CA80202266
X-Stat-Signature: c45r6o5g6tz5s8tq78xzmky6jh9bjquf
X-Rspamd-Action: no action

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

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
index 1ae689732d..dad45592a6 100644
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



