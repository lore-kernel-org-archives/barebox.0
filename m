Delivery-date: Fri, 30 Oct 2026 11:55:16 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMkGS-0057HZ-0W
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 11:55:16 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 10102202961
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 11:55:16 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="q/Nll3RE";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Wxz3XdH7;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357716;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Lk2B9AG5ds+pqeUjhbWMxre+nOyqBryQEJZgQ0YASpw=;
	b=GblfFBiK+QXryx/GmLsZHwmmVrZtsbgoORM5/fuS+s2683fWj9k0zzb2P/sfAE/jgNdFc1
	hQ8vphJWuLBxyqwfh/CXCaSnB0/9UmyHLeRwFpRNi5/c+HvmmjLRsEE+8a8Mfrk4z5zqGY
	uxxW4dvPlx724h9HJjdewEItk3hk77epwLfzNsj/LA+89jHHfESo/hmhCI5GPNCjIqDBaL
	BmAhXDP2lrr+p5fXumQB+G4mkMlukms+oGmeXEQdzPK+G68D2vc33XgTVeQ6PP10Xai+wn
	ANleZm4noMPezxaCNO60gR+MXk96mey2hDGSEDoehTiMnkDejV268vJqvadZ5Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="q/Nll3RE";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Wxz3XdH7;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793357716; a=rsa-sha256;
	cv=fail;
	b=JrCwEKzoMdfzhveGCfiSTMkWpraJ3CyCdZSvMs+GCPGXxgv8hqe/inKv+ALTcOqWXWDYVS
	iTfaLE1lxAk5MUIoCfw26I0UCY7SRSZoSLIyPex8qVPcbS5RvZ4h22mnY2QVDtA5cOidSa
	QZh08uoT1DvreVfLx+hsYxC2+YumVpeC/lHu7a+MlSCMQNx2ArWhw0SdTB5Xc7PIr1aHO6
	7OepxVL6y+Xt+wNBXsTr5z0eFFN/lWMYzL5BKKh1GPey3KVXnQdDvF+HrpK5oNV2spyF5y
	vuicUNy3zDvrJommU7fqwAvvgXw0mCfHaqzZeEJbCCLO3D1lTz+Px+Rq32gHqw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Lk2B9AG5ds+pqeUjhbWMxre+nOyqBryQEJZgQ0YASpw=; b=q/Nll3RExlahWe
	rXWCFWZOA04+KpoAGVvimAwIGUxdk293hWBcgM54LOXVSVCKf3tH5nruW7tUiUI1VE7d5w8mlqI5S
	0ln9WZOoD4ZR/4IN12j8b/6Ul1KwkoZjE9IK70hj+lf8jTMvLtcnZ/1oL6Fw7COn7fnUNgn0HOBR5
	3ytt1qn011LvjglzBTKkPLkLwbLgJBxgtF9UWQv+tAMN2mxemp8t/2lnLQp1O4AzsZk1rgknHVSBB
	FHGYhnjGHwqSqKS552vojtwRfTiwgJ4AOr6T8sdVnXYK3szcxz34gR4rBwOyQWzx7Rv6sfo1ZEM7S
	kCeAkb1hqSc5y4xQyeYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFN-0000000BSpb-0kjh;
	Fri, 30 Oct 2026 10:54:09 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFH-0000000BSlG-1xde
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 10:54:06 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B3196202962;
	Fri, 30 Oct 2026 11:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Lk2B9AG5ds+pqeUjhbWMxre+nOyqBryQEJZgQ0YASpw=;
	b=Wxz3XdH74QvQ+VSjpC5SnBOpliXISePtVQrKjkVqDUsQ1ziQWIfeRS9s/irxv0i4bEBQMG
	UMhenBW44CaO5Onyzl4lh2qLfyVRa92aJYu904i7E38nn/cuQ0e9jMv+eQZ9p/EmavZiaC
	YADMwR6iNVQu93KbikJTWTrDLd3VYPl7qajubx/4h5+Pcdps5f/QK4vY+Q2fHApOlJp8yd
	ZH2sagPC70B7zTdRv4baW+dMNv8uzsb2piuFiJYixB+4ggX0FptkamN8l7Kxbtbu0ATcBU
	2wyPYjgX+vY/0WuzycgrbKVtSVVemLl7S5pHxAc1waaLZ/oevWnV80Nm6ootXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Lk2B9AG5ds+pqeUjhbWMxre+nOyqBryQEJZgQ0YASpw=;
	b=QsV6QNO+I6t14ICMaxchY0CluP9Bs792a72vjOaC9DYiP1sFzVjPhe/fcHX7XJxk8hJK5d
	tYNdMKII5eQwZ6tQElpmS8gPsaK+hktsPHsW4jzMViU7JLYwUqilF50QjGDfHo8ytDsuH1
	F+1Yz3eE2Az1Fuph4VK9807y68h8X50VvUIogvy9/TFZJlIqh9KTHIu10RmShvp1OPH6GE
	MUjM08qqhWEJowqL7C3Cz6aCUcq6qGzT7bCCkSG7zJ+/XyRb/k5QlIkzGu+1d4/27ESO/h
	SQYwaouP7QUcSdUZUeTn1B9zQiaV0k6f7maY9+fCoq7k9v5gm0oCjVyZALAPlA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793357640; a=rsa-sha256;
	cv=none;
	b=JMHB0rUnQCvmpYKZBryLzcAIUuY7too4+dGyp196HBL6XItt4uC0JO5TqzTxHqpTbXLNgo
	69ywUiG9GV9h6nTL/rmXkigtc5zn3JBxYstb/WOYuVekBUvkzGLFuR1+tZHUUiRWcbQXGs
	yfc1bry7d/7xCIRMqeFWUM2jVK/m6PGB/hhjdVr48lqBX87bNPadJ4tkxk5oQKso48cOBF
	57ql8lMQJLdM6gqan8Vm+DyLzv5xNz8nYWPJLiGFtDAfq25ij/p1AIYxsIeAqI2QcrtUXZ
	8zKhPrfoD5RLFpRPqvCHTwTiH8H5Qch4fYztlHE2YPI1k5qa5aM89ngLV0ywRA==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 11:54:01 +0100
