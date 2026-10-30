Delivery-date: Fri, 30 Oct 2026 12:16:47 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMkbH-0057ql-1U
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 12:16:47 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1B26A2020BA
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 12:16:47 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="h/0Pm+RN";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Zx2tmwXl;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793359007;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=l9mte/aL0h4yO6GlD+uOAdkLpWBaR9MglxcLEqKFj88=;
	b=TYhOYyL28AwGgPjXwLIBIoqm02kvb+PQTYTPyaav6Daa0kytDQwZTupb26gJSyHg+DbiHg
	zOGkl4ba5wmCHlXE7Pw8lIiJaYIGyWtA1nQFVBHrZYoCy1a+1u4FaXvrrrPwPo40XjxSZf
	TBELa2GZ9zPV89U6p8LIaEAJKsA2svdHskOPBbO3Ceoyt8pqw9eParAqWdSsL8/Dpjpw4u
	Dzmu9xgGOeYMsuDa0G/4dGS5RTG2GYxrb8TS92pZiadC3k1XsGp7zp1+rWEWe3Qfo9Eynx
	YkqRrS8wDRHG/lBbdbJHdzOcHGAvF1uPOo/U6U1r4cEyrxCMr24yCI/ddgtegw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="h/0Pm+RN";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Zx2tmwXl;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793359007; a=rsa-sha256;
	cv=fail;
	b=Lxjpd1DwPPrMSzNjOJGliNAHNvMmfB12kujXrOBhtRB1Vc37TgHEwuEnP1ZqFV+zAeAnfM
	PDskOFstfY8eLFog+tI7EKiIOjFZdqmp6AxuKplIbh02owVJQR0Hov/7tGkk5a+w7c6yVh
	Nci1VM3o+nvixYYfRWt2mmQes2XK91uUfxzPR3sV+9Gz9OdJkmR/qwj85L6sKrPLN5J6Ld
	XuqA+NJKXlTJihWMWWH6r/RYQ7+aXrWzisso/nMRGff/XKtOn9wmGUp1qWkbstH+BAgp3t
	GUVFTNu6/ueKoc/68hssubPmTA9vKqs9O4YaKeFIjM1632qE22X5NlWjU4FNJw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=l9mte/aL0h4yO6GlD+uOAdkLpWBaR9MglxcLEqKFj88=; b=h/0Pm+RNjqv+MD
	coP/9oRc7ciJyFRDPdAPle1sr/uhmbO5tKM1FS6g5kBrY30RAYEUneEd275tNvyFEC5cEIWcgbKxt
	4llk8x9vyFE+EefA+irj8hS23M3PW8LVBqvy3uW0N7M9IJkoPcgkXevt0mfz2imx3j4uodSHROpPh
	a5/P59Gk6yKr1r4U88Tpuo8137XPhkzPanm4FSSZj/F/HGDU8y5bYQJ95hn960XTWmbsTbpY6phxz
	IwKzx/AyLGHmhnOHt7GlNRCvom3qEAckFfOdjR/8qoFPdIIJTutWNhBAOHwkyNUKZr+1PBizqoYiK
	Prdrraw9mP8bKXSSiGGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFO-0000000BSrj-38r7;
	Fri, 30 Oct 2026 10:54:10 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFK-0000000BSmr-3nFj
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 10:54:09 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E86F520296C;
	Fri, 30 Oct 2026 11:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=l9mte/aL0h4yO6GlD+uOAdkLpWBaR9MglxcLEqKFj88=;
	b=Zx2tmwXlMQUkLqJKpTNJtoyvSgtKlAH6GlCx+kUS9DkI0MQfVoPFgwaf5Bt1+9a98+zS8g
	xiueaDzswSA1K5viFHOIVhA5M7WUa5AFyut0HcAuckir/Vz/Y8XtsgYWSqDNhbUTMSVLqL
	wX1ycKAPgv+EEFe7m51MFkqYnBthJqiK+Ub1iPT4LUNzjMUkPoQgULEoqD683Owt4hbJym
	QPIydDiPs+ew5OqO/ZoRT33AW15aik+U2XwxCaarczTDvkwSN0QEAwzEDbom3125JEL3os
	Y3x5jHwI4Q/DyaNZM3oJaIQEO0ORT/w4y5iY7x9EVOXLkpEjpxL4qpMzL7p67Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=l9mte/aL0h4yO6GlD+uOAdkLpWBaR9MglxcLEqKFj88=;
	b=TxABHGy25j1Nz5wE6Bh+rJkLF6U7MbpnNL6NH+7wf1CL1J9kNGAgkzWoX3dOOFI8k9iLjf
	gf2ogLTYd9OaKXyNFfl+sYzgUMKKvmTr8+b0p1aOMI4EovdNZ+lhrY/19i+ghgs/zlgI4s
	e+G5hlbvH+4P7EmVL8NjftqE+ELNvZv1yweMAD0oeC2JWHhETc06NIjeWpv+FqLDE9UzwK
	8LI5rYqN4BRIlX5sJJP4xqU2oCORRvexrWZXfFVvC+yftn8Pz+DxFIeIr6Ql7IRtm2zmjP
	G2r9s8vnoXyTLPXuPxj9kMwErUAIdwBXaHRFmqtjyAToujRuxx8Mfk/4QElYSQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793357640; a=rsa-sha256;
	cv=none;
	b=XiI0/4SoyApOQx0ft0kDAIuKkjpFu2a3wd6iIMM234rAQvmetiN42M5NbAF6LGq1q1/NEQ
	SguyIxyvpBTp7JhqkX/IgifdKSMfJ/JX1S7wOH79MpjzG8k8OxMenY7wnaiZb1Sz5sqW1y
	p2b9QFg/Eyp3MLsbTR2zIGRrsrEyzvfChkeAiS2T9VIE9D6krxtcH7ZvhL1zFpaHtW3rDg
	9dWfjs+IMA09VFsfjel6NdDvzeiau/QGtLji4DnmBA5gBSoVwoevGB40itXutCZL6f8EOf
	wwRSZUPVs0OH2bGOu/Dg02NcI6ftJA/7TWOG27Ji5cAY0SpYT6YL99DcVHTAJQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 11:54:05 +0100
