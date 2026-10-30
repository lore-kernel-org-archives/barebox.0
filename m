Delivery-date: Fri, 30 Oct 2026 15:54:29 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMnzx-005BOq-07
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 15:54:29 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AB90F201FF3
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 15:54:28 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1kHqEoi+;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=YRHB7u78;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793372069;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=3B4jfvOTMdn2aORUj0RBWjVVmDw1aIjopIslJnijdOE=;
	b=F1RZ4jgJWFEauaqO079ajkYmJTJKcE2vk6gEPpOoQSMAJGmCjS4y5E4k1wU9Zz0BqcN+Hm
	UNMKzg9z1QoxaQ1RyHwzfMJF5wAo+Xe9LNyqWxUNRCxyQFnTbnTroICr2HQvj3mYWg+lgs
	wXcM2zY+d+zZZPBAdrsHdqIbyjsYHYIZFIUDKGgCZ+d7zBF4AmMDWgjh/OTOW7L4vYhXRn
	MKKZhom85vnb2Uy66krkqNXHXiGzBy7wDryOnorL4wgUqU+h+ExZE6KoiSam126csSfpQR
	yrrdoE4vVL3z+ddEhGBwdR6bFvGjdr3jN08c/Xmo9FnPsL9H/ycZS05jEaohtA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1kHqEoi+;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=YRHB7u78;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793372069; a=rsa-sha256;
	cv=fail;
	b=HH5qhhLNLxa7gsDaP67c5vu0Leoqi+It3HTkgGIMNpP556u8eknUJN6+mA9dzw/wpXe8bH
	kWpEpJGUkcOVMCVaUIo1LYYeDkJ4Z09Qn71M+L80tbN0fKUkUazDGUd74olEahwDaSIs0q
	Log7UK9cFZUtpNnCsef7zQ8zyQDINsHDDK0NBVlGAV3917k28l/jYXfCtaz4kudaJioXBq
	ZrwIfmfy7aj1K6r//Bf0iVvm6UHL06D6hTME8QKU6DR2hITItzabYI8TQjhWGFZThFZnyZ
	/15MvJxc9Vnk20zVUWNC5c5Prgz9etzboYkNce1me3vNv/uz7qszT8FgOGt2WQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=3B4jfvOTMdn2aORUj0RBWjVVmDw1aIjopIslJnijdOE=; b=1kHqEoi+Oc7Q29
	V5GjwrVYp1J9lm3DTwuPAo7Lo9Oe8c9nfWSQ77xYkJqv26pxjBUTmW4v5V7o98zq29AtOiH80RUXU
	iyIwcMxaPr3L55/kQACneCEKpD9fQReYhaJRI1yaKQPohSJ7Jupv2Qe2qdcEjeUmL1J0XVjvthvaL
	ojIMry02kYg2tMULaZiFtZ79fqLT/YB8bh3bGEyUgXD4/xj5jYTBl3q4/2qmUGtnbVbd5a+b68Bgq
	jVpI96S8C+HBSSoL/G9RpfD3Bz/5h1DP6Np2bbnd6gRnUEn73aHuTSh3lH+3P3LhxtVJCRo8hHpxg
	QGTnIkJLflrG5bozdgFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnMS-0000000Bqjl-1V0N;
	Fri, 30 Oct 2026 14:13:40 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnMN-0000000BqhE-30F1
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 14:13:38 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BFD8C20296A;
	Fri, 30 Oct 2026 15:13:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793369612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3B4jfvOTMdn2aORUj0RBWjVVmDw1aIjopIslJnijdOE=;
	b=YRHB7u78u0KfNyhB1zKgXsgK92rDZ0Uhy3hriJmM6i7/U4EcbXZ84f2yHB6iNr5HcBIwnk
	awzxP8sxykYCkJ+eFl38K+T/j9mZpE9ZHXOQiY0G5l5F6sksES7Pi90Zba+HoATtA0xA9N
	46NIenr6mBwu3mNDXbfD9fmEgmC16Dra5jNjNdLny1xetApnpLo3LzfGUUvggXy8YrMB4V
	xkejp0ShUzyw401nvD8OGLhnAX83NlLFcpMdtO+WrRXxHx1Z/4y0OvuZJk4lcpg7pcS1x+
	wKT7rIKwFhwwgUskCYxZXYsFoBS976MaV0NzcF9MiUlGGFkrw9PbH79oaOy8uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793369612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3B4jfvOTMdn2aORUj0RBWjVVmDw1aIjopIslJnijdOE=;
	b=AF88cEEFVNqnYnJfoDqVmFoA+Ha4Jdfo5mpGnMdIHTaiMi2BdcUf9Wsva02yn35Hk3gWFB
	/AJ7RIFZqixmo3VU0H1sL3iLtCd/oR4y7465IxKhQKphwSpPFk2RLxnV1uJe22xQoVa530
	SsT+C3KKenZW/0+MKCW34hRmDOPSgHdhTh3RoOSzWDGqs/QtwRRx49EqOAPQlBRzJGFEiA
	8ghvzc5CpaKrLNy+KfMTgUcUfj8G+wr/yIiU1krxAIxrni1SUMX6egzNw85t6v/g/ozQOJ
	TBlgkdL1bZGxYQKYx1Aoufo7K7cjK+XZty+RccqDq/OHWyhpSXw9wcDs8SIzFQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793369612; a=rsa-sha256;
	cv=none;
	b=S5vGuUDS4VUPec6SYR3u90ONL3yHiMu48f1ETaYNzIGUWqJkNyly0m5pxZOhLU0EykKTF4
	cFWaPFZxO3dSn3ZFIAHR9tWWltssOU93iiZAe+ScXT6ZpJAnrv8kOLb/vxmYY6gQl078+Q
	WyGxteQ5i7eemqUzBSlvzGuPJtNfStTWTx1TgA1Rwhw8ZIfyf/AltO5NS7iydfnCqdhd9M
	UReGoK57B9gk26T6M+8tZLjhZxoUyAz+YTysRHraOB++y6Cd8xLFRaG85WtFDnkpPlK7X5
	1zkk7N63sTulzryOUizQc99TJTlLV6thgnlkTNcgoLnuDuFLLiUsMSw+AaQIFw==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 15:13:30 +0100
