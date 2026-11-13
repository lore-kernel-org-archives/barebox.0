Delivery-date: Fri, 13 Nov 2026 08:29:29 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRliz-00AL75-0e
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 08:29:29 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0C118201544
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 08:29:29 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YL8TBjgi;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ETTT7yrK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554969;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=43QFK7ovO7UxFy7PppEHGAZLGdzFtOWw89HKPvf9y+Y=;
	b=WbFHu3WPfw4wlXUKnD1DP2LkqFogiSdqPBnu+WwCM6nXg02yC2AGWLhIwZGmL3ZBrnx3ch
	AwXg/Fu6GmFfaDcoxRYp4Wk6U4qaevrgid38fn0YDWfRdk6+gZkjjnMTQDb59GI52pNbX5
	TDTKxzJiGwJH8cnL4taAX4S039VlllrseJewMGaUEALVMmcgK/y1lYHPRVsIygyI0AhnV+
	qDzfP/3KXeNcFk4P4sRBG57IzegRpS27xmcG/vanmJmLav/KAOvY5vZMKxLzo4Fr8PR0yA
	Zir1SPOv/u6AADCik2+1e9MYuU4NAqaqZcc52kTFsdWCeJ0HB2zHZOJkbXYBBQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794554969; a=rsa-sha256;
	cv=pass;
	b=OQM1Y5XD3mAwgkbMLrPDlLaQud08AmGsPH1CjFIQLIJGN6AC0d6NGIlYr7PE/YVqpyK6k/
	FpJr7J79pARQp4m0JbfIrPxw1LUggW3sOS7/7Mdg162ZjvNqVIJJ6IiC50Q9VHkhq0HZTL
	IgvComyNrfoRkHj5yvJ2LuAgOt/lKYKygFNUoWF5GHI/OT5o8aGj5+A2GpldC5XeHzxGLP
	Qv4Y/HW6kHLr1GYpUSlPId77FlScs2JNDky1oXj9j4IikEWhN5nP7gdSF5XKRSmzqZBWwX
	IanGelnXo1AjHFA3WrK/IzlX4diqfmuRYXjvscVRPnfjEZvKUkVxD1Qa6SoKGQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YL8TBjgi;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ETTT7yrK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=43QFK7ovO7UxFy7PppEHGAZLGdzFtOWw89HKPvf9y+Y=; b=YL8TBjgimQE1d4
	AinrD/z1Rav+nBsZUSQlExHlf9M07fnNHSOxQGW6Fyk+T+Hyok2pE7watPfMo/79FW37fPLUuyjbI
	I89OFKqKgr3SvIZwDEGd9xxzCBqFys5zH9qAJU6g6jVWVKZ9FZScV5yFCAu+MYDUj/x1ZyaTEnmYs
	L8g/JVMHIf94cRBsXyCphY/jcEPe7swFop1DQcV2/YIPTAf9Y53atJZSxujgrqokGVbNlqYl376o3
	KlOV93XINfSFOg5VZ/k0jJOfJ8KaeZYxaGsDa7ji4rDUYD+bv4C3IIdkP6eoGNd9Gq+yHVFnDGjss
	DQY9hSgSeTxtQIIjoJaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlaZ-0000000Bt2A-29oK;
	Fri, 13 Nov 2026 07:20:47 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlaV-0000000BszS-36iB
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 07:20:45 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A365A2023BD;
	Fri, 13 Nov 2026 08:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=43QFK7ovO7UxFy7PppEHGAZLGdzFtOWw89HKPvf9y+Y=;
	b=ETTT7yrKIxHiF6LgfV1WpilofsQMwAbxYrWY+4H8gmgsS0eOWnhIRtwM5RxLEr5/BnTZ5/
	a9aAG9blYWNtfZy0hr6P10j5sx56dGj731HQEBPmJovubKcY5PNeJqySYB/dPu1t9B1gyi
	+S/ARMCN/zu4KhLCtz0LMSZB83tgrMp05kvhy0IWoM8JF5b3nILj7EuOADq53xCf6B9c+X
	d3kKOwtuxLpaq6PvNS46H2ckGfT1UCnqLPVvTvFvEWcSJIOociZk/5/KfGo5UmGcmfmq0J
	dfKxMINcqsdxrvPWEqzcgIzepCnopmKu4FQhw7FU8rKFQlgFHTPVhhqc88t1Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=43QFK7ovO7UxFy7PppEHGAZLGdzFtOWw89HKPvf9y+Y=;
	b=aYom6E6P4QV7vRu89A86LF9dA6tnPGqgzk/2uTqpvye8w6E3huVp3TyHu/tqmccF8MR7Ic
	aBhsN8nDM+hu7ZuziiIBMpLFWvHOQygtR+l3ak9wg07tUvtaW+nImdoGKbMnkCaRrC3M9w
	pRLo82HnNOdWzV4QAVvy3EuEK+lc55EtQq2v0Odu1Cp3nxAj9gKbis/exKTJ1wYfIuOxj9
	53UqgVo/Us2p4e+00TglV087nC+0tAmgvq+Zlt4XWDR8m/GUzb4ReyWoCN8/JPGZNSK7S2
	RHr9Hz6JXFDk6xO5dHi7MYPm86YbxsCmI0dGlk0K5ifQMebz4a0jD9sqdl6PZQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794554441; a=rsa-sha256;
	cv=none;
	b=YhVATvssSDp7K/Nbv31/wLiYEbQ1je0pwRXWDatrXW6iqeuLJryDYEGKJvzYY9fGrb2Et5
	EC/Yh34jDZIt58Qd2HvrEr5Umo6I6UdTYVyGTEYHGZGJtkme4wm2HDnTTC+KGaSqC6CbDE
	K2nGC3MWagD2K6IdCvFWVow1H/IED3IH626kEfm9hgT5u19x2K1MKk1MLoctbSDWTmeIJw
	rsyaJXVPxBj0N9JWogABvfPLv3fN9YDjwQ1Tgd+WqMYcLjcQE8mgYG36lOxoK8jOuLMKbU
	YQJLBhUWREOcXG7N5jHNSghgF8YrfWnOb8lDAksx+mAu2TNSj+D50x7gXHGcwg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2026 08:20:38 +0100