Subject: [PATCH 07/10] of: add watchdog bootarg directly instead of via a
 globalvar
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-boot-globalvar-stack-v1-7-a03803e1100c@pengutronix.de>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793357640; l=5107;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=RN19Mob6QyWAABlicnIwjYRTM5X9zfwNEMWOGK4p3RM=;
 b=Fj5ZtyPBKU0e3Tu7CmzWLGx2wc9r96Ba9yonIUNUhiHed0bPLAGly0NIluQJBfbUNe9oHD2Hn
 vJkajqbijWdDXq8dS2+ZG62xncSp/0D1JevofZ40UJQVsyLs9VIrBts
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_035407_247939_467C36B9 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  With CONFIG_SYSTEMD_OF_WATCHDOG, the device tree bootargs
   fixup puts systemd.watchdog_device= into global.linux.bootargs.dyn.watchdog
    only to read it back right away via linux_bootargs_get(). This has [...] 
 
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
X-Stat-Signature: siiaxwpqgx9mnodio9fqj4q961ra8jc9
X-Rspamd-Queue-Id: 1B26A2020BA

With CONFIG_SYSTEMD_OF_WATCHDOG, the device tree bootargs fixup puts
systemd.watchdog_device= into global.linux.bootargs.dyn.watchdog only to
read it back right away via linux_bootargs_get(). This has side effects
beyond the fixup:

 - The variable is created whenever the fixup runs, so also for of_dump
   -F, oftree -s or of_diff after a boot attempt has enabled the
   watchdog, and stays around afterwards.
 - Its mere existence makes linux_bootargs_get() ignore the legacy
   bootargs environment variable, which is only used when no
   global.linux.bootargs.* variables exist.

Return the option from watchdog_build_bootargs() and append it to the
bootargs in of_write_bootargs() instead. Note this moves the option to
the end of the command line, while it was previously sorted among the
global.linux.bootargs.* variables.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/booting-linux.rst |  2 ++
 common/Kconfig                       |  6 +++---
 common/oftree.c                      | 41 ++++++++++++++++++++----------------
 3 files changed, 28 insertions(+), 21 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 0fbdc52c68..158aa8b313 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -124,6 +124,8 @@ interleaved with externally provided command-line arguments:
   * ``systemd.machine_id=`` controlled by :ref:`global.bootm.provide_machine_id <magicvar_global_bootm_provide_machine_id>`
   * ``systemd.hostname=`` controlled by :ref:`global.bootm.provide_hostname <magicvar_global_bootm_provide_hostname>`
   * ``barebox.security.policy=`` controlled by :ref:`global.bootm.provide_policy <magicvar_global_bootm_provide_policy>`
