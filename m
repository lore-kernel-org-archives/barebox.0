Delivery-date: Fri, 13 Nov 2026 08:27:19 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRlgs-00AL3Q-2F
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 08:27:19 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8224F201544
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 08:27:18 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=pRbyE4L2;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LBkmugy9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554838;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=PYP/L6s9a9Aib6+9RBhmkivfXac9rMScK3zTRjH6C5o=;
	b=KqmqIFv/VgtRyllt9Gn6ybhSTTYn2WoxckEFO+HE77RBI46+Qg1yB9M8hm/0Oo34Tg6b/r
	xaShDSvoqG4O5yzMycclcmkyixqYno6nsf1t+0pV0iMHih0AOQGyfcReiiVVVDtci2rIfg
	EiIfp+MT/S03XC5W772JNCdrK2T2xXjwjMXzYRFXgzuAHBTTIMyyyAaDPhfcNIpnaHC/5y
	aKol9VfNvGqFxV6ZR427tFJzFe9fx4DcKnJGoAHAC4zlhIRoGVfuEEdGZrMyg+T2s5jFaj
	wtO52cNNOieTDpjmnOetIGhKijtsROTPYPr9S7lXr3TIhX0oy2Icm0C7G7F41Q==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794554838; a=rsa-sha256;
	cv=pass;
	b=fvfRBbo6wrHj6B8ujYES/4FR7GCTtZCHNR+/MSaRRUfNByz0l+GBzUcrmPwxActfgg/mCL
	mvPD7X3vLTMP9yzIP1fskOPzTgjrktT8qTwSyHoyAgehg3bCs68RLhVvgbQdW+DkZFrr++
	nCHO1rQBTZEBdqr7yJNkupZMTZTHReg2COYlRYzJ7tkHLihAZ6cBD6gODT85xAss7CzwkK
	fFjXvdRy1XyymcM8uQyooQwhe5FTAeQO8YRbkR/Pg8bCm53XE5XOYs1iDufcbaaZmtweBj
	PkCEMK3tu2O2KrpCThpQrAwIvbXYIlCEmOiOykIdP8ZddsrI9EKnx7Nj/QbDpA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=pRbyE4L2;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LBkmugy9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=PYP/L6s9a9Aib6+9RBhmkivfXac9rMScK3zTRjH6C5o=; b=pRbyE4L294bRzf
	DPQtwaHexzq91wRBhPkrziszq3+c5wwfcOQOnsB0InR4Nb3JnfydGCLWc5w7dTTd4C9u2aucPJzB2
	rcpENiXcZibeIbJFQAbb9zlbmUbdCBdb/OXHRTdc3f+9rWFiujRImcwkyWuPCK9S31l0YEINwZEUR
	ebpbM09/sVE/lrBMj0DIpHluFuhAkA50H/IkQKUajgXLnWXb/zu1hFFQ+OnKKJgtIpMgaJ16ihFtC
	cR7l2iIQ9wyJl5zr9NOaZ9rb2+BAAb5sbBRcbJFhjcCu5OrS1SnCcgdBzT3zZ7quPaeYEYKOVNg8T
	DyepBtm5C8hrQ0xoqtYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlal-0000000BtA7-2FKV;
	Fri, 13 Nov 2026 07:20:59 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlaZ-0000000Bt1w-1b37
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 07:20:51 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D959B205848;
	Fri, 13 Nov 2026 08:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PYP/L6s9a9Aib6+9RBhmkivfXac9rMScK3zTRjH6C5o=;
	b=LBkmugy91McG/D8Vr+Fxk39v7qcc2iIMgVV6Y/TD0HSA04u1cKSfGOukrqVynphYtDWuVu
	CS/K3LzW1S584tMq1WY0ZopAGLED5AI9uBb5cY4YmdNwFs2HGbfd7R/7q9hR1YawDFbe+x
	LrSjeTmyzsvZ/zL5JO+GPvuiXkzuUcdqvK+17UbJWYMtIxXeXDLUc2Pu5OGHMfKH51vQvZ
	thPwAgmIVo8oEt6/YQhMjpwyNcb9intp23Pb3hGXqXvGm3ILSxhxSlWnPq0YjvE+D92Q3l
	2ZKcGsdLnQ9VSTQUpPqDsWwDgORIGhaGCf4n7atnZy7CUhCh36Gqayfar10iew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PYP/L6s9a9Aib6+9RBhmkivfXac9rMScK3zTRjH6C5o=;
	b=gvZDdNjaZNLIeneDTig3ybsXERbziHPsCXfcEawrBoBCgolrPBwOtwG4Hn+zqZ3hv50eaw
	YQ6v4CWrzEZcDkUdNficYyUGi/TfoVzD5I/Dergq6QbG1Vl0TgDsPxRRWoIOCBc3RjWM09
	ljmhUHCZ7fmYKjG5w7UzEKXGpSxGivBddNyfP+BkaOlorUiyxBRuZRwLhscIWPfcQZAHu1
	V6wzg+SPV0dhfn397y6kvN7BifYEDdjmAIhbF82PBbhYITcU2zdOCiZtJ57X41OcrD6Rmd
	Oazba+vsQumDEFprxcjcRlNRyNe1A24f0h046k4ZR5McFLpdRtkBsMm4KerOkw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794554441; a=rsa-sha256;
	cv=none;
	b=KnNY11iCiUolif1qA/56zIgJykKsqCAGszhOGx75PAzZZs8E9gLREZ8jDXVFWsB4o9+QdG
	Z3GEdHcQMufTFzWBK3UlJzpeVnJLjyhcfjFQ/U1xB3LxO/TrbPaVbe4nCdBZQx5MhsymG2
	Rku7AeKXuZE3jIGrxpimaLe9+uzkx1dbvDV6RZus+IMHCNhEWuCe6DdaEvsLe8EK1mKL07
	O5YFSVNz3fm5wRbn89e851Wg2gNm2AAXYHYtzQ99YaHy6YwQ6WOy6V9Ux0S70CB5bKy3A5
	IJTJdraRUCVM62Z9pq2ymG225pzLoacVfuLDBI7QYuW7TkHbZX6uHld0qHo3Og==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2026 08:20:42 +0100
