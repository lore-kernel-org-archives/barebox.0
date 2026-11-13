Delivery-date: Fri, 13 Nov 2026 11:01:33 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRo68-00ANgf-24
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 11:01:33 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AAD5B200668
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 11:01:31 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=cyc3iLLZ;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=R9jL7j7m;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794564092;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ecC+pgELa0HLDSeAJCBbsLLHnb/HHUGjelkyWnf6YPs=;
	b=L3UZs1QH/bmxl4gWlHv3k7U40v6k1y44AQB1N36v8gC5r0wyoObV067RD6gvJK3+FacXuO
	tqD9MaSxz/1JflPm6fWZX9EFNu5zlEYZOeGN4mnZINfdVLyBjo7MSWN5bufjkG+IZ79IOo
	QGoxkyXeMdE+39gB/sv0Pk7SCgV1+fa7YlYLq/Hfj+N666yAiV6vA9hK6MObYDDgwQqehS
	2dtrotAh4YIxtOaC7ioO2evXyFWm1N89yFgFo85Q2e32LCrSOl5vzOZCySWIz7MnbFoSmv
	9kM8RHTzJO2TPh4XlbqvcIDTUekYWpYh648c4lUTCYo09gIG3OTeTcRokaFczw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794564092; a=rsa-sha256;
	cv=fail;
	b=a7ENAkgGxeM8C3stKF6azE0O4muzPext0HJCi32xCb0yY4XFA7T7tLvY3p12/1enIKxLYz
	wZcf6rcG8MX9nPnGQTXKZ3ToThLRf1PhRYj0BTKswP+f+Z6WP6qZvqmEtCfBf3DdfYvbm1
	cwNkVt7bx6md0UHkW+zWK2OQG9VfSsm4X/pn1HxONRA97HTiFts3UJpH17XU5VOH3E/G2F
	e2ZzRYGEQFvEqE5mgPSQ4Y4ppmQt+UsMIX/Kfg6I2v1mf3Pz49KsyG/nW1Jwa4ePPm7O0Y
	NPQxMENSO2WL09w9DMyzKU1AfvnlKU6QhIWJ2iPoSy+APXqux+j1KoAkp517ig==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=cyc3iLLZ;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=R9jL7j7m;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ecC+pgELa0HLDSeAJCBbsLLHnb/HHUGjelkyWnf6YPs=; b=cyc3iLLZo+JwwLnFCX0+LXKUa7
	SR+B4+dOWDjIHJ+YO6UIbQfa8ItasqhPMie2npDSZyxKwNBt9WzVKFf/w1WHC7ilO5WJsK9SK2yPV
	yh/6/UblFtD4C8alWU3CvZQbit7I1nWRP41ZJpWFupFAfQ9MvB6DzvjCBe3wKdC8ZVbX3CByrc9yL
	Y+f8KshIuO/bvj5pheuXP64vXByEnuT+PMXCcp8KCQk76jifzWpEGpPJdHWGUVjBer9YkaU7mGrXE
	HicEUy7INqovIThXu6/qlDDPeQoqPKoN0FEecm7zpoJ5rxoRoBm32ohcpoiTt/WOI0+J/pnTrUEBb
	1gbXwHqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo3F-0000000CHQJ-3P5v;
	Fri, 13 Nov 2026 09:58:34 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRo3C-0000000CHNz-2o3E
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 09:58:32 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D5B75202C91;
	Fri, 13 Nov 2026 10:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563908;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ecC+pgELa0HLDSeAJCBbsLLHnb/HHUGjelkyWnf6YPs=;
	b=R9jL7j7mCzrynTiLXbyO4W6jCRpC4XrCMMB8PoQp0TBLyOjcfI7fszLq5bae0YOWUeRkah
	ES1ei4oc1PaWvIAnT3QTqyYHzUG8hC4slevWd0VIQM7VZzZm4/HzojUbOKroiZjYckjltv
	uXrTYiglHdLMR0zdosoBO0bJ9V+ZYwmjsdrL67JkRU3/gymbIKncS82w+EGT90VIUK4yLz
	syo8HkiAb800QGUAHJLpLw+BfLJI9ZiAAoT8VXAUZ0ooUW9Mzbv0z8wduk/XCsVGnHPs3G
	ApMYDcSpl+UONAynL9oCtGaehl02/TiyBHpOtdMt2AtZsyvDnpZJlJ2sLB21FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563908;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ecC+pgELa0HLDSeAJCBbsLLHnb/HHUGjelkyWnf6YPs=;
	b=VYhSH4tnCauCMz7YQIE3Tod6WBLsANzXtv6C+T4WMgWcQlxdSTuon7rs1cec/OBcsW9AWG
	V762xOmHVRjqK2D0c/l4STYHFx0sFufTl6kDvsVbE5+V2fM16mTWnhy3OAp0e5UG0kR5/i
	kXAQ6EdEstnMKBJyYnTn0Eg4V3pDjQXVrA3KVXiREd6PqMNNwHhnC/ySOqHzyurFDZwYl0
	ldvQ/OnkWA9ot2RtiaiJuG0sWgRcgxPvQEMTviIAmXMvhB7zG+yjINoe2PmC6+UMmjnd7y
	foe4VViQdgrKjAZfzXKQ0QVKaVu/qqIXhitFlsMLh6JpsHfeMAWAnSHdJUGvEQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794563908; a=rsa-sha256;
	cv=none;
	b=WGIIokY0Yn7VI9FeVO50ad3zM0Zw4Ovc5NyzsxjPL89PYWO2Jq3p/N7UQUAchfGLOhZGJY
	YLG/wndLC4B3MX5YZEwhuaxmXAUDV6uSzwz/JUwPUEfiUi12k88ThnvBohw+iJir5+ybyt
	2ks2PTp1NHnj2cOt3YyTFtMVTEqygFBIIZrxOBfmL/fzDBxpUhORDgI8Cx1iilcDq3Sbuf
	J1Ujp3ed6eJ1DdBpkh/fUBLQP5kIMAw3J1iEJKE/kBbGqetu+H+dseKLOgKhUwYE3V5ZwF
	L8RGnllgzE17DiAK3ax8ldz7JyV56CkfDdMVfTluJs6+aw46/FO+VvuWdLs0eQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2026 10:58:25 +0100
