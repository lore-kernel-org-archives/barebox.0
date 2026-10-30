Delivery-date: Fri, 30 Oct 2026 08:17:45 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMgrw-0053hK-2B
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 08:17:45 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6689020296A
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 08:17:44 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=no9y9ewR;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=RIidIDAJ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793344664;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=OOTFwsGhAOHO9H+hKPfCvexxzdkzl0B2bajAng2zwbU=;
	b=C8yKsnLMSD37DHix1aQTWj9dzl0SRyNcjkYG0um7YmIc8yuoFOdsunOlJTK0jXXv8RjrtC
	U7bsg8xgto40K0A0qiZzBjElrDEDZlYdQ9c+pPYKDmrCBjthJOskAZ63W626LxoH1JNtqr
	91lN8BpgXLRxANIdrZ+ztOcftxf+dZR7/IqA6LjZ8thjrghLS3opALo+YhDfbNDBYZB2zb
	0nGrRvP4ywdLk/7eCXPlbjV/rZmaxEkB/oacX2j17XaYBw9XONCjmQV6/x1uFmD1V6jXv8
	EFU6ovIPvbbitiRBsMroA3FPSfCSRdcowwX1Zkx3WCwA209782/mmDNLdIZcOA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=no9y9ewR;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=RIidIDAJ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793344664; a=rsa-sha256;
	cv=fail;
	b=LVr6xyAtvrIqnO2NcohDbL5w7EXqUuigGJfbbKw4FgIIy4WAot6iOOWPmpHaXtEfgRuWqj
	0Irb5SSqTnRQUsH2Dq269UXN75h/cXBbTWkyuMbUp7rL148vkvlyFzXS2f5jjAO1uqEWtH
	dGkV4TST6njMWXOlZ9dL9jS/Ob3m+c704JZ4D3CBBmwjUCDvnKHf9AvWLQlbAa9M0uJACV
	EJR1oTUvl1KylJCZmSMAiUMEGrf/Ai4KDfIGAXJX61rN/K6xSTgdhJ9GLBDYZXBph+DdJb
	jF41HPOVTb+D0OAJ6xVWPPJ04bqalT98jGUOXnnmN2knIqEOy13lbCJqE8iLlQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=OOTFwsGhAOHO9H+hKPfCvexxzdkzl0B2bajAng2zwbU=; b=no9y9ewRpfzHiv
	JuN+c+EwYNIcEHVRRvAN+05zfHyX5sAqoNcOmBSbzwi6p5gXgEKG0euQxQJs74MFkTWdZuQj7fECu
	GCDVqEqqz/f5EO5oFOx8VqhpdFusxQoiQAdYvzfTk9j8++UaEWM7o0yUA6H8aSiax72MROuYTrZTc
	HHEx9PbJIWS5QweCkcF87PuS7bjWdLoKVGNwFBuHn2R/BVZuKv85W5+Un6PSWQjBSIk+BHnn6nZ+Q
	NR/kMItUERFTnUJejTGc/38etjQEf7vEkjuYeeOazaQ9et7SIgmaG5UrueowFojno5wp/3H45Qu/E
	mgU9qypLYFQUqx66r19A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMgqo-0000000Az0k-1wUJ;
	Fri, 30 Oct 2026 07:16:34 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMgqi-0000000AyzB-2rgI
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 07:16:31 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 48BCC202961;
	Fri, 30 Oct 2026 08:16:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793344584;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OOTFwsGhAOHO9H+hKPfCvexxzdkzl0B2bajAng2zwbU=;
	b=RIidIDAJhZ8vncerORgwMisIXSE/papq4Q9jAGnsA/eQ1LlV/kVYgOYBcGxDDRMV/yGPQw
	iEqXPodGsUE9iOa3JswkoYxi6wcSS4ZqTcpWEdV3Te28Myhcnmqgi96I8AGC88v1BOPlsd
	aXVUNyZtypZmSfBgMxPoWsept7yzvHFv1uW20M09g70sQubNfQ96OfUXpxRkRWP53QlMuT
	p/Ik5l9UJu1PFet5Kh4lU2MFD4B0WSewpv62Je3mTRg76vAcvQwVbNjS1IDavYWXY9FGJw
	Fd/u9m47vI82Xz5L49oR8UGsa4Mvtth4rJgVQTzzlf3Mi7SlR+NFpfYjEzQR0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793344584;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OOTFwsGhAOHO9H+hKPfCvexxzdkzl0B2bajAng2zwbU=;
	b=ffMo4ZL2FcEWu78DYqLTEWHeZfVx9CiPfs74i1EmeFGsQffmZbNmQEASyfRZoHPwjChqN8
	1HmYQrZg7u2xQ1c5vF0sHv2EnzRiWUjft8+2YI/u1TvpZdgNsqlAsGZa74FBKwe5/KRcQv
	nFnn9/n9pmjHrKhqCA4yigfoyuTRv0gzWeNeBuKrDYaOycOQz+2GcSC3BX2xJAnVoQ7eTH
	xr4C3yM2T3A+Dsbtp+oXZblxH8JI1NNB7mTbnA0tgM8ZSOR2U76vn78MRx1RF+q8ERxooT
	Fu4PDO7epdvPQalwYxPta4CRNbgOuT3RLNklfErJZ/LSx35MnuZtRROy8fmBdw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793344584; a=rsa-sha256;
	cv=none;
	b=cvgAKUKOksVb5Zw3JAwShQVDKZCI4AyL1SQqaMvLMX7a/dFFV2UQrAMLCM2YGCWxatXD4V
	qS1ByOP0e8rJilC2LryWP7/d71lhec2CMfaes2QQBxlH1wimv9pqVxX1RQ6T7hUMNh38cm
	/psHlaAdv/vXNq2Q/0eFpKhOHmh0f8j+/eJsm3ztfjoWI7PkqNvaWns4qzmIoSToP8+XYZ
	ae2mfo/pEIisXQQiXDLRxnEEmL+Y/gm9ivhDaTONgEdNbm0hQPMkOGEkkCab6rIgzxNGmB
	A17ct9mvom/lI9wckePBhnStTSFDRHtkB2oS3cIiduXnCtaiJOdJZBt0fsKabA==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 08:16:22 +0100