+  * ``systemd.watchdog_device=`` controlled by ``CONFIG_SYSTEMD_OF_WATCHDOG``,
+    only when booting with a device tree
 
 Creating root= options for the Kernel
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
diff --git a/common/Kconfig b/common/Kconfig
index 9adecfd2e4..da4cc8a5c9 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1443,9 +1443,9 @@ config SYSTEMD_OF_WATCHDOG
 	bool "inform devicetree-enabled kernel of used watchdog"
 	depends on WATCHDOG && OFTREE && FLEXIBLE_BOOTARGS
 	help
-	  Sets the linux.bootargs.dyn.watchdog global variable with a value of
-	  systemd.watchdog_device=/dev/WDOG if barebox succeeded in enabling
-	  the watchdog WDOG prior to boot. WDOG is the alias of the watchdog
+	  Appends systemd.watchdog_device=/dev/WDOG to the Kernel command line
+	  in the device tree if barebox succeeded in enabling the watchdog
+	  WDOG prior to boot. WDOG is the alias of the watchdog
 	  in the kernel device tree. If the kernel is booted without a device
 	  tree or with one that lacks aliases, nothing is added.
 
diff --git a/common/oftree.c b/common/oftree.c
index 7aaed70e40..5f9b2e50cb 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -160,22 +160,18 @@ static int of_fixup_bootargs_reset_source(struct device_node *root,
 	return of_property_write_string(chosen, "reset-source-device", np->full_name);
 }
 
-static void watchdog_build_bootargs(struct watchdog *watchdog, struct device_node *root)
+static char *watchdog_build_bootargs(struct watchdog *watchdog, struct device_node *root)
 {
 	int alias_id;
-	char *buf;
 
 	if (!watchdog)
-		return;
+		return NULL;
 
 	alias_id = watchdog_get_alias_id_from(watchdog, root);
 	if (alias_id < 0)
-		return;
-
-	buf = xasprintf("systemd.watchdog_device=/dev/watchdog%d", alias_id);
+		return NULL;
 
-	globalvar_add_simple("linux.bootargs.dyn.watchdog", buf);
-	free(buf);
+	return xasprintf("systemd.watchdog_device=/dev/watchdog%d", alias_id);
 }
 
 static int bootargs_append = 0;
@@ -183,31 +179,40 @@ BAREBOX_MAGICVAR(global.linux.bootargs_append, "append to original oftree bootar
 
 static int of_write_bootargs(struct device_node *node)
 {
-	const char *str;
+	const char *str, *oldstr;
+	char *watchdog = NULL;
 	char *buf = NULL;
 	int ret;
 
 	if (IS_ENABLED(CONFIG_SYSTEMD_OF_WATCHDOG))
-		watchdog_build_bootargs(boot_get_enabled_watchdog(), of_get_parent(node));
+		watchdog = watchdog_build_bootargs(boot_get_enabled_watchdog(),
+						   of_get_parent(node));
 
-	str = linux_bootargs_get();
-	if (!str)
-		return 0;
+	str = skip_spaces(linux_bootargs_get() ?: "");
+
+	if (watchdog) {
+		if (*str)
+			str = buf = xasprintf("%s %s", str, watchdog);
+		else
+			str = watchdog;
+	}
 
-	str = skip_spaces(str);
 	if (strlen(str) == 0)
 		return 0;
 
 	if (bootargs_append) {
-		const char *oldstr;
-
 		ret = of_property_read_string(node, "bootargs", &oldstr);
-		if (!ret)
-			str = buf = xasprintf("%s %s", oldstr, str);
+		if (!ret) {
+			char *tmp = xasprintf("%s %s", oldstr, str);
+
+			free(buf);
+			str = buf = tmp;
+		}
 	}
 
 	ret = of_property_write_string(node, "bootargs", str);
 	free(buf);
+	free(watchdog);
 	return ret;
 }
 

-- 
2.47.3