Subject: [PATCH 03/10] boot: revert globalvar changes after each boot entry
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-boot-globalvar-stack-v1-3-a03803e1100c@pengutronix.de>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793357640; l=9116;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=mnOOAToG4oaCc/i5cpEIO2nlb0SvtQaEIV4luzBp+Is=;
 b=NfzzUhl1WbRVvLn+osXpasCxe9/mILmkHgkvn4Q2sJLH2jggu9/GnKtPFa2yz7A/gH1Xjx7mI
 QQqLh0FApFeCBhY11GGdSJ0NF9Ev06Z6/DT5dhcNSajcbzdCJrkhNTl
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_035403_821200_620C788E 
X-CRM114-Status: GOOD (  24.60  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Boot entries, especially boot scripts, configure the boot
   by setting global.bootm.* and global.linux.bootargs.* variables. To keep these
    from leaking into the boot entries tried afterwards, there are [...] 
 
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
X-Stat-Signature: rrpgb57db993e8c3ardp7egqh7d7jwgm
X-Rspamd-Queue-Id: 10102202961

Boot entries, especially boot scripts, configure the boot by setting
global.bootm.* and global.linux.bootargs.* variables. To keep these from
leaking into the boot entries tried afterwards, there are currently two
mechanisms:

 - bootscript_boot() saves the global.bootm.* variables that are part of
   struct bootm_data and restores them afterwards. Variables not part of
   this struct, like global.bootm.tee, are not restored, and empty load
   addresses come back as the hex values of UIMAGE_SOME_ADDRESS resp.
   UIMAGE_INVALID_ADDRESS.
 - Kernel command line options have to be put into
   global.linux.bootargs.dyn.*, which boot_entry() clears after each boot
   entry. Options set by a boot entry in any other variable stay.

Replace both with a globalvar scope around the boot entry in
boot_entry(). This reverts all changes to the globalvars covered by
boot_globalvar_scope_push(), whatever the variable, and also restores
values that were set before the boot entry instead of clearing them.
This includes global.boot.watchdog_timeout, which boot_entry() reads
before running the boot entry, so a value set by a boot entry so far only
took effect for the following ones.

global.linux.bootargs.dyn.* still works as before for boot entries, but
values set in this namespace before calling boot are now kept instead of
being cleared once the first boot entry returns.

bootm_data_restore_defaults() has no users anymore, so remove it.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 20 ++++++++++++++------
 Documentation/user/devboot.rst       |  4 ++--
 common/boot.c                        | 35 ++++++++---------------------------
 common/bootm.c                       | 21 ---------------------
 include/bootm.h                      |  1 -
 5 files changed, 24 insertions(+), 57 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index afc705ac86..0fbdc52c68 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -164,16 +164,24 @@ A simple boot entry in ``/env/boot/mmc`` could look like this:
   global.bootm.image=/mnt/mmc1/zImage
   global.bootm.oftree=/env/oftree
 
-  global linux.bootargs.dyn.root="root=PARTUUID=deadbeef:01"
+  global linux.bootargs.root="root=PARTUUID=deadbeef:01"
 
 This takes the kernel from ``/mnt/mmc1/zImage`` (which could be an
 :ref:`automount` path registered earlier). The devicetree will be used from
 ``/env/oftree``. The Kernel gets the command line
-``root=PARTUUID=deadbeef:01``. Note the ``.dyn`` in the bootargs variable name.
-boot entries should always add Kernel command line parameters to variables with
-``.dyn`` in it. These will be cleared before booting different boot entries.
-This is done so that following boot entries do not leak command line
-parameters from the previous boot entries.
+``root=PARTUUID=deadbeef:01``.
+
+All changes a boot entry makes to ``global.bootm.*``, ``global.linux.*``,
+``global.of.*`` and
+:ref:`global.boot.watchdog_timeout <magicvar_global_boot_watchdog_timeout>`
+are reverted when the boot entry returns:
+modified variables get their previous value back, variables created by
+the boot entry are removed and variables it removed are created again.
+This way a boot entry that fails to boot doesn't leak its settings into
+the following boot entries. Older boot entries put their Kernel command
+line parameters into ``global.linux.bootargs.dyn.*`` for this reason,
+which still works, but is no longer necessary. Settings meant for all
+boot entries belong into an init script or an nv variable instead.
 
 This entry can be booted with ``boot mmc``. It can also be made the default by
 setting the :ref:`global.boot.default <magicvar_global_boot_default>` variable
diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.rst
index e319636994..62cc357c3a 100644
--- a/Documentation/user/devboot.rst
+++ b/Documentation/user/devboot.rst
@@ -191,8 +191,8 @@ when ``CONFIG_BOOTM_OFTREE_FALLBACK`` is enabled), and appends the
 contains.
 
 Kernel command line fragments set by the script should use the