Subject: [PATCH 2/2] treewise: use file_exists()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-file-exists-v1-2-34035d7392e5@pengutronix.de>
References: <20261030-file-exists-v1-0-34035d7392e5@pengutronix.de>
In-Reply-To: <20261030-file-exists-v1-0-34035d7392e5@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793344584; l=16750;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=b0GFjPZe7usTeRhb5Zl2k3lNvt7I5dyKTXtG1pFiGBo=;
 b=cMzxtO8ad/0mWZNWVkwMOvYrwouEf0+sI6O0azuraTgGKkk31+fEQqDXsqaNjQ8WsI49DUNBb
 h/rlgVWyB98DK+iJQR7VPuIJURHzEkgrdbLs7Li3mCMCyKgBZYrmKuS
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_001629_290464_A2173F23 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Use file_exists() and file_exists_type() instead of calling
    stat() just to check whether a file exists or is of a given type. Assisted-by:
    Claude:claude-opus-5-5 Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
    --- arch/arm/boards/raspberry-pi/rpi-common.c | 7 ++----- arch/arm/mach-k3/r5.c
    | 4 +--- commands/bfetch.c | 6 [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
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
X-Stat-Signature: ko7nxqc64kj4iie6o9dtbsodrob4q4yc
X-Rspamd-Queue-Id: 6689020296A

Use file_exists() and file_exists_type() instead of calling stat() just
to check whether a file exists or is of a given type.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c |  7 ++-----
 arch/arm/mach-k3/r5.c                     |  4 +---
 commands/bfetch.c                         |  6 +++---
 commands/cp.c                             |  7 ++-----
 commands/edit.c                           |  3 +--
 commands/readlink.c                       |  4 ++--
 common/bbu.c                              |  3 +--
 common/blspec.c                           |  4 +---
 common/boot.c                             |  3 +--
 common/complete.c                         |  5 ++---
 common/environment.c                      |  5 +----
 common/file-list.c                        |  4 ++--
 common/menutree.c                         |  3 +--
 common/startup.c                          | 21 +++++++--------------
 drivers/usb/gadget/function/dfu.c         |  4 +---
 lib/glob.c                                |  5 ++---
 lib/libbb.c                               |  4 ++--
 lib/libfile.c                             |  5 +----
 net/ifup.c                                | 13 ++++---------
 19 files changed, 37 insertions(+), 73 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 9898e03111..442520993d 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -195,7 +195,6 @@ mem_initcall(rpi_mem_init);
 
 static int rpi_env_init(void)
 {
-	struct stat s;
 	const char *diskdev;
 	int ret;
 
@@ -205,13 +204,11 @@ static int rpi_env_init(void)
 	device_detect_by_name("mci1");
 
 	diskdev = "/dev/disk0.0";
-	ret = stat(diskdev, &s);
-	if (ret) {
+	if (!file_exists(diskdev)) {
 		device_detect_by_name("mmc0");
 		diskdev = "/dev/mmc0.0";
-		ret = stat(diskdev, &s);
 	}
-	if (ret) {
+	if (!file_exists(diskdev)) {
 		printf("no /dev/disk0.0 or /dev/mmc0.0. using default env\n");
 		return 0;
 	}
diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
index 65f7f152d0..8816cbb409 100644
--- a/arch/arm/mach-k3/r5.c
+++ b/arch/arm/mach-k3/r5.c
@@ -364,7 +364,6 @@ static int do_dfu(void)
 {
 	struct usbgadget_funcs funcs = {};
 	int ret;
-	struct stat s;
 
 	funcs.flags |= USBGADGET_DFU;
 	funcs.dfu_opts = "/fip.img(fip)cs";
@@ -376,8 +375,7 @@ static int do_dfu(void)
 	}
 
 	while (1) {
-		ret = stat("/fip.img", &s);
-		if (!ret) {
+		if (file_exists("/fip.img")) {
 			printf("Downloaded FIP image, DFU done\n");
 			ret = load_fip("/fip.img", 0);
 			if (!ret)
diff --git a/commands/bfetch.c b/commands/bfetch.c
index 3083ae9933..5e5a6fe94e 100644
--- a/commands/bfetch.c
+++ b/commands/bfetch.c
@@ -14,6 +14,7 @@
 #include <firmware.h>
 #include <getopt.h>
 #include <globalvar.h>
+#include <libfile.h>
 #include <machine_id.h>
 #include <memory.h>
 #include <net.h>
@@ -357,7 +358,6 @@ static void print_framebuffers(unsigned *line)
 
 static void print_features(unsigned *line)
 {
-	struct stat st;
 	struct string_list sl;
 	bool features = false;
 	size_t tmp;
@@ -373,7 +373,7 @@ static void print_features(unsigned *line)
 	if (IS_ENABLED(CONFIG_FEATURE_CONTROLLER) &&
 	    !list_empty(&of_feature_controllers))
 		string_list_add(&sl, "FEATCTL");
-	if (!stat("/dev/fw_cfg", &st))
+	if (file_exists("/dev/fw_cfg"))
 		string_list_add(&sl, "FW_CFG");
 	if (firmwaremgr_find_by_node(NULL))
 		string_list_add(&sl, "FWMGR");
@@ -440,7 +440,7 @@ static void print_features(unsigned *line)
 	if (IS_ENABLED(CONFIG_ARM_MMU_PERMISSIONS))
 		string_list_add(&sl, "W^X");
 
-	if (IS_ENABLED(CONFIG_FS_UBOOTVARFS) && !stat("/dev/ubootvar", &st))
+	if (IS_ENABLED(CONFIG_FS_UBOOTVARFS) && file_exists("/dev/ubootvar"))
 		string_list_add(&sl, "UBOOTVARFS");
 
 	/* TODO: detect semihosting */
diff --git a/commands/cp.c b/commands/cp.c
index dc38cbab88..c30efca054 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -21,7 +21,6 @@
 static int do_cp(int argc, char *argv[])
 {
 	int ret = 1;
-	struct stat statbuf;
 	int last_is_dir = 0;
 	int i;
 	int opt;
@@ -47,10 +46,8 @@ static int do_cp(int argc, char *argv[])
 	if (argc < argc_min)
 		return COMMAND_ERROR_USAGE;
 
-	if (!stat(argv[argc - 1], &statbuf)) {
-		if (S_ISDIR(statbuf.st_mode))
-			last_is_dir = 1;
-	}
+	if (file_exists_type(argv[argc - 1], S_IFDIR))
+		last_is_dir = 1;
 
 	if (((recursive && argc - optind > 2) || (argc > argc_min)) && !last_is_dir) {
 		printf("cp: target `%s' is not a directory\n", argv[argc - 1]);
diff --git a/commands/edit.c b/commands/edit.c
index 4442543b9a..cf11aaa7fa 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -176,9 +176,8 @@ static int edit_read_file(const char *path)
 	struct line *lastline = NULL;
 	char *filebuffer;
 	char *linestr, *lineend;
-	struct stat s;
 
-	if (!stat(path, &s)) {
+	if (file_exists(path)) {
 		filebuffer = read_file(path, NULL);
 		if (!filebuffer) {
 			printf("could not read %s: %m\n", path);
diff --git a/commands/readlink.c b/commands/readlink.c
index 021fbaa3e0..35f2b7a593 100644
--- a/commands/readlink.c
+++ b/commands/readlink.c
@@ -10,6 +10,7 @@
 #include <fs.h>
 #include <malloc.h>
 #include <getopt.h>
+#include <libfile.h>
 
 enum can_mode { CAN_NONE, CAN_ALL_BUT_LAST, CAN_EXISTING };
 
@@ -25,7 +26,6 @@ static void output_result(const char *var, const char *val)
 static int canonicalize_filename_mode(const char *var, char *path, enum can_mode can_mode)
 {
 	char *buf = NULL, *file, *dir;
-	struct stat s;
 	int ret = -1;
 
 	buf = canonicalize_path(AT_FDCWD, path);
@@ -38,7 +38,7 @@ static int canonicalize_filename_mode(const char *var, char *path, enum can_mode
 		dir = dirname(path);
 
 		buf = canonicalize_path(AT_FDCWD, dir);
-		if (!buf || stat(dir, &s) || !S_ISDIR(s.st_mode))
+		if (!buf || !file_exists_type(dir, S_IFDIR))
 			goto err;
 
 		buf = xrasprintf(buf, "/%s", file);
diff --git a/common/bbu.c b/common/bbu.c
index 4b1cf2ee88..70d49e3563 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -44,13 +44,12 @@ void bbu_append_handlers_to_file_list(struct file_list *files)
 
 	list_for_each_entry(handler, &bbu_image_handlers, list) {
 		const char *devicefile;
-		struct stat s;
 
 		devicefile = handler->devicefile;
 
 		device_detect_by_name(devpath_to_name(devicefile));
 
-		if (stat(devicefile, &s) == 0) {
+		if (file_exists(devicefile)) {
 			append_bbu_entry(handler->name, devicefile, files);
 		} else {
 			pr_info("Skipping handler bbu-%s: %s unavailable\n",
diff --git a/common/blspec.c b/common/blspec.c
index 0552e93b79..130c806e48 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -561,10 +561,8 @@ static int blspec_scan_directory(struct bootscanner *bootscanner,
 
 	for (i = 0; i < globb.gl_pathc; i++) {
 		const char *configname = globb.gl_pathv[i];
-		struct stat s;
 
-		ret = stat(configname, &s);
-		if (ret || !S_ISREG(s.st_mode))
+		if (!file_exists_type(configname, S_IFREG))
 			continue;
 
 		ret = __blspec_scan_file(bootentries, root, configname);
diff --git a/common/boot.c b/common/boot.c
index 149bfeca00..5c74b1dd5d 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -348,7 +348,6 @@ static int bootscript_scan_name(struct bootentries *bootentries, const char *nam
 {
 	const char *args = NULL;
 	char *path, *at;
-	struct stat s;
 	int ret;
 
 	if (*name != '/')
@@ -357,7 +356,7 @@ static int bootscript_scan_name(struct bootentries *bootentries, const char *nam
 		path = xstrdup(name);
 
 	at = strchr(path, '@');
-	if (at && !stat(path, &s))
+	if (at && file_exists(path))
 		at = NULL;
 
 	if (at) {
diff --git a/common/complete.c b/common/complete.c
index a01ce9b471..b778d9cecd 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -14,6 +14,7 @@
 #include <libgen.h>
 #include <command.h>
 #include <environment.h>
+#include <libfile.h>
 
 #define DEVPARAM_COMPLETE_ASSIGNMENT	BIT(0)
 #define DEVPARAM_COMPLETE_DOLLAR	BIT(1)
@@ -86,7 +87,6 @@ static int file_complete(struct string_list *sl, char *instr,
 
 static int path_command_complete(struct string_list *sl, char *instr)
 {
-	struct stat s;
 	DIR *dir;
 	struct dirent *d;
 	char tmp[PATH_MAX];
@@ -121,8 +121,7 @@ static int path_command_complete(struct string_list *sl, char *instr)
 
 			if (strstarts_escaped(d->d_name, instr)) {
 				strcpy(tmp, d->d_name);
-				if (!stat(tmp, &s) &&
-						S_ISDIR(s.st_mode))
+				if (file_exists_type(tmp, S_IFDIR))
 					continue;
 				else
 					strcat(tmp, " ");
diff --git a/common/environment.c b/common/environment.c
index faf9fc274e..4180aa90be 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -252,16 +252,13 @@ static int file_remove_action(const char *filename, struct stat *statbuf,
 {
 	struct action_data *data = userdata;
 	char *envname;
-	struct stat s;
-	int ret;
 	struct envfs_entry *env;
 
 	filename += sizeof(TMPDIR) - 1;
 
 	envname = basprintf("%s/%s", data->base, filename);
 
-	ret = stat(envname, &s);
-	if (ret) {
+	if (!file_exists(envname)) {
 		char *base;
 
 		base = basename(envname);
diff --git a/common/file-list.c b/common/file-list.c
index 6298f8f82d..2b533657c2 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -10,6 +10,7 @@
 #include <linux/err.h>
 #include <driver.h>
 #include <block.h>
+#include <libfile.h>
 
 #define PARSE_DEVICE	0
 #define PARSE_NAME	1
@@ -283,11 +284,10 @@ char *file_list_to_str(const struct file_list *files)
 int file_list_detect_all(const struct file_list *files)
 {
 	struct file_list_entry *fentry;
-	struct stat s;
 	int i = 0;
 
 	list_for_each_entry(fentry, &files->list, list) {
-		if (!stat(fentry->filename, &s))
+		if (file_exists(fentry->filename))
 			continue;
 		if (device_detect_by_name(devpath_to_name(fentry->filename)) == 0)
 			i++;
diff --git a/common/menutree.c b/common/menutree.c
index 6370ad1f56..2026a6e553 100644
--- a/common/menutree.c
+++ b/common/menutree.c
@@ -139,8 +139,7 @@ int menutree(const char *path, int toplevel)
 
 		mt->action = basprintf("%s/action", g.gl_pathv[i]);
 
-		ret = stat(mt->action, &s);
-		if (ret) {
+		if (!file_exists(mt->action)) {
 			mt->me.action = menutree_action_subdir;
 			free(mt->action);
 			mt->action = xstrdup(g.gl_pathv[i]);
diff --git a/common/startup.c b/common/startup.c
index 98da24873e..12a538715d 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -100,7 +100,6 @@ static void env_merge_of_compat_overlays(const char *dir)
 {
 	struct device_node *root;
 	const char *compat;
-	struct stat s;
 	char *ofdir, *src;
 	int count;
 
@@ -110,7 +109,7 @@ static void env_merge_of_compat_overlays(const char *dir)
 
 	ofdir = xasprintf("%s/match.of_compatible", dir);
 
-	if (stat(ofdir, &s) || !S_ISDIR(s.st_mode))
+	if (!file_exists_type(ofdir, S_IFDIR))
 		goto out;
 
 	count = of_property_count_strings(root, "compatible");
@@ -126,7 +125,7 @@ static void env_merge_of_compat_overlays(const char *dir)
 
 		src = xasprintf("%s/%s", ofdir, compat);
 
-		if (stat(src, &s) == 0 && S_ISDIR(s.st_mode)) {
+		if (file_exists_type(src, S_IFDIR)) {
 			pr_debug("Applying '%s'-compatible environment overlay\n",
 				 compat);
 			copy_recursive(src, dir, 0);
@@ -239,7 +238,6 @@ enum autoboot_state do_autoboot_countdown(void)
 	static enum autoboot_state autoboot_state = AUTOBOOT_UNKNOWN;
 	unsigned flags = CONSOLE_COUNTDOWN_EXTERN;
 	int ret;
-	struct stat s;
 	bool menu_exists;
 	char abortkeys[3] = {};
 	unsigned char outkey;
@@ -257,7 +255,7 @@ enum autoboot_state do_autoboot_countdown(void)
 	if (global_autoboot_state != AUTOBOOT_COUNTDOWN)
 		return global_autoboot_state;
 
-	menu_exists = stat(MENUFILE, &s) == 0;
+	menu_exists = file_exists(MENUFILE);
 
 	if (menu_exists)
 		strcat(abortkeys, "m");
@@ -338,7 +336,6 @@ static int run_init(void)
 {
 	const char *bmode, *cmdline;
 	bool env_bin_init_exists;
-	struct stat s;
 	glob_t g;
 	int i, ret;
 	size_t size;
@@ -348,7 +345,7 @@ static int run_init(void)
 	export("PATH");
 
 	/* Run legacy /env/bin/init if it exists */
-	env_bin_init_exists = stat(INITFILE, &s) == 0;
+	env_bin_init_exists = file_exists(INITFILE);
 	if (env_bin_init_exists) {
 		pr_info("running legacy %s...\n", INITFILE);
 		run_command("source " INITFILE);
@@ -369,11 +366,7 @@ static int run_init(void)
 		for (i = 0; i < g.gl_pathc; i++) {
 			const char *path = g.gl_pathv[i];
 
-			ret = stat(path, &s);
-			if (ret)
-				continue;
-
-			if (!S_ISREG(s.st_mode))
+			if (!file_exists_type(path, S_IFREG))
 				continue;
 
 			pr_debug("Executing '%s'...\n", path);
@@ -404,7 +397,7 @@ static int run_init(void)
 
 		scr = xasprintf("source /env/bmode/%s", bmode);
 		path = &scr[strlen("source ")];
-		if (stat(path, &s) == 0) {
+		if (file_exists(path)) {
 			pr_info("Invoking '%s'...\n", path);
 			run_command("%s", scr);
 		}
@@ -436,7 +429,7 @@ static int run_init(void)
 		 * message is printed if the file doesn't exist
 		 */
 		run_command(MENUFILE);
-	} while (stat(MENUFILE, &s) == 0);
+	} while (file_exists(MENUFILE));
 
 	hang();
 }
diff --git a/drivers/usb/gadget/function/dfu.c b/drivers/usb/gadget/function/dfu.c
index 90363586ee..9c145a7f8f 100644
--- a/drivers/usb/gadget/function/dfu.c
+++ b/drivers/usb/gadget/function/dfu.c
@@ -298,8 +298,6 @@ static void dfu_do_open_upload(struct dfu_work *dw)
 
 static void dfu_do_close(struct dfu_work *dw)
 {
-	struct stat s;
-
 	pr_debug("do close\n");
 
 	if (dfufd > 0) {
@@ -307,7 +305,7 @@ static void dfu_do_close(struct dfu_work *dw)
 		dfufd = -EINVAL;
 	}
 
-	if (!stat(DFU_TEMPFILE, &s))
+	if (file_exists(DFU_TEMPFILE))
 		unlink(DFU_TEMPFILE);
 
 	dw->dfu->dfu_state = DFU_STATE_dfuIDLE;
diff --git a/lib/glob.c b/lib/glob.c
index a077f2702b..0ffad8079d 100644
--- a/lib/glob.c
+++ b/lib/glob.c
@@ -10,6 +10,7 @@
 #include <fnmatch.h>
 #include <qsort.h>
 #include <glob.h>
+#include <libfile.h>
 
 static int glob_in_dir (const char *pattern, const char *directory,
 			    int flags,
@@ -219,10 +220,8 @@ int glob(const char *pattern, int flags,
 		/* Append slashes to directory names.  glob_in_dir has already
 		   allocated the extra character for us.  */
 		int i;
-		struct stat st;
 		for (i = oldcount; i < pglob->gl_pathc; ++i)
-			if (stat(pglob->gl_pathv[i], &st) == 0 &&
-			    S_ISDIR(st.st_mode))
+			if (file_exists_type(pglob->gl_pathv[i], S_IFDIR))
 				strcat(pglob->gl_pathv[i], "/");
 	}
 #ifdef CONFIG_GLOB_SORT
diff --git a/lib/libbb.c b/lib/libbb.c
index 642e54d78f..1aff728b6f 100644
--- a/lib/libbb.c
+++ b/lib/libbb.c
@@ -14,6 +14,7 @@
 #include <xfuncs.h>
 #include <malloc.h>
 #include <environment.h>
+#include <libfile.h>
 
 /* concatenate path and file name to new allocation buffer,
  * not adding '/' if path name already has '/'
@@ -91,8 +92,7 @@ EXPORT_SYMBOL(find_path);
  */
 bool execable_file(const char *name)
 {
-	struct stat s;
-	return (!stat(name, &s) && S_ISREG(s.st_mode));
+	return file_exists_type(name, S_IFREG);
 }
 EXPORT_SYMBOL(execable_file);
 
diff --git a/lib/libfile.c b/lib/libfile.c
index 2330d52d8e..0af8585c40 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -787,14 +787,11 @@ EXPORT_SYMBOL(file_exists_type);
 char *make_temp(const char *template)
 {
 	char *name = NULL;
-	struct stat s;
-	int ret;
 
 	do {
 		free(name);
 		name = basprintf("/tmp/%s-%08x", template, random32());
-		ret = stat(name, &s);
-	} while (!ret);
+	} while (file_exists(name));
 
 	return name;
 }
diff --git a/net/ifup.c b/net/ifup.c
index cffdfe7c9b..a47eb4d543 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -18,18 +18,15 @@
 #include <driver.h>
 #include <init.h>
 #include <magicvar.h>
+#include <libfile.h>
 #include <linux/stat.h>
 
 static int eth_discover(char *file)
 {
-	struct stat s;
-	int ret;
+	int ret = 0;
 
-	ret = stat(file, &s);
-	if (ret) {
-		ret = 0;
+	if (!file_exists(file))
 		goto out;
-	}
 
 	ret = run_command("%s", file);
 	if (ret) {
@@ -69,11 +66,9 @@ static int source_env_network(struct eth_device *edev)
 	char *file;
 	const char *ethaddrstr, *modestr, *linuxdevname;
 	int ret, mode, ethaddr_valid = 0, i;
-	struct stat s;
 
 	file = basprintf("/env/network/%s", edev->devname);
-	ret = stat(file, &s);
-	if (ret) {
+	if (!file_exists(file)) {
 		free(file);
 		return 0;
 	}

-- 
2.47.3