Subject: [PATCH 3/5] boot: hand overrides on to nested boots and the bootm
 command
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-devboot-v1-3-ab9dd3a92c66@pengutronix.de>
References: <20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de>
In-Reply-To: <20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793369612; l=12760;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=bFwa7hCTSgVzAJSx5yVyGg6YrOD7vAnRjO2a7EqT1h8=;
 b=nCKo3M22sa/fOEv3D4NG0sAaLSprm8atqzSwqGMI1fPDQ4YVmwEncxOCHlLuHQMNoRFUUjOt5
 01eh+UtRBd0CRLOEYjUywSxpcTDqy8M6Fp+mfJEbOuyxaNNMhCyh66x
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_071336_073959_50433704 
X-CRM114-Status: GOOD (  29.98  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Overrides are stored in the boot entry they are given for
   and only applied by bootm_entry(). They get lost when a boot entry boots something
    else, like a boot script calling boot, or calling the bootm [...] 
 
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
X-Stat-Signature: 7mu4r85hssbwggfeaw45iemeeifk1ysg
X-Rspamd-Queue-Id: AB90F201FF3

Overrides are stored in the boot entry they are given for and only
applied by bootm_entry(). They get lost when a boot entry boots something
else, like a boot script calling boot, or calling the bootm command.

Keep track of the overrides of the boot entry being booted. Hand them on
to boot entries booted from there, with the ones of the outer entry
taking precedence, and apply them in the bootm command. bootchooser no
longer needs to merge the overrides into its targets itself.

This is done in do_bootm() and not in bootm_boot(), which the Android
image handler calls while a bootm is already running, so it would apply
the overrides a second time.

Assisted-by: Claude:claude-opus-5-5
---
 Documentation/user/devboot.rst |  4 ++
 commands/bootm.c               |  3 +-
 common/boot.c                  | 44 ++++++++++++--------
 common/bootchooser.c           | 13 ++----
 common/bootm.c                 | 22 +++++++++-
 include/boot.h                 |  8 ++++
 include/bootchooser.h          |  2 +-
 include/bootm.h                |  3 ++
 test/py/test_boot_overrides.py | 92 ++++++++++++++++++++++++++++++++++++++++++
 9 files changed, 163 insertions(+), 28 deletions(-)

diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.rst
index 62cc357c3a..e05541f05b 100644
--- a/Documentation/user/devboot.rst
+++ b/Documentation/user/devboot.rst
@@ -38,6 +38,10 @@ Overrides are applied after the boot entry has been loaded, so the original
 entry still selects the boot handler, kernel arguments, etc. Only the
 specified components are replaced.
 
+Overrides also apply to whatever a boot entry boots itself, like a boot script
+calling ``boot`` or ``bootm``, even if that is passed an image explicitly. If
+a nested ``boot`` has overrides of its own, the outer ones take precedence.
+
 Override rules
 ^^^^^^^^^^^^^^
 
diff --git a/commands/bootm.c b/commands/bootm.c
index 44abb953f6..0d6a95edae 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -16,6 +16,7 @@
 #include <fcntl.h>
 #include <fs.h>
 #include <errno.h>
+#include <boot.h>
 #include <bootm.h>
 #include <rtc.h>
 #include <init.h>
@@ -94,7 +95,7 @@ static int do_bootm(int argc, char *argv[])
 		goto err_out;
 	}
 