-``global.linux.bootargs.devboot.`` namespace. Unlike
-``global.linux.bootargs.dyn.``, which is cleared whenever a boot entry
+``global.linux.bootargs.devboot.`` namespace. Unlike variables set
+by the boot entries themselves, which are reverted whenever a boot entry
 returns, it survives falling through to the next boot target, e.g. for
 ``devboot system0 system1``. The ``devboot`` command removes the
 namespace after the boot command returns, so a subsequent plain
diff --git a/common/boot.c b/common/boot.c
index 1d8768b864..eaeff7796e 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -97,7 +97,7 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 	int bootm_nattempts;
 	int ret;
 
-	struct bootm_data backup = {}, data = {};
+	struct bootm_data data = {};
 
 	if (dryrun == 1) {
 		printf("Would run %s%s%s\n", bs->entry.path,
@@ -105,18 +105,6 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 		return 0;
 	}
 
-	bootm_data_init_defaults(&backup);
-
-	/*
-	 * The strings point to the globalvars' current values, which the
-	 * script frees when it assigns new ones. Keep our own copies.
-	 */
-	backup.os_file = xstrdup(backup.os_file);
-	backup.initrd_file = xstrdup(backup.initrd_file);
-	backup.oftree_file = xstrdup(backup.oftree_file);
-	backup.root_dev = xstrdup(backup.root_dev);
-	backup.root_param = xstrdup(backup.root_param);
-
 	globalvar_add_simple("linux.bootargs.dyn.ip", NULL);
 	globalvar_add_simple("linux.bootargs.dyn.root", NULL);
 
@@ -129,12 +117,12 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 	ret = execute_binfmt(bs->args ? 2 : 1, argv);
 	if (ret) {
 		pr_err("Running script '%s' failed: %s\n", bs->entry.path, strerror(-ret));
-		goto out;
+		return ret;
 	}
 
 	/* No point in repeating bootm if script already called it */
 	if (bootm_nattempts != bootm_command_attempts())
-		goto out;
+		return 0;
 
 	bootm_data_init_defaults(&data);
 
@@ -143,17 +131,7 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 	if (dryrun >= 2)
 		data.dryrun = dryrun - 1;
 
-	ret = bootm_entry(entry, &data);
-out:
-	bootm_data_restore_defaults(&backup);
-
-	free_const(backup.os_file);
-	free_const(backup.initrd_file);
-	free_const(backup.oftree_file);
-	free_const(backup.root_dev);
-	free_const(backup.root_param);
-
-	return ret;
+	return bootm_entry(entry, &data);
 }
 
 static unsigned int boot_watchdog_timeout;