Subject: [PATCH v2 2/6] hush: export source_script()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261113-devboot-v2-2-f6853990006d@pengutronix.de>
References: <20261113-devboot-v2-0-f6853990006d@pengutronix.de>
In-Reply-To: <20261113-devboot-v2-0-f6853990006d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794563908; l=2700;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=uJCGXKwDHPd49jNh/is47nwpVH/DomwxyJUPHImcIpY=;
 b=DCP+XTRlmqQwPTZcc2EODYF/BiWjnQBoar2EC8iETkvjRQ6hLjSW8yfOOxjZHZj6z07hKIghi
 dZ7GCukkh6fCVmudxTLsbKBrxYvIAYpaeLYqGnx+8df3yhj/clbKBWI
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_015830_863828_60D32616 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  C code that wants to source a shell script has to go through
    run_command("source ..."), which parses the command line and looks the script
    up in the PATH. Export source_script() instead. As the simple parser can't
    source scripts, it gets a stub returning -ENOSYS. Unlike its callers in hush,
    source_script() can now be called directly, so check the securi [...] 
 
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_ALL(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: AAD5B200668
X-Stat-Signature: r54qug649ic7yk9j8ptrh7ottygqzipy
X-Rspamd-Action: no action

C code that wants to source a shell script has to go through
run_command("source ..."), which parses the command line and looks the
script up in the PATH.

Export source_script() instead. As the simple parser can't source
scripts, it gets a stub returning -ENOSYS. Unlike its callers in hush,
source_script() can now be called directly, so check the security policy
in it, like run_command() and execute_script() do.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c   | 17 +++++++++++++++--
 include/shell.h |  8 ++++++++
 2 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index ac885fbfe7..c5809b32cd 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -329,7 +329,6 @@ static char **make_list_in(char **inp, char *name);
 static char *insert_var_value(char *inp);
 static int set_local_var(const char *s, int flg_export);
 static int execute_script(const char *path, int argc, char *argv[]);
-static int source_script(const char *path, int argc, char *argv[]);
 
 static int b_check_space(o_string *o, int len)
 {
@@ -1975,12 +1974,26 @@ static int execute_script(const char *path, int argc, char *argv[])
 	return ret;
 }
 
-static int source_script(const char *path, int argc, char *argv[])
+/**
+ * source_script - execute a shell script in the current environment
+ * @path: path of the script
+ * @argc: number of positional parameters, including $0
+ * @argv: positional parameters, starting with $0
+ *
+ * Unlike executing a script, variables set by it remain set in the current
+ * environment context after it returns.
+ *
+ * Return: exit status of the last command executed, or a negative error code
+ */
+int source_script(const char *path, int argc, char *argv[])
 {
 	struct p_context ctx = {};
 	char *script;
 	int ret;
 
+	if (!IS_ALLOWED(SCONFIG_SHELL))
+		return -EPERM;
+
 	initialize_context(&ctx, true);
 
 	ctx.global_argc = argc;
diff --git a/include/shell.h b/include/shell.h
index b399564ff3..a0c3414fa6 100644
--- a/include/shell.h
+++ b/include/shell.h
@@ -6,17 +6,25 @@
 #ifndef __SHELL_H__
 #define __SHELL_H__
 
+#include <linux/errno.h>
+
 int shell_get_last_return_code(void);
 
 int run_shell(void);
 
 #ifdef CONFIG_SHELL_HUSH
 char *shell_expand(char *str);
+int source_script(const char *path, int argc, char *argv[]);
 #else
 static inline char *shell_expand(char *str)
 {
 	return strdup(str);
 }
+
+static inline int source_script(const char *path, int argc, char *argv[])
+{
+	return -ENOSYS;
+}
 #endif
 
 #ifdef CONFIG_BAREBOX_CMDLINE

-- 
2.47.3



