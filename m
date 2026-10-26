Delivery-date: Mon, 26 Oct 2026 13:12:26 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLJYw-003V7R-0Y
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 13:12:26 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0E9922022E2
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 13:12:26 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=y8b+eumY;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NHUaABjY;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793016746; a=rsa-sha256;
	cv=pass;
	b=FOlNxOB0H2dNPtb4z99ZfOjxD5sDb1ZtVtk6LSXi48iAQlDcde474ZlReWqbCL59Y9e5VK
	hbyWhtiVbH2CpnAoOtRTOojnUe77qAsa/QY9VYpRSH7gqF4Zpcb4VZWVubpVAESWi52yIp
	+XKXoDmWe5TX7rv95NdQBBK6/D5h3qZCOkjq0FuNKg1ucnQyBxjP6Q026EYPIecewRuPZA
	VzMD5x2T5talzoieSsSVnjPShPybxTTOkM4fcOH62e/cqmg0tQc+jC812Lgbw22YkHJ/hD
	XDIOczZpRUL6oN4wq3iiP5i9qEJZ8ivoRFI5rp3EsBIli3md0194UT/2tKzzhQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=y8b+eumY;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NHUaABjY;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016746;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=pKQjTcpBYO4B4Ep8rWUkJUkbgRMxSU0ALc0WquyZX6Y=;
	b=JJ5ZdPqAYMXy4rbxAsJMA0xLcvVXRVhNPmM9VTFJE2rfuc1PyJ0Z2/JPr/0xcm7y9DGkzI
	ob0msHZxNXWWsg3sCSPO4K3WU9WipTOgv95+Azv8maqxDacmMvReu+7v4/KKVfy3UmpB6a
	an2HIA/mM7paW1uMsYTu3u5AZKEEmFRChv0bNSzxS4qjZ9q4COwxWlfThnc3DHSVwN7ws4
	pxC68sEZzmjdu5xI0n7ixoIBVMHvVI+I6GxpHxbx3xiafnuPNpIc74jUo5J/qqP8XREns5
	ldZjP9UzbQjgcvRX97+gAgXUa3AFbxhisNB0royYqi0VSu5kjazQTYmVhzQr/A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=pKQjTcpBYO4B4Ep8rWUkJUkbgRMxSU0ALc0WquyZX6Y=; b=y8b+eumYFf/aon
	9AmQEDlAIzG8Oxbj0e2IZDazcbu7G9iqcy2oFm8hydwzYd3UhNXh9TLczciKTnEKdIig5ULgeVUUa
	wa2QhItVFR8+ai3v2xtPk8jk9h36lIyFaJL1dhA+duo50RuiK3I4A2eYDW0+vWJxJrG/57Cu8GsTO
	pdYa2sYVJkCKB0WggjdZVVR3HZz+9uYLQedAIc630Ol6lqxBw0gMEfpC7pYIGt/F9ZNr0+xkSg70Y
	Ce7PJcWcI8B+FTiWyhQX1f6jJZTGo4IdisyN16kR66XfCli/KIiGeiVFcw5rm4KVra/dMdttcdH7X
	RZYdHu1xljME3JaBBgcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYa-00000002TEZ-2lpY;
	Mon, 26 Oct 2026 12:12:04 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYV-00000002TA0-2DGH
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 12:12:02 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A319E202354;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pKQjTcpBYO4B4Ep8rWUkJUkbgRMxSU0ALc0WquyZX6Y=;
	b=NHUaABjY/PRldz/WIkMPlzdjGEr/gmciYjfLxrnjf4csWMwU3YU/fhXV7ZS0WBvhql4MFO
	Jn+GzJrcBEGscIWlVaKMRJQbxTSXFzN2QtHJvMFjHNPnpoTyCTuOsykRKPj+5425Uw1LU+
	y5qQtm1R8ZdWbnxg0Oo4EmTATzuL8bMivwPRrGCS8jHfWH178wfTD48ibY8dbJTrm2cwEM
	iNBWxSTfr6TOITka1jw242/RhGQJ5MZGVTmzQ5JrKVxjKfNq2Rs8qIgSezQUpCfOk7m20o
	RarB9lxgnMJ+23FRCjJlc71sAi8WTM5uSC/GWsyaXQt86+KWl5d84iq4UxmVvA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793016716; a=rsa-sha256;
	cv=none;
	b=JTeemF8WwSzSwt6uXyGWG+vy+pEBvcOm0yWN94zqcXE7W3ihUSbP4XDh9Aq27rOt5r9F9I
	GSCJ235cxYygEMeIJY0eQV0BeZdh+Ja323hEhUPEQxgWuURZ+eDKmBZ9inym+SB/bEzJfS
	XnfZvkgErmI4Qw3zGsBii4gPc0w8vSFjym6o4k+VObfJc016lFEIUZ5jN+eFmNH0GOcECl
	PJu2QlBBFAfwV8z9PeOmPuRAkeIjs9T0XiHUngnwLv9OFu+9YRSnBr6lK4JvUd1CX2Q2QH
	zscah2E+/wA8O4Yog4X3Hzk7cg6ejFNDg9ueAb8olnOvllMIqKi2d5V3ioNKIQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pKQjTcpBYO4B4Ep8rWUkJUkbgRMxSU0ALc0WquyZX6Y=;
	b=VE7MhnOYKCwM/RAiUHipr7sRLjAh5dFUTpvPkWmpIfw433rQTDuXHQhrFgZ4f2gnj/oAK0
	R7QEbFf/tOTX+SFZMu8DxC62LliA32+bwQyqfetxtOl9Kt2eynv3O35nHY+KWistCtpzMR
	KY/gyYMe4mz+4fn6dZHCWBsv7q5GeQtFB972ySFZPZSxfrRFqlloU3d0xtHrbl/y3vCAWg
	ZwcOpsnPrpdrxLgIu9CgLwmkYz9t92XE26oBfgBGccj4/uNY9Ni1ax6taNAiHmOX32iBg8
	mcYesY+yP/ucrd1eg87GohiYLCoq/wTjQrg2UtKmIhjH+sw2EQ+VT1lpRDMEBw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 89940745F30;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v3 04/12] common: bootargs: drop legacy bootargs fallback with FLEXIBLE_BOOTARGS