@@ -210,6 +188,7 @@ BAREBOX_MAGICVAR(global.user,
 
 int boot_entry(struct bootentry *be, int verbose, int dryrun)
 {
+	struct globalvar_scope *scope;
 	int ret;
 
 	pr_info("Booting entry '%s'\n", be->title);
@@ -224,11 +203,13 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 		}
 	}
 
+	scope = boot_globalvar_scope_push();
+
 	ret = be->boot(be, verbose, dryrun);
 	if (ret && ret != -ENOMEDIUM)
 		pr_err("Booting entry '%s' failed: %pe\n", be->title, ERR_PTR(ret));
 
-	globalvar_set_match("linux.bootargs.dyn.", "");
+	globalvar_scope_pop(scope);
 
 	return ret;
 }
diff --git a/common/bootm.c b/common/bootm.c
index 22f2ca4081..2ad8c34bb4 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -101,27 +101,6 @@ void bootm_data_init_defaults(struct bootm_data *data)
 	data->efi_boot = bootm_efi_mode;
 }
 
-void bootm_data_restore_defaults(const struct bootm_data *data)
-{
-	globalvar_set("bootm.oftree", data->oftree_file);
-	globalvar_set("bootm.image", data->os_file);
-	pr_setenv("global.bootm.image.loadaddr", "0x%lx", data->os_address);
-	if (IS_ENABLED(CONFIG_BOOTM_INITRD)) {
-		pr_setenv("global.bootm.initrd.loadaddr", "0x%lx", data->initrd_address);
-		globalvar_set("bootm.initrd", data->initrd_file);
-	}
-	globalvar_set("bootm.root_dev", data->root_dev);
-	globalvar_set("bootm.root_param", data->root_param);
-	bootm_set_verify_mode(data->verify);
-	bootm_appendroot = data->appendroot;
-	bootm_provide_machine_id = data->provide_machine_id;
-	bootm_provide_hostname = data->provide_hostname;
-	bootm_provide_policy = data->provide_policy;
-	bootm_verbosity = data->verbose;
-	bootm_dryrun = data->dryrun;
-	bootm_efi_mode = data->efi_boot;
-}
-
 static enum bootm_verify bootm_verify_mode = BOOTM_VERIFY_AVAILABLE;
 
 enum bootm_verify bootm_get_verify_mode(void)
diff --git a/include/bootm.h b/include/bootm.h
index bbdbb8e69d..06eb90c5ed 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -196,7 +196,6 @@ static inline int bootm_verbose(struct image_data *data)
 #endif
 
 void bootm_data_init_defaults(struct bootm_data *data);
-void bootm_data_restore_defaults(const struct bootm_data *data);
 
 const struct resource *
 bootm_load_os(struct image_data *data,

-- 
2.47.3



