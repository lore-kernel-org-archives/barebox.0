Delivery-date: Fri, 28 Aug 2026 12:41:40 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzu1j-0087sB-2I
	for lore@lore.pengutronix.de;
	Fri, 28 Aug 2026 12:41:40 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EA1D8201D34
	for <lore@pengutronix.de>; Fri, 28 Aug 2026 12:41:39 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HHnDGqUv;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9Dm7B+A6CkynLJUxmMbP7gD6tVbxsw/POsdWdfJRG5U=; b=HHnDGqUvpnj2pZrUEUuiQbuLc5
	QSFQhYyHRDnO+VAUIww6C7l7Z0LcuXN7+MpYC3fUBT21olEBKTqQwFzDEn8x3i74IY0/igGj/2rwR
	Vvvd62f+sP0beL1ZjIv9nLDrqad4y/x6qY2sExUegvFg3LIv4jszENTPuRLCf/5yOa9bKtmgQWOKC
	4VLEv29kUkcbdQegliJuPrA8jAR0/KcMLnKS7CtSM5Our93lMBVMpHRWGkE+K5eidkMnFH2zTYQJc
	O/1on024+0ZhBSk0b5XgMF6l1IT9oSm6hPfbBykxAufGWCQ2tUd0AunD2C0R+sZdChvNb85vFnFy+
	Q5a8+Sgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzu1D-00000005b7v-1Di2;
	Fri, 28 Aug 2026 10:41:07 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzu1A-00000005b7V-1fqX
	for barebox@lists.infradead.org;
	Fri, 28 Aug 2026 10:41:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 34A83200FE5;
	Fri, 28 Aug 2026 12:41:02 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wzu18-003kup-0O;
	Fri, 28 Aug 2026 12:41:02 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wzu18-00000001TTt-01Ux;
	Fri, 28 Aug 2026 12:41:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] extlinux: make variable name consistent
Date: Fri, 28 Aug 2026 12:40:59 +0200
Message-ID: <20260828104059.351647-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_034104_587902_26E2889C 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Throughout the extlinux support the path to an extlinux config
    file is used, but the variable is named abspath, configname or just path
   in different functions. Consistently name the variable cfgpath f [...] 
 
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
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.933];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: f1uhtaposdwnek8j66bwpqn8ntgig31i
X-Rspamd-Queue-Id: EA1D8201D34

Throughout the extlinux support the path to an extlinux config file is
used, but the variable is named abspath, configname or just path in
different functions. Consistently name the variable cfgpath for better
readability.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/extlinux.c | 38 +++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/common/extlinux.c b/common/extlinux.c
index 92c49ebbce..968ffe68a3 100644
--- a/common/extlinux.c
+++ b/common/extlinux.c
@@ -89,13 +89,13 @@ static void extlinux_entry_free(struct bootentry *entry)
  * Parse extlinux.conf. Only the entry pointed to by the DEFAULT keyword
  * is extracted; all other LABEL sections are ignored.
  */
-static struct extlinux_entry *parse_extlinux_conf(const char *abspath,
+static struct extlinux_entry *parse_extlinux_conf(const char *cfgpath,
 						  const char *rootpath)
 {
 	char *buf, *bufptr, *line, *default_label = NULL;
 	struct extlinux_entry *entry = NULL;
 
-	bufptr = read_file(abspath, NULL);
+	bufptr = read_file(cfgpath, NULL);
 	if (!bufptr)
 		return ERR_PTR(-errno);
 
@@ -124,7 +124,7 @@ static struct extlinux_entry *parse_extlinux_conf(const char *abspath,
 			if (!strcmp(val, default_label)) {
 				entry = xzalloc(sizeof(*entry));
 				entry->label = xstrdup(val);
-				entry->rootpath = dirname(xstrdup(abspath));
+				entry->rootpath = dirname(xstrdup(cfgpath));
 			} else if (entry) {
 				break;
 			}
@@ -161,21 +161,21 @@ static struct extlinux_entry *parse_extlinux_conf(const char *abspath,
 
 static int _extlinux_scan_file(struct bootscanner *scanner,
 			       struct bootentries *bootentries,
-			       const char *configname,
+			       const char *cfgpath,
 			       const char *rootpath)
 {
 	struct extlinux_entry *e;
 
-	if (!strends(configname, "extlinux.conf"))
+	if (!strends(cfgpath, "extlinux.conf"))
 		return 0;
 
-	e = parse_extlinux_conf(configname, rootpath);
+	e = parse_extlinux_conf(cfgpath, rootpath);
 	if (IS_ERR(e))
 		return PTR_ERR(e);
 
 	e->entry.boot = extlinux_boot;
 	e->entry.release = extlinux_entry_free;
-	e->entry.path = xstrdup_const(configname);
+	e->entry.path = xstrdup_const(cfgpath);
 	e->entry.title = basprintf("extlinux: %s", e->label);
 	e->entry.description = basprintf("extlinux entry \'%s\" on %s",
 					 e->label, rootpath);
@@ -188,37 +188,37 @@ static int _extlinux_scan_file(struct bootscanner *scanner,
 
 static int extlinux_scan_file(struct bootscanner *scanner,
 			      struct bootentries *bootentries,
-			      const char *configname)
+			      const char *cfgpath)
 {
-	const char *rootpath = get_mounted_path(configname);
+	const char *rootpath = get_mounted_path(cfgpath);
 
 	if (IS_ERR(rootpath))
 		return PTR_ERR(rootpath);
 
-	return _extlinux_scan_file(scanner, bootentries, configname, rootpath);
+	return _extlinux_scan_file(scanner, bootentries, cfgpath, rootpath);
 }
 
 static int extlinux_scan_directory(struct bootscanner *scanner,
 				   struct bootentries *bootentries,
 				   const char *rootpath)
 {
-	char *path;
+	char *cfgpath;
 	struct stat s;
 	int ret;
 
-	path = basprintf("%s/boot/extlinux/extlinux.conf", rootpath);
-	ret = stat(path, &s);
+	cfgpath = basprintf("%s/boot/extlinux/extlinux.conf", rootpath);
+	ret = stat(cfgpath, &s);
 	if (!ret && S_ISREG(s.st_mode))
-		ret = _extlinux_scan_file(scanner, bootentries, path, rootpath);
-	free(path);
+		ret = _extlinux_scan_file(scanner, bootentries, cfgpath, rootpath);
+	free(cfgpath);
 	if (ret > 0)
 		return ret;
 
-	path = basprintf("%s/extlinux/extlinux.conf", rootpath);
-	ret = stat(path, &s);
+	cfgpath = basprintf("%s/extlinux/extlinux.conf", rootpath);
+	ret = stat(cfgpath, &s);
 	if (!ret && S_ISREG(s.st_mode))
-		ret = _extlinux_scan_file(scanner, bootentries, path, rootpath);
-	free(path);
+		ret = _extlinux_scan_file(scanner, bootentries, cfgpath, rootpath);
+	free(cfgpath);
 
 	return ret;
 }
-- 
2.47.3



