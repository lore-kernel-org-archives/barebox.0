Delivery-date: Thu, 10 Sep 2026 11:55:14 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x4bUw-000WpM-1Y
	for lore@lore.pengutronix.de;
	Thu, 10 Sep 2026 11:55:14 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rNgzgqil;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6F17C200F4A
	for <lore@pengutronix.de>; Thu, 10 Sep 2026 11:55:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GuUOu+nhTJ5LfKLST5C+ba5J5kIUc9xQmyagO1lD014=; b=rNgzgqilGrp+olqWrXQgR4N/7c
	mvhLqpaD6CJIDd43yK95DBbtnw6JS3UIbbJIUIQ6EHFKQ3JnLw9nxgbQlJKGCBcCyNBFS61wFnWHJ
	4qZ+xOeiW23mRk+JKmjdEuP3gn/LR90i2vuip0fbfBCnF3hpqiUex75VozVB2x1Leb67b6vX0EMh/
	yPsA7KGH66lSbo8O19QYLX1umeVfsNxuX1qpiTm+WM3Gft8e/6xngPinWXYqhnPF0oqZf1XkbnKT3
	kBK857upwos3Fkd64gkUXjS6hXT+GPtPW6Dzcrr8H6a5TUwi+Ztxf/N5d58QZP6zM1WWwGKUddZv0
	JnR303/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4bTT-0000000Dwm1-27a3;
	Thu, 10 Sep 2026 09:53:43 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4bTQ-0000000DwlN-45iE
	for barebox@lists.infradead.org;
	Thu, 10 Sep 2026 09:53:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2F7EA2018C1;
	Thu, 10 Sep 2026 11:53:38 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x4bTO-000Eks-0M;
	Thu, 10 Sep 2026 11:53:38 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x4bTO-00000000Ka8-2FhS;
	Thu, 10 Sep 2026 11:53:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] commands: bootm: remove -c and -s options
Date: Thu, 10 Sep 2026 11:53:34 +0200
Message-ID: <20260910095337.78745-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_025341_165632_7438986C 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  We have inconsistencies about what verification level is used
    for FIT images when they are used for both booting and for overlays if bootm
    -c/-s is used to raise the verification level. Properly fixing them would
    increase the complexity, which could in turn negatively impact security. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Stat-Signature: et37r9epwydmcsm3mw8mo1oas519ftqw
X-Rspamd-Queue-Id: 6F17C200F4A
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

We have inconsistencies about what verification level is used for FIT
images when they are used for both booting and for overlays if
bootm -c/-s is used to raise the verification level.

Properly fixing them would increase the complexity, which could
in turn negatively impact security.

I expect that any users are equally well served with
global.bootm.verity, so drop the extra toggle.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../migration-guides/migration-master.rst     | 21 +++++++++++++++++++
 commands/bootm.c                              | 11 +---------
 2 files changed, 22 insertions(+), 10 deletions(-)

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
index d5601ac838c5..b40ea66827cb 100644
--- a/Documentation/migration-guides/migration-master.rst
+++ b/Documentation/migration-guides/migration-master.rst
@@ -12,3 +12,24 @@ OP-TEE loading is now only supported
 
 For i.MX6 boards, this can be enabled by enabling
 ``CONFIG_FIRMWARE_IMX6_OPTEE``.
+
+Removal of bootm -c/-s options
+------------------------------
+
+The :ref:`command_bootm` options ``-c`` and ``-s`` used to selectively
+enable checksum/hash and signature verification, respectively.
+
+They have been removed in favor of the global toggle
+:ref:`global.bootm.verify <magicvar_global_bootm_verify>`.
+This can be restricted at build-time via setting ``CONFIG_BOOTM_FORCE_SIGNED_IMAGES``
+or loosened :ref:`at runtime <use_security-policies>`
+via setting ``SCONFIG_BOOT_UNSIGNED_IMAGES``.
+
+The removal is motivated by making it easier to reason about what the active
+verification level is, especially as there are now other uses for verified
+images like when :ref:`global.of.overlay.path <magicvar_global_of_overlay_path>`
+points at a FIT.
+
+Existing users, if any, will fail-secure: The command will now exit with a failure::
+
+  bootm: invalid option -- s
diff --git a/commands/bootm.c b/commands/bootm.c
index 9ff4b218fd1f..e71c30460fb7 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -28,7 +28,7 @@
 #include <magicvar.h>
 #include <asm-generic/memory_layout.h>
 
-#define BOOTM_OPTS_COMMON "sca:e:vo:fd"
+#define BOOTM_OPTS_COMMON "a:e:vo:fd"
 
 #ifdef CONFIG_BOOTM_INITRD
 #define BOOTM_OPTS BOOTM_OPTS_COMMON "L:r:"
@@ -55,13 +55,6 @@ static int do_bootm(int argc, char *argv[])
 
 	while ((opt = getopt(argc, argv, BOOTM_OPTS)) > 0) {
 		switch(opt) {
-		case 'c':
-			if (data.verify < BOOTM_VERIFY_HASH)
-				data.verify = BOOTM_VERIFY_HASH;
-			break;
-		case 's':
-			data.verify = BOOTM_VERIFY_SIGNATURE;
-			break;
 #ifdef CONFIG_BOOTM_INITRD
 		case 'L':
 			data.initrd_address = simple_strtoul(optarg, NULL, 0);
@@ -113,8 +106,6 @@ static int do_bootm(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(bootm)
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-c\t",  "hash check image integrity")
-BAREBOX_CMD_HELP_OPT ("-s\t",  "check signature of image")
 BAREBOX_CMD_HELP_OPT ("-d\t",  "dry run: check data, but do not run")
 BAREBOX_CMD_HELP_OPT ("-f\t",  "load images even if type is undetectable")
 #ifdef CONFIG_BOOTM_INITRD
-- 
2.47.3