Date: Mon, 26 Oct 2026 13:09:55 +0100
Message-ID: <20261026121150.455510-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261026121150.455510-1-a.fatoum@pengutronix.de>
References: <20261026121150.455510-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_051159_739179_74684AB1 
X-CRM114-Status: GOOD (  22.84  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  linux_bootargs_get() falls back to the legacy bootargs environment
    variable whenever the concatenation of all global.linux.bootargs.* variables
    comes out empty. That contradicts the documentation, whi [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0E9922022E2
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: mutqa8ed8po714eie41es44ccucf1u4j

linux_bootargs_get() falls back to the legacy bootargs environment variable
whenever the concatenation of all global.linux.bootargs.* variables comes
out empty. That contradicts the documentation, which describes bootargs as
the CONFIG_FLEXIBLE_BOOTARGS=n way of passing a command line, and it only
worked until the first boot entry had run: bootscript_boot() registers
global.linux.bootargs.dyn.ip and .dyn.root, and the separator between the
two empty variables made the result non-empty, so the kernel got a command
line consisting of spaces instead.

The early return taking the fallback also skipped global.linux.mtdparts.*
and global.linux.blkdevparts.*, so these only reached the kernel if a
global.linux.bootargs.* variable had a value, or the separators above made
it look like one had.

Drop the fallback, append mtdparts= and blkdevparts= whenever they are set
and return NULL only when there is nothing to pass at all. All callers
already handle a NULL command line, as the fallback could return NULL as
well.

Assisted-by: Claude:opus-5
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../flexible-bootargs-legacy-fallback.rst     | 19 +++++++++++
 Documentation/user/booting-linux.rst          |  6 ++--
 common/bootargs.c                             | 33 ++++++++-----------
 3 files changed, 37 insertions(+), 21 deletions(-)
 create mode 100644 Documentation/migration-guides/migration-master/flexible-bootargs-legacy-fallback.rst

diff --git a/Documentation/migration-guides/migration-master/flexible-bootargs-legacy-fallback.rst b/Documentation/migration-guides/migration-master/flexible-bootargs-legacy-fallback.rst
new file mode 100644
index 000000000000..abb9a80d385b
--- /dev/null
+++ b/Documentation/migration-guides/migration-master/flexible-bootargs-legacy-fallback.rst
@@ -0,0 +1,19 @@
+Legacy bootargs variable ignored with CONFIG_FLEXIBLE_BOOTARGS
+--------------------------------------------------------------
+
+With ``CONFIG_FLEXIBLE_BOOTARGS`` enabled, the kernel command line used to
+fall back to the legacy ``bootargs`` environment variable whenever the
+concatenation of all ``global.linux.bootargs.*`` variables came out empty.
+This fallback is gone, only the global variables are used now.
+
+The fallback was already mostly unreachable: once a boot entry had run,
+``global.linux.bootargs.dyn.ip`` and ``global.linux.bootargs.dyn.root`` were
+registered and the separator between the two empty variables made the
+concatenation non-empty.
+
+Set ``global.linux.bootargs.base`` instead of ``bootargs``, or disable
+``CONFIG_FLEXIBLE_BOOTARGS`` to keep using the legacy variable.
+
+``global.linux.mtdparts.*`` and ``global.linux.blkdevparts.*`` are now
+passed to the kernel even if no ``global.linux.bootargs.*`` variable has a
+value. Previously, they were dropped along with taking the fallback.
diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index afc705ac865b..534b27e2167b 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -86,8 +86,10 @@ The simple method to pass bootargs to the kernel is with
 takes the bootargs from the :ref:`bootargs <magicvar_bootargs>` environment variable.
 
 With ``CONFIG_FLEXIBLE_BOOTARGS`` enabled, the bootargs are composed
-from different :ref:`global device<global_device>` variables. All variables beginning
-with ``global.linux.bootargs.`` will be concatenated to the bootargs:
+from different :ref:`global device<global_device>` variables and the
+:ref:`bootargs <magicvar_bootargs>` environment variable is ignored.
+All variables beginning with ``global.linux.bootargs.`` will be concatenated
+to the bootargs:
 
 .. code-block:: sh
 
diff --git a/common/bootargs.c b/common/bootargs.c
index 6373d9ccb1f7..1008e5cfccc0 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -17,12 +17,10 @@ static int linux_bootargs_overwritten;
 /*
  * This returns the Linux bootargs
  *
- * There are two ways to handle bootargs. The old legacy way is to use the
- * 'bootargs' environment variable. The new and more flexible way is to use
- * global variables beginning with "global.linux.bootargs." and
- * "global.linux.mtdparts.". These variables will be concatenated together to
- * the resulting bootargs. If there are no "global.linux.bootargs." variables
- * we fall back to "bootargs"
+ * The bootargs are concatenated from the global variables beginning with
+ * "global.linux.bootargs.", "global.linux.mtdparts." and
+ * "global.linux.blkdevparts.". The legacy 'bootargs' environment variable
+ * is only used by the CONFIG_FLEXIBLE_BOOTARGS=n stub in <bootargs.h>.
  */
 const char *linux_bootargs_get(void)
 {
@@ -32,20 +30,12 @@ const char *linux_bootargs_get(void)
 		return linux_bootargs;
 
 	free(linux_bootargs);
-	linux_bootargs = NULL;
-
-	bootargs = globalvar_get_match("linux.bootargs.", " ");
-	if (!strlen(bootargs)) {
-		free(bootargs);
-		return getenv("bootargs");
-	}
-
-	linux_bootargs = bootargs;
+	linux_bootargs = globalvar_get_match("linux.bootargs.", " ");
 
 	parts = globalvar_get_match("linux.mtdparts.", ";");
 	if (strlen(parts)) {
-		bootargs = basprintf("%s mtdparts=%s", linux_bootargs,
-				       parts);
+		bootargs = basprintf("%s%smtdparts=%s", linux_bootargs,
+				     *linux_bootargs ? " " : "", parts);
 		free(linux_bootargs);
 		linux_bootargs = bootargs;
 	}
@@ -54,14 +44,19 @@ const char *linux_bootargs_get(void)
 
 	parts = globalvar_get_match("linux.blkdevparts.", ";");
 	if (strlen(parts)) {
-		bootargs = basprintf("%s blkdevparts=%s", linux_bootargs,
-				       parts);
+		bootargs = basprintf("%s%sblkdevparts=%s", linux_bootargs,
+				     *linux_bootargs ? " " : "", parts);
 		free(linux_bootargs);
 		linux_bootargs = bootargs;
 	}
 
 	free(parts);
 
+	if (!*linux_bootargs) {
+		free(linux_bootargs);
+		linux_bootargs = NULL;
+	}
+
 	return linux_bootargs;
 }
 
-- 
2.47.3



