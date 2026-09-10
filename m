Delivery-date: Thu, 10 Sep 2026 12:23:03 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x4bvr-000XP4-1H
	for lore@lore.pengutronix.de;
	Thu, 10 Sep 2026 12:23:03 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0oI9KiC9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CAC942021B3
	for <lore@pengutronix.de>; Thu, 10 Sep 2026 12:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wO1yrSx0ElqeRgnT5D5BaQeA/Y8/memyNYF4ciA9tGM=; b=0oI9KiC9NnLfpGgij/1wwJgdrT
	oTjrv+iTFsUCNnUD9NpHOQDX30MjL09Sws2aqWuU3YSdHzHVbspjFgTaNsSgJhjNh9E+ebIGEs1lm
	0p3vdouo06LWcQxtFhrlCWVR8NZdDbbD2q82nzvbm20KFpxHgSWNA24lpfoHZajOB7NoUFJf+rWMF
	LgDPfqUuj4l5W8UEZXBQwsrABgxJQuTxNpuOIY6zPCM8dSjPK1yRN32h0fZ2EKJywkMuVUDoXPGFT
	Xyynzc8IsePY4C5BynAenAE/hRjDezDonLof+RkvJbbiCFq4uyDZ1mHcSBo0nBPqVmPkkQup8ffaw
	RvB/URFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4bud-0000000E2NI-19wB;
	Thu, 10 Sep 2026 10:21:47 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4buZ-0000000E2Ma-4BsZ
	for barebox@lists.infradead.org;
	Thu, 10 Sep 2026 10:21:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4ACF02021B3;
	Thu, 10 Sep 2026 12:21:42 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x4buY-000F3m-0i;
	Thu, 10 Sep 2026 12:21:42 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x4buY-00000000iIy-2hBU;
	Thu, 10 Sep 2026 12:21:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: uol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2] commands: bootm: remove -c and -s options
Date: Thu, 10 Sep 2026 12:21:06 +0200
Message-ID: <20260910102141.170024-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_032144_190689_3BF29B32 
X-CRM114-Status: GOOD (  12.53  )
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
X-Stat-Signature: oi3spisfnminhqdmiatkf8sy11zpis8k
X-Rspamd-Queue-Id: CAC942021B3
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

We have inconsistencies about what verification level is used for FIT
images when they are used for both booting and for overlays if
bootm -c/-s is used to raise the verification level.

Properly fixing them would increase the complexity, which could
in turn negatively impact security.

I expect that any users are equally well served with
global.bootm.verify, so drop the extra toggle.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - drop -c from BAREBOX_CMD_OPTS
  - fix s/verity/verify/ in commit message (Ulrich)
---
 .../migration-guides/migration-master.rst     | 21 +++++++++++++++++++
 commands/bootm.c                              | 13 ++----------
 2 files changed, 23 insertions(+), 11 deletions(-)

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
index 9ff4b218fd1f..44abb953f661 100644
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
@@ -134,7 +125,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(bootm)
 	.cmd		= do_bootm,
 	BAREBOX_CMD_DESC("boot an application image")
-	BAREBOX_CMD_OPTS("[-cdf"
+	BAREBOX_CMD_OPTS("[-df"
 #ifdef CONFIG_BOOTM_INITRD
 					  "rL"
 #endif
-- 
2.47.3