Subject: [PATCH v2 7/9] of: add watchdog bootarg directly instead of via a
 globalvar
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261113-boot-globalvar-stack-v2-7-14c0f0a0986e@pengutronix.de>
References: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
In-Reply-To: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794554441; l=4914;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=WmBX2w6Kcx2SqCkLYZhj2j9JHa/s4kAQEcGLo3DH1fY=;
 b=pqXL+Pr8VZatUDjejBoNyfEsUYVz8S28+jIa5rd0wooD6NA26bmhvckl9nlxvHxP/alfyIS1m
 WxHbO0OcyrkD7fvOx5wfd3vTva/Rw8cfzSX9hYA6IY1bT+f5cz1ihJu
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_232047_653772_B8EF7437 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  With CONFIG_SYSTEMD_OF_WATCHDOG, the device tree bootargs
   fixup puts systemd.watchdog_device= into global.linux.bootargs.dyn.watchdog
    only to read it back right away via linux_bootargs_get(). As a sid [...] 
 
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
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
X-Rspamd-Queue-Id: 8224F201544
X-Stat-Signature: sbfhg8ded8h4akb6xaoqcjksnidjwdua
X-Rspamd-Action: no action

With CONFIG_SYSTEMD_OF_WATCHDOG, the device tree bootargs fixup puts
systemd.watchdog_device= into global.linux.bootargs.dyn.watchdog only to
read it back right away via linux_bootargs_get(). As a side effect, the
variable is created whenever the fixup runs, so also for of_dump -F,
oftree -s or of_diff after a boot attempt has enabled the watchdog, and
stays around afterwards.

Return the option from watchdog_build_bootargs() and append it to the
bootargs in of_write_bootargs() instead. Note this moves the option to
the end of the command line, while it was previously sorted among the
global.linux.bootargs.* variables.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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