-	ret = bootm_boot(&data);
+	ret = bootm_boot_overrides(&data, boot_get_active_overrides());
 	if (ret) {
 		printf("handler failed with: %pe\n", ERR_PTR(ret));
 		goto err_out;
diff --git a/common/boot.c b/common/boot.c
index b993cabf65..271cfd3a29 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -187,8 +187,23 @@ BAREBOX_MAGICVAR(global.boot.watchdog_timeout,
 BAREBOX_MAGICVAR(global.user,
 		"Username used by the default environment to construct network boot paths");
 
+/* The overrides of the boot entry currently being booted */
+static const struct bootm_overrides *boot_active_overrides;
+
+/**
+ * boot_get_active_overrides - get the overrides of the current boot entry
+ *
+ * Return: the overrides of the boot entry currently being booted, NULL if
+ * there is none
+ */
+const struct bootm_overrides *boot_get_active_overrides(void)
+{
+	return boot_active_overrides;
+}
+
 int boot_entry(struct bootentry *be, int verbose, int dryrun)
 {
+	const struct bootm_overrides *outer = boot_active_overrides;
 	struct globalvar_scope *scope;
 	int ret;
 
@@ -206,7 +221,19 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 
 	scope = boot_globalvar_scope_push();
 
+	/*
+	 * A boot entry may boot other entries, for example a boot script
+	 * calling boot. Hand the overrides on to them, the ones of the outer
+	 * entry take precedence.
+	 */
+	if (outer)
+		bootm_merge_overrides(&be->overrides, outer);
+	boot_active_overrides = &be->overrides;
+
 	ret = be->boot(be, verbose, dryrun);
+
+	boot_active_overrides = outer;
+
 	if (ret > 0)
 		pr_err("Booting entry '%s' failed: exit status %d\n", be->title, ret);
 	else if (ret && ret != -ENOMEDIUM)
@@ -642,20 +669,5 @@ BAREBOX_MAGICVAR(global.boot.default, "default boot order");
  */
 int bootm_entry(struct bootentry *be, const struct bootm_data *bootm_data)
 {
-	struct image_data *data;
-	int ret;
-
-	data = bootm_boot_prep(bootm_data);
-	if (IS_ERR(data))
-		return PTR_ERR(data);
-
-	ret = bootm_apply_overrides(data, &be->overrides);
-	if (ret)
-		goto out;
-
-	ret = bootm_boot_handler(data);
-
-out:
-	bootm_boot_cleanup(data);
-	return ret;
+	return bootm_boot_overrides(bootm_data, &be->overrides);
 }
diff --git a/common/bootchooser.c b/common/bootchooser.c
index 2049425ab3..c8f72871f3 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -840,8 +840,7 @@ void bootchooser_lock_attempts(bool locked)
 	attempts_locked = locked;
 }
 
-static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain,
-				struct bootentry *parent_entry)
+static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain)
 {
 	char *system;
 	struct bootentries *entries;
@@ -878,10 +877,6 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain,
 	ret = -ENOENT;
 
 	bootentries_for_each_entry(entries, entry) {
-		if (parent_entry)
-			bootm_merge_overrides(&entry->overrides,
-					      &parent_entry->overrides);
-
 		ret = boot_entry(entry, bc->verbose, bc->dryrun);
 		if (!ret) {
 			*tryagain = 0;
@@ -898,12 +893,12 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain,
 	return ret;
 }
 
-int bootchooser_boot(struct bootchooser *bc, struct bootentry *entry)
+int bootchooser_boot(struct bootchooser *bc)
 {
 	int ret, tryagain;
 
 	do {
-		ret = bootchooser_boot_one(bc, &tryagain, entry);
+		ret = bootchooser_boot_one(bc, &tryagain);
 
 		if (!retry)
 			break;
@@ -924,7 +919,7 @@ int bootchooser_entry_boot(struct bootentry *entry, int verbose, int dryrun)
 	bc->verbose = verbose;
 	bc->dryrun = dryrun;
 
-	ret = bootchooser_boot(bc, entry);
+	ret = bootchooser_boot(bc);
 
 	bootchooser_put(bc);
 
diff --git a/common/bootm.c b/common/bootm.c
index 2ad8c34bb4..2ed377da18 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -785,7 +785,15 @@ void bootm_boot_cleanup(struct image_data *data)
 /*
  * bootm_boot - Boot an application image described by bootm_data
  */
-int bootm_boot(const struct bootm_data *bootm_data)
+/**
+ * bootm_boot_overrides - boot with overrides applied
+ * @bootm_data: bootm data
+ * @overrides: overrides to apply, may be NULL
+ *
+ * Return: 0 on success, or negative error code otherwise
+ */
+int bootm_boot_overrides(const struct bootm_data *bootm_data,
+			 const struct bootm_overrides *overrides)
 {
 	struct image_data *data;
 	int ret;
@@ -794,12 +802,24 @@ int bootm_boot(const struct bootm_data *bootm_data)
 	if (IS_ERR(data))
 		return PTR_ERR(data);
 
+	if (overrides) {
+		ret = bootm_apply_overrides(data, overrides);
+		if (ret)
+			goto out;
+	}
+
 	ret = bootm_boot_handler(data);
 
+out:
 	bootm_boot_cleanup(data);
 	return ret;
 }
 
+int bootm_boot(const struct bootm_data *bootm_data)
+{
+	return bootm_boot_overrides(bootm_data, NULL);
+}
+
 bool bootm_efi_check_image(struct image_handler *handler,
 			   struct image_data *data,
 			   enum filetype detected_filetype)
diff --git a/include/boot.h b/include/boot.h
index bb99dacc85..72cc769d59 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -56,6 +56,14 @@ int bootentry_create_from_name(struct bootentries *bootentries,
 void bootsources_menu(struct bootentries *bootentries, unsigned default_entry, int timeout);
 void bootsources_list(struct bootentries *bootentries);
 int boot_entry(struct bootentry *be, int verbose, int dryrun);
+#ifdef CONFIG_BOOT
+const struct bootm_overrides *boot_get_active_overrides(void);
+#else
+static inline const struct bootm_overrides *boot_get_active_overrides(void)
+{
+	return NULL;
+}
+#endif
 
 struct bootm_data;
 int bootm_entry(struct bootentry *be, const struct bootm_data *data);
diff --git a/include/bootchooser.h b/include/bootchooser.h
index da3b974ef6..36cbd0dd0a 100644
--- a/include/bootchooser.h
+++ b/include/bootchooser.h
@@ -14,7 +14,7 @@ int bootchooser_put(struct bootchooser *bootchooser);
 
 void bootchooser_info(struct bootchooser *bootchooser);
 
-int bootchooser_boot(struct bootchooser *bc, struct bootentry *entry);
+int bootchooser_boot(struct bootchooser *bc);
 
 struct bootchooser_target *bootchooser_get_last_chosen(struct bootchooser *bootchooser);
 void bootchooser_lock_attempts(bool locked);
diff --git a/include/bootm.h b/include/bootm.h
index 06eb90c5ed..d63e9fc4f6 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -75,6 +75,9 @@ struct bootm_data {
 int bootm_image_name_and_part(const char *name, char **filename, char **part);
 
 int bootm_boot(const struct bootm_data *data);
+struct bootm_overrides;
+int bootm_boot_overrides(const struct bootm_data *data,
+			 const struct bootm_overrides *overrides);
 
 struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data);
 int bootm_open_os_compressed(struct image_data *data);
diff --git a/test/py/test_boot_overrides.py b/test/py/test_boot_overrides.py
new file mode 100644
index 0000000000..674b3a2116
--- /dev/null
+++ b/test/py/test_boot_overrides.py
@@ -0,0 +1,92 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+import pytest
+from .helper import skip_disabled
+from .test_boot_globalvar_scope import write_bootscript
+
+OVERRIDE = "/tmp/override-image"
+BASE = "/tmp/base-image"
+OUTER = "/tmp/outer-image"
+
+
+def make_image(barebox, path):
+    # bootm wants a full page of a known image type. There's no handler for
+    # ELF images here, but it only fails after reporting the image it boots
+    barebox.run_check(f"echo -o {path} image")
+    for _ in range(6):
+        barebox.run_check(f"cat -o {path}.tmp {path} {path}")
+        barebox.run_check(f"cat -o {path} {path}.tmp {path}.tmp")
+    barebox.run_check(f"rm {path}.tmp")
+    barebox.run_check(f"mw -b -d {path} 0 0x7f 0x45 0x4c 0x46")
+
+
+def booted(stdout):
+    return [line for line in stdout if line.startswith("Loading ")]
+
+
+@pytest.fixture(scope="function")
+def override_env(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_BOOT_OVERRIDE", "CONFIG_CMD_ECHO",
+                  "CONFIG_CMD_CAT", "CONFIG_CMD_MW")
+
+    make_image(barebox, BASE)
+    make_image(barebox, OVERRIDE)
+    make_image(barebox, OUTER)
+
+    write_bootscript(barebox, "ovr-target", [
+        f"global.bootm.image={BASE}",
+    ])
+    write_bootscript(barebox, "ovr-nested", [
+        "boot ovr-target",
+    ])
+    write_bootscript(barebox, "ovr-nested-override", [
+        f"boot -o bootm.image={OVERRIDE} ovr-target",
+    ])
+    write_bootscript(barebox, "ovr-bootm", [
+        f"bootm {BASE}",
+    ])
+
+    yield
+
+    barebox.run(f"rm {BASE} {OVERRIDE} {OUTER}")
+    barebox.run("rm /env/boot/ovr-target /env/boot/ovr-nested "
+                "/env/boot/ovr-nested-override /env/boot/ovr-bootm")
+
+
+@pytest.mark.usefixtures("override_env")
+def test_override_entry(barebox):
+    stdout, _, _ = barebox.run("boot ovr-target")
+    assert any(BASE in line for line in booted(stdout))
+
+    stdout, _, _ = barebox.run(f"boot -o bootm.image={OVERRIDE} ovr-target")
+    assert any(OVERRIDE in line for line in booted(stdout))
+
+
+@pytest.mark.usefixtures("override_env")
+def test_override_nested_boot(barebox):
+    stdout, _, _ = barebox.run(f"boot -o bootm.image={OVERRIDE} ovr-nested")
+    assert any(OVERRIDE in line for line in booted(stdout))
+    assert not any(BASE in line for line in booted(stdout))
+
+
+@pytest.mark.usefixtures("override_env")
+def test_override_outer_takes_precedence(barebox):
+    stdout, _, _ = barebox.run(f"boot -o bootm.image={OUTER} ovr-nested-override")
+    assert any(OUTER in line for line in booted(stdout))
+    assert not any(OVERRIDE in line for line in booted(stdout))
+
+
+@pytest.mark.usefixtures("override_env")
+def test_override_bootm_command(barebox):
+    stdout, _, _ = barebox.run(f"boot -o bootm.image={OVERRIDE} ovr-bootm")
+    assert any(OVERRIDE in line for line in booted(stdout))
+    assert not any(BASE in line for line in booted(stdout))
+
+
+@pytest.mark.usefixtures("override_env")
+def test_override_ends_with_boot(barebox):
+    # the override must not stick to a later bootm outside of the boot command
+    barebox.run(f"boot -o bootm.image={OVERRIDE} ovr-target")
+
+    stdout, _, _ = barebox.run(f"bootm {BASE}")
+    assert any(BASE in line for line in booted(stdout))

-- 
2.47.3



