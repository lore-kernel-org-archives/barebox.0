Delivery-date: Tue, 27 Oct 2026 14:25:22 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLhB3-003vtc-34
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 14:25:22 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BB6CE20294F
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 14:25:21 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YwY56RVh;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Bwmzq17t;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793107522; a=rsa-sha256;
	cv=pass;
	b=XqEPrA/uBSw8KEMKdvQatUgLPNoTayx9HmEtfU1p5UMxcNsPmZwkKe1ydF6FsX5gLzAL6W
	bxODerFKsvBGu9UgGlcl9S0ADD5o1XiV7KojSaW5CYoeyPEtHYQb/664R6uJ7Fo95z8yVV
	vpcXYL8UNrHobIVtwC4Mp2VEmOGrsphl+pKrK6mWy9qa/5Ot+wlShk0Tz21Jfk7pMSXVut
	K8yN0hZ8tbi0ey9lPgLfiUvJP7V92D2YJn/8ExtiIDCHUKNRHEN6DAt4UMIM9DZ409SFxM
	YaF6txV6rk/3nD4hmr0F3QjD0IOzkKdpdaK45YIJoM13EEIu/5dc+QZTvc3uBw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YwY56RVh;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Bwmzq17t;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793107522;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=awPMjRNSBf/wUdh7sHxJKdRKhbyuzmMdUKKSnTugs/s=;
	b=bEp5leTv5YTmLMaD+qlc6vYdP8n1K6KJmUyHxaTPvwnew9PquFhGTE2F9LOSNFSqIHb8t/
	R/xEwnYSNM8c2lPPRYttvVZXoTYEwKxe1+r4aT5qOJXVkeI+O1BxEUB7Th03hux1y1912a
	kGvnczdQZ+kGPCWu9SCeki4tbRGsPFxooJa3eo2bB+exBUwdikoVrozsguKdoM3AfpIDc8
	YSNOq6fI0KVXSI5l7y7nmO0FPu6cS/S3m7bUiknXe007DhhvyJKrRjgGDuErOKsOt7l6Gw
	tXzhNSYCkqLGbqRt0PJISpQpnI9WH1yWZGSpcUoeYyb6TAjgfengklemVJ2MsA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=awPMjRNSBf/wUdh7sHxJKdRKhbyuzmMdUKKSnTugs/s=; b=YwY56RVhpNHHmh
	Azloz3BR2teGGmq8Ta23HdW2Benuz4amPZGNRr4unY4jj9xShbY6+7plRGucyu1FyBfmNrbScKWmC
	sTho7JO9A3oMT0NUHSLJdldGia644DmlBzln6K1yY6ojDLSSSsG3OzFBkPV16MsfFXbV1tBZzErJL
	8h4mCayMrl8SSe/50kZY3bOfm82lRYjuOuU8P2IXpStLLBDbOHsf+F34K6CBdBKLEVsK7rVCCT5Xu
	ZQNF4EraMfBi3tB1X3tQEkp0evQS5kQJoN3yL2XdGzCAiNG3jULl6bfFMe7Gp4xTmeRN4dZFsN9JE
	iwc2hqPzyQkJs68BcP0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh9p-00000004q2y-44an;
	Tue, 27 Oct 2026 13:24:05 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLh9n-00000004pzj-25Fx
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 13:24:05 +0000
Received: from ratatoskr.trumtrar.info (unknown [IPv6:2a00:1f:f805:2b01:a03:2f4:308a:7b52])
	(Authenticated sender: str@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9BAE620293A;
	Tue, 27 Oct 2026 14:23:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793107439;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=awPMjRNSBf/wUdh7sHxJKdRKhbyuzmMdUKKSnTugs/s=;
	b=Bwmzq17ttrESz4edIFir/GMRjMdtCV7n5vHuYfgaqTlXa/8B9I1k3ASt8cVDwDh1Dt97rD
	39Z7V9FyzG4JfwgHzpmF5brB3kUdO4JQ4ukAVpzGFNnfxuKYi21+3kyj1MXylSB2v+RY+E
	N7q7MbkU+8KyfQLEdQiCq98cRKm3CNFnfSGwTwBdibh2ehrtjupNfz3NFDDGzAH1hodRTP
	GpUOn7aTfZwnAD+Od7KDhUL91uGoN116mSou69SExOJE4djz17R67yQmfHa+iIxKG2xJLu
	I9zXsGlAOOERSwGaeQjL+mUYZx8m4FeWHebkF73PoxJB1neGTwrCs//8wQ+Dqg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793107439; a=rsa-sha256;
	cv=none;
	b=YCXWeIgPBWkkFrMzbYMnjDtg1QweGlFTzxd4rgBaCpwfXWYFcz9OLYhoRFBnR7FnAuo8D9
	ATi5s9c1tZjbJCLkaZMLCkMpp8lrmc1Ejs92e3GInTqhYfhZA+69Qwka05BrkUHMgVc0Bp
	6lNB1njWN6/GcfBPKclgJdJpQkreD1WFnnlGGQecuLmFs+d6z8W+MOY341usxgxrqIMWeH
	X06GSMMsnazujIhUJW7jS8PtDH5Yey6AfP/JGBMZUlDDjP0ROL7T419yVRHs1LMBjyzF01
	+dGb3SLXDtLGTk6kKE9AlTLpwLtu4ZZaMu/f5neq4kiqR3TPmOB6t1sumrhBqg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=str@pengutronix.de smtp.mailfrom=s.trumtrar@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793107439;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=awPMjRNSBf/wUdh7sHxJKdRKhbyuzmMdUKKSnTugs/s=;
	b=QeCMu85+lHbgAls7LixoyWFQy8NiNH9mJCSrP3gxt16Coj5NSivvMeYHvb/nMG9bFHg4RE
	OpWJ2y3kzPdj0DK8i7hEbwMDBKvZycnA+lrafUECo2/Njd7tQz6/k5lXHuoraMNPopamQ9
	ozGdFdEG3dxiqV/4QUjlLjF7NxGJ7cqiMktrduQCciBLEj2KRU/Sy9v+SI0fe0EubTwRPt
	Ecby39455Hvf8wKRrLkOhixu7C3WjUa1YWKkM8zImD4gZzE/pQ22jUNdwsdvYADeT1aWj0
	40NvwK8ubFABl6GtCgpziRX+fHYZ8lZCfc7Kl0EbwEF5c95tKqCrUYmwOsw2Lw==
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 27 Oct 2026 14:23:55 +0100
Subject: [PATCH 3/4] boot: add bootm.bootconfig override
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261027-v2026-10-0-topic-bootconfig-v1-3-2758d3d9a165@pengutronix.de>
References: <20261027-v2026-10-0-topic-bootconfig-v1-0-2758d3d9a165@pengutronix.de>
In-Reply-To: <20261027-v2026-10-0-topic-bootconfig-v1-0-2758d3d9a165@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5898;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=xzp9zFBEZeGn4ZZrGwoK8y6ByhdqbiDTPdz+5BGsjvA=;
 b=owGbwMvMwCUmtVehiCsuTInxtFoSQ9aDpe+4eVanvKv+rvz78OH5H+zUN7dlNuj2/Zi/Una/1
 j314nCNjlIWBjEuBlkxRRaVhRV8oh4fPCOniXDBzGFlAhnCwMUpABPZ9pSRoe/0lRlC3zYtfxA4
 d0mzTFToVdaGEKv2q1c7nos8vSjxMpSRYWvTCeGLMpLqP47VLmbYklCoXhH136RHcNbzBYbTosQ
 CGAE=
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=24A1780E1548F0495996140A1ABD20720A5E5622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_062403_717281_CED1352F 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  boot -o bootm.bootconfig=FILE replaces the bootconfig a boot
    entry would get from global.bootm.bootconfig, an empty value removes it.
   Together with the other overrides this changes kernel parameters, [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: BB6CE20294F
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.trumtrar@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 5kpppnpkim5kn8uzu6sx1kigr5pygpj3

boot -o bootm.bootconfig=FILE replaces the bootconfig a boot entry would
get from global.bootm.bootconfig, an empty value removes it. Together
with the other overrides this changes kernel parameters, init options or
tracing for one boot of an existing entry.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Documentation/user/devboot.rst | 17 +++++++++++++++++
 commands/boot.c                |  5 ++++-
 common/bootm-overrides.c       | 23 +++++++++++++++++++++--
 include/bootm-overrides.h      |  3 +++
 include/bootm.h                |  1 +
 5 files changed, 46 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.rst
index e319636994..fce8398b22 100644
--- a/Documentation/user/devboot.rst
+++ b/Documentation/user/devboot.rst
@@ -105,6 +105,23 @@ Override rules
 
        mount -n --bind /lib/modules ${ROOT_MOUNT}/lib/modules
 
+``bootm.bootconfig``
+  A Linux bootconfig file (``CONFIG_BOOTM_BOOTCONFIG``), appended to the
+  initrd after all initrds, or passed alone as the initrd if there is
+  none, see :ref:`global.bootm.bootconfig
+  <magicvar_global_bootm_bootconfig>`. It replaces the bootconfig the boot
+  entry would get from the variable; an empty string removes it. This
+  configures the kernel and init without touching the boot entry's
+  command line or the root filesystem, e.g. tracing for one boot:
+
+  .. code-block:: sh
+
+    # /mnt/tftp/trace.bconf
+    ftrace.event.sched.sched_switch.enable
+    kernel.trace_buf_size = 4M
+
+    boot -o bootm.bootconfig=/mnt/tftp/trace.bconf mmc
+
 .. note::
 
    When secure boot is enforced (``bootm_signed_images_are_forced()``),
diff --git a/commands/boot.c b/commands/boot.c
index cc7a64bcca..bd09b90901 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -49,6 +49,9 @@ static int boot_add_override(struct bootm_overrides *overrides, char *var)
 		overrides->oftree_file = val;
 	} else if (!strcmp(var, "bootm.initrd")) {
 		overrides->initrd_file = val;
+	} else if (IS_ENABLED(CONFIG_BOOTM_BOOTCONFIG) &&
+		   !strcmp(var, "bootm.bootconfig")) {
+		overrides->bootconfig_file = val;
 	} else {
 		return -EINVAL;
 	}
@@ -241,7 +244,7 @@ BAREBOX_CMD_HELP_OPT ("-m","Show a menu with boot options")
 BAREBOX_CMD_HELP_OPT ("-M DEFAULT","Show a menu with boot options with entry DEFAULT preselected")
 BAREBOX_CMD_HELP_OPT ("-w SECS","Start watchdog with timeout SECS before booting")
 #ifdef CONFIG_BOOT_OVERRIDE
-BAREBOX_CMD_HELP_OPT ("-o VAR[=VAL]","override VAR (bootm.{oftree,initrd}) with VAL")
+BAREBOX_CMD_HELP_OPT ("-o VAR[=VAL]","override VAR (bootm.{oftree,initrd,bootconfig}) with VAL")
 BAREBOX_CMD_HELP_OPT ("            ","if VAL is not specified, the value of VAR is taken")
 #endif
 BAREBOX_CMD_HELP_OPT ("-t SECS","specify timeout in SECS")
diff --git a/common/bootm-overrides.c b/common/bootm-overrides.c
index 720d5636f3..f02a037b13 100644
--- a/common/bootm-overrides.c
+++ b/common/bootm-overrides.c
@@ -3,6 +3,7 @@
 #include <bootm.h>
 #include <bootm-overrides.h>
 #include <bootm-fit.h>
+#include <bootconfig.h>
 #include <init.h>
 #include <libfile.h>
 #include <of.h>
@@ -107,6 +108,8 @@ static void report_active_overrides(const struct image_data *data)
 		report_active_override("initrd", data->initrd);
 	if (data->is_override.oftree)
 		report_active_override("FDT", data->oftree);
+	if (data->is_override.bootconfig)
+		report_active_override("bootconfig", data->bootconfig);
 }
 
 /**
@@ -114,8 +117,9 @@ static void report_active_overrides(const struct image_data *data)
  * @data: image data context
  * @overrides: overrides to apply
  *
- * Applies bootm.image, bootm.initrd, and bootm.oftree overrides by translating
- * them into file-based loadables or FIT image replacements.
+ * Applies bootm.image, bootm.initrd, bootm.oftree and bootm.bootconfig
+ * overrides by translating them into file-based loadables or FIT image
+ * replacements.
  *
  * Context: Called during boot preparation
  * Return: 0 on success, negative error code otherwise
@@ -143,6 +147,21 @@ int bootm_apply_overrides(struct image_data *data,
 		data->is_override.initrd = true;
 	}
 
+	if (IS_ENABLED(CONFIG_BOOTM_BOOTCONFIG) && overrides->bootconfig_file) {
+		/* an empty bootconfig_file removes the bootconfig */
+		loadable_release(&data->bootconfig);
+		if (nonempty(overrides->bootconfig_file)) {
+			data->bootconfig = bootconfig_loadable(overrides->bootconfig_file);
+			if (IS_ERR(data->bootconfig)) {
+				ret = PTR_ERR(data->bootconfig);
+
+				data->bootconfig = NULL;
+				return ret;
+			}
+		}
+		data->is_override.bootconfig = true;
+	}
+
 	if (overrides->oftree_file) {
 		int ret = loadables_from_files(&data->oftree,
 					       overrides->oftree_file, ":",
diff --git a/include/bootm-overrides.h b/include/bootm-overrides.h
index 0dbf6e7fa8..fde543a8e4 100644
--- a/include/bootm-overrides.h
+++ b/include/bootm-overrides.h
@@ -6,6 +6,7 @@ struct bootm_overrides {
 	const char *os_file;
 	const char *oftree_file;
 	const char *initrd_file;
+	const char *bootconfig_file;
 };
 
 struct image_data;
@@ -21,6 +22,8 @@ static inline void bootm_merge_overrides(struct bootm_overrides *dst,
 		dst->oftree_file = src->oftree_file;
 	if (src->initrd_file)
 		dst->initrd_file = src->initrd_file;
+	if (src->bootconfig_file)
+		dst->bootconfig_file = src->bootconfig_file;
 }
 
 int bootm_apply_overrides(struct image_data *data,
diff --git a/include/bootm.h b/include/bootm.h
index 134b01d453..9038ba7300 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -148,6 +148,7 @@ struct image_data {
 		u8 os:1;
 		u8 initrd:1;
 		u8 oftree:1;
+		u8 bootconfig:1;
 	} is_override;
 	enum bootm_efi_mode efi_boot;
 };

-- 
2.56.0