Subject: [PATCH v2 3/9] boot: revert globalvar changes after each boot
 entry
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261113-boot-globalvar-stack-v2-3-14c0f0a0986e@pengutronix.de>
References: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
In-Reply-To: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794554441; l=9137;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=gUdyNisciE0H/n01uLnDqTbi3kKG0mUAK+dlt+d/H6U=;
 b=ZcsXdXgejfOTI5sot06gJ0Sc5fHmrqdZmCfpYTtM0+4cWQnXbgUTaSCjxVognhbOk+K8r2odz
 mPdeCfhhaNiDJl332nR/8+TJNyATyV22v+5V0Dtt52srG1uRtcVpzAB
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_232044_063886_0E182A44 
X-CRM114-Status: GOOD (  24.61  )
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
	BAYES_HAM(-3.00)[100.00%];
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
X-Rspamd-Queue-Id: 0C118201544
X-Stat-Signature: d4w13shnjtbcwoztqb5xkrkmauetgosq
X-Rspamd-Action: no action

Boot entries, especially boot scripts, configure the boot by setting
global.bootm.* and global.linux.bootargs.* variables. To keep these from
leaking into the boot entries tried afterwards, there are currently two
mechanisms:

 - bootscript_boot() saves the global.bootm.* variables that are part of
   struct bootm_data and restores them afterwards. Variables not part of
   this struct, like global.bootm.earlycon, are not restored, and empty
   load addresses come back as the hex values of UIMAGE_SOME_ADDRESS
   resp. UIMAGE_INVALID_ADDRESS.
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

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
index 78ee61d790..227048be97 100644
--- a/Documentation/user/devboot.rst
+++ b/Documentation/user/devboot.rst
@@ -193,8 +193,8 @@ when ``CONFIG_BOOTM_OFTREE_FALLBACK`` is enabled), and appends the
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
index 0798324b14..4e0b688910 100644
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



