Delivery-date: Fri, 13 Nov 2026 10:59:32 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRo4C-00ANdu-0c
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 10:59:32 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 083FC202C91
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 10:59:32 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FH4EQIX2;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=JqlWSNty;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563972;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=dfs8f5gB30ifn7avAvvVZzxvinLwkDYS8At8NwXvqNM=;
	b=W5HiWPrZ1LnTz8/SYWKt4pSvDk/Qwz2Dd2XosK8We5jBo7jkdXczmcJeVRKmdI/Q9RAF9x
	VQ0V6WMaITHjvDP1UfM5oWogT5S+xvNuBnX26vZn7MfJeKTcdiPrfMnQWmXhsd4UYDyiSY
	zfz9eYFD5FUwVYpikDXMVX8idXhXDDoX/6kAMXzdE2uacCf+RXZxyuCgMLpYn1U4xdcJBx
	CSbS0JLx2nHfW6UsyBq2PKWVvQzPX1eVPO5G5w4YOmfNWVau4sMeEwGg0k7Z4A6v023QyM
	O4KcXWQ9tmBMW7bNtwAN79/7dXaLFVLkyIcMd859XQXHaM2bX4Q3TFtkpLf4Bg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794563972; a=rsa-sha256;
	cv=fail;
	b=J+jWRpso7TfdPbkT8Y7l0/M2us5C3bTENUFQdU6q5f850DcHO+l41im7nXEOZmsVk4VBPC
	e8EN2qiZ8DKqgVsPoAiw6idrmWYrq7swQztmtGZU5FT6RbpwM9dCXciLD2utCGyog2cwis
	StaLTBIpG3O1wS/CE/NPtGnFAbBFu+cTLN0fcMcuqzVGf4SYXJT47uz7oqyC1ftGJhS2KG
	tuUaJqNbAvza3odMo+pjjfZJ9aO3j2AUVBYvHTGLpkLmvAWKpGQpD/tO5cAZ7DZZppuJjt
	CaEbzwR7cnzT0jkp77rEIxaxM9WnI+yp165qctMAMdSlK8T0httcOOCebVdPKQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FH4EQIX2;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=JqlWSNty;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=dfs8f5gB30ifn7avAvvVZzxvinLwkDYS8At8NwXvqNM=; b=FH4EQIX2NxATRV
	HGS4K2eJhTMHTNJhUIG/Zh4moRkd5nREO9O5STX/qQSiWfNF6dC/u+pc4PucXw7JYejlASSGPyf7I
	QJdsnB9anlw1Ex6hLLutLP5L0YgZ+I+m2i8pGxpo6cRXGSCSt5K0MxRXGJQYDf/161DZsQtaphRHF
	PnRGZuzturLpW6FA4Zt5zG0iieB5DGdRQ8yTqRaqgHS9io3f9XzYGqtYqOqQd0He6lKmYYslKxcV+
	2/x88eKB2Z24IyVvycFvEtpaDBD5HSSVrovyf6aBLxvoB+n9f9s4rXSVyvLlnqV9urjkJQeaO5A18
	7G8Ekla6qy5qUQelZ9TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo3I-0000000CHSo-2r8Y;
	Fri, 13 Nov 2026 09:58:36 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo3C-0000000CHO0-2oSy
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 09:58:34 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E3301205848;
	Fri, 13 Nov 2026 10:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563908;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dfs8f5gB30ifn7avAvvVZzxvinLwkDYS8At8NwXvqNM=;
	b=JqlWSNty1wlI1L6sIzGmuSQjsyeMkdJa9HhmDjnSokXxCHZupIZEMudQPlFG3z99VEuqhm
	asT0+Jk4+U7djNTAwHAFrJZlQG/I57+VfeH5BOqgRnKbIW8xTKjzZu59UnYGKgcANTHq2g
	XzaJm/Q4Tz8EKif+1MrDFeJovtwh7CiR+fT353rUwyU3QWCqcNzmMTOIr8z418pJEZlTYP
	u75/WxoJ0AooXLajWHa1EhA8emxA/wlPydKG5gT066XzV2wOPLUT8dK1UNV8bnQIv2e6kZ
	Sc3aMoGC7cD2jhgJeTOJFGh+Vl6lQ4CXnYR6SuIqeq1ItpxNvjJ3zWIA01qapw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563908;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dfs8f5gB30ifn7avAvvVZzxvinLwkDYS8At8NwXvqNM=;
	b=Cr+hLuohV9YaAXTa/GJtw9fVgDZeTGD9YGJwIyrvc86F8hWqME/QID2w26MNrbC13rFRKs
	muH/lrPG8lLsZNWUd+FD8Lh0IDzUR7Pg/mAbSq8w00jp0ni+Y16k8eUO0UAbrNYeM9NFsw
	38z6+QuoYNza59LGyctrGZcZLFlmk5wLgFcqBgL/7ORUQhAs+khXrILmtk8MINVjGYV20x
	ajvsW+pMZLwFyp82UvKA7Vefmd+l9d411UnPEqa6D7AkOyuaBQ4GR8eJl/1K76bX4qjQlp
	/vfphQRVKduhagEXZ5oTxSnYiNZ+i1/wuiD0q1pvR8uR2rz3+dk0C+12xjaS1Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794563908; a=rsa-sha256;
	cv=none;
	b=YxdiiwSLMgjZq1GHrfZL+C2cPLoIlA9uIaYJHhHHbJr4S9wbEZMUw2STTISZL2DwBj1E9T
	4iucOqGGW3AhWLfrpdTZa1sRvDRQiT3Fc76RpyuB8TUz9QvnwXkU/GMa5nWKPejK8xRq61
	XRyEkdhKvbwA/9tp4xD7Zz2QKX/rprb2xUueEo7bonpUpRJqzuyy/PtFrtWiqUuAEMAkEp
	F0T1MLQcT3XYlKwBdIMFnXgVgeJ0s7VPHmDudMwYST6UpRIr8sUkGDrAoJEFrLNAUYYpnS
	ZFbvSdU6NmDD3g6u4a+EV7lKp+kwdA/hXAVtMhVxp7Fe8dxFVFbehsXuUWUHZQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2026 10:58:26 +0100
Subject: [PATCH v2 3/6] boot: hand overrides on to nested boots and the
 bootm command
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261113-devboot-v2-3-f6853990006d@pengutronix.de>
References: <20261113-devboot-v2-0-f6853990006d@pengutronix.de>
In-Reply-To: <20261113-devboot-v2-0-f6853990006d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794563908; l=12777;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=gviUWrkQ8mhFhNSB88wMCi/3OPgHg0+ryTjWF2vE/OY=;
 b=jLxh5ruKVTCgoMoDTml43f5yZEpbYKWkUXGIcxrUBGFy5RkrMGl2hWcuU5R3V8U6OfFLQ0u3V
 8N13dCTkZsNBY/y2NqSxy1wRjbH281nJFRpTdvyOucXc7W2XGR6Afj1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_015831_022089_7EF43E9E 
X-CRM114-Status: GOOD (  30.16  )
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 083FC202C91
X-Stat-Signature: 9t7gej8j38srwpbmwnoe35r8e141dhrk
X-Rspamd-Action: no action

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

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
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
index 227048be97..efcfde918c 100644
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
index 4e0b688910..a65aa64ddf 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -794,7 +794,15 @@ void bootm_boot_cleanup(struct image_data *data)
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
@@ -803,12 +811,24 @@ int bootm_boot(const struct bootm_data *bootm_data)
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
index dad45592a6..a55adc3c38 100644
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



