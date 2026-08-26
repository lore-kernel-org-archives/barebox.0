Delivery-date: Wed, 26 Aug 2026 02:40:23 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wz1gk-007FhT-23
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 02:40:23 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D8607200988
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 02:40:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=g8LGyOG9;
	dkim=none ("invalid DKIM record") header.d=cetola.net header.s=default header.b=B05EVHLb;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aMRpyrss6919rp9szzGdhMjAWspgZwctv/rfLE4hxKM=; b=g8LGyOG9P65C+L
	tX0m6/TL/8SAjT/lAjAmM4Haj/Tjpaj+hkBGfFpvFbDpDkLY0WlmiJEuUgCjdeT/syhg/FeDLvEWf
	eKcvGpwJsrNgNBOEMUICvSHpzaXvZ0OQciDL2FvRw4tanaHfkkjCOfLKN0/mTn0wx+gy4ZE+8R2PC
	efi1YU/+PacptncStSwABR8uJc5/YmGBBENJVhQeTpgw1Ylaw1Q53aBT4WEhFvR0/MLdHneIH8VLR
	K2MYsDXycCL7XTNMv4Jisrz72u5Fsrru8j2z66CW9bV9KCjUfRH4MjZ1KvPvwa4ytBaUs3qDs0WhM
	GLFaW8cS0ZT6YlmDREGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz1fP-00000001iyO-3ADI;
	Wed, 26 Aug 2026 00:38:59 +0000
Received: from omta40.uswest2.a.cloudfilter.net ([35.89.44.39])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz1fN-00000001ixZ-0xXs
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 00:38:58 +0000
Received: from eig-obgw-5003b.ext.cloudfilter.net ([10.0.29.155])
	by cmsmtp with ESMTPS
	id yvuNwxOIQhJKMz1fKwvKAI; Wed, 26 Aug 2026 00:38:55 +0000
Received: from box2192.bluehost.com ([50.87.253.143])
	by cmsmtp with ESMTPS
	id z1fJwIGpyMSoYz1fKwQuOJ; Wed, 26 Aug 2026 00:38:54 +0000
X-Authority-Analysis: v=2.4 cv=E9TNpbdl c=1 sm=1 tr=0 ts=6a8e359e
 a=j14/dPpTP3/5aO8YB4ELDw==:117 a=j14/dPpTP3/5aO8YB4ELDw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=jNmq5YGq058A:10 a=wTo936TsAAAA:8
 a=Bv9w2dGLv6RSsOeZ1ToA:9 a=QEXdDO2ut3YA:10 a=J3I8QpufI4RFOXkfet32:22
 a=dWMlSAZEh1Dptg_Be0X5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cetola.net;
	s=default; h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:
	MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=aMRpyrss6919rp9szzGdhMjAWspgZwctv/rfLE4hxKM=; b=B05EVHLb1xyIaugLc8FNQ6fxfv
	ph8uVyXBiMvci/ZN8c+JBXMEHsEX2LlnMvFm0xTpKpSgpzcdXHQINNjeeSS+WalS23dJp9hjhA1cG
	xUL/MP7mhHznAsl1WPFVY3bQxGNVHGJe0zv56uGFQPvNXg1x0HzlYdzS0f0Ndk6u3h9M=;
Received: from [71.238.14.13] (port=42008 helo=ishmael.local)
	by box2192.bluehost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.5)
	(envelope-from <stephano@cetola.net>)
	id 1wz1fJ-00000000sjy-1mjj;
	Tue, 25 Aug 2026 18:38:53 -0600
From: Stephano Cetola <stephano@cetola.net>
Date: Tue, 25 Aug 2026 17:38:43 -0700
Subject: [PATCH] extlinux: resolve absolute paths against the partition
 root
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260825-send-extlinux-abs-path-v1-1-910bf0a3dad1@cetola.net>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQqDMBBA0avIrDuQRpDYq5QuEmfUKSWVTJSAe
 Hdju3yL/3dQTsIKj2aHxJuofGPF/dbAMPs4MQpVgzW2M85aVI6EXPJH4lrQB8XF5xkD9c703BJ
 5BzVeEo9SfuPn629dw5uHfN3gOE6ZpesRegAAAA==
X-Change-ID: 20260822-send-extlinux-abs-path-bd9809e3dda8
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.15.2
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2192.bluehost.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cetola.net
X-BWhitelist: no
X-Source-IP: 71.238.14.13
X-Source-L: No
X-Exim-ID: 1wz1fJ-00000000sjy-1mjj
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (ishmael.local) [71.238.14.13]:42008
X-Source-Auth: stephano@cetola.net
X-Email-Count: 5
X-Org: HG=bhshared;ORG=bluehost;
X-Source-Cap: Y2V0b2xhbmU7Y2V0b2xhbmU7Ym94MjE5Mi5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfNJsqye7c98FactNEjWshKDukN+kgVaCCA9y/xCW29VoLQPKEtKWjCRQImE/0jze8DT7o88oTzdvBwHwAo3QtAHTFvGXG0aCW/WojXzxg/8IMFubF0Ex
 1hz4Ck2G2Mp15Wt9664Z9V2Y4Kj7SieOjmE5UFG2wxmpLy3BnFFP8Q/re3hFSp6DOMe4t2jPSX1qFuW6Zssbr8qxNPJEJphI4cY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_173857_294246_B62A64E8 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  extlinux_boot() always joined a path with '/' against rootpath,
    which holds the config file's own directory, not the partition root. A KERNEL/INITRD/FDT
    value starting with '/', the normal syslinux wa [...] 
 
 Content analysis details:   (-1.7 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [35.89.44.39 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[cetola.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	R_DKIM_PERMFAIL(0.00)[cetola.net:s=default];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stephano@cetola.net,barebox-bounces@lists.infradead.org];
	NEURAL_HAM(-0.00)[-0.998];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_PBL(0.00)[71.238.14.13:received];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_X_SOURCE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[35.89.44.39:received];
	HAS_X_ANTIABUSE(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,cetola.net:~]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: ndjm197h59zg9mbybganapwcmxephi3u
X-Rspamd-Queue-Id: D8607200988

extlinux_boot() always joined a path with '/' against rootpath, which
holds the config file's own directory, not the partition root. A
KERNEL/INITRD/FDT value starting with '/', the normal syslinux way to
name a path from the partition root, got treated as relative instead.
The extlinux.conf file itself can live in a different directory than
the partition root (extlinux_scan_directory() looks in both
boot/extlinux/ and extlinux/), so this produced a wrong, nonexistent
path whenever a config used an absolute KERNEL/INITRD/FDT entry.

Track the partition root and the config file's own directory as two
separate fields, cfgdir and rootpath, and resolve a path against
rootpath if it starts with '/', or cfgdir otherwise.

Fixes: b912fa9fc3ca ("Add support for extlinux.conf")
Signed-off-by: Stephano Cetola <stephano@cetola.net>
---
 common/extlinux.c | 26 +++++++++++++++++++++-----
 1 file changed, 21 insertions(+), 5 deletions(-)

diff --git a/common/extlinux.c b/common/extlinux.c
index caa62923da..7a92c15e4d 100644
--- a/common/extlinux.c
+++ b/common/extlinux.c
@@ -17,6 +17,7 @@
 struct extlinux_entry {
 	struct bootentry entry;
 	char *rootpath;
+	char *cfgdir;
 	char *label;
 	char *kernel;
 	char *initrd;
@@ -25,6 +26,19 @@ struct extlinux_entry {
 	char *append;
 };
 
+/*
+ * A path starting with '/' is absolute and resolves against the
+ * partition root. Anything else is relative to the extlinux.conf
+ * file's own directory, per syslinux convention.
+ */
+static char *extlinux_make_abs(const char *rootpath, const char *cfgdir,
+				const char *relpath)
+{
+	if (relpath[0] == '/')
+		return basprintf("%s%s", rootpath, relpath);
+	return basprintf("%s/%s", cfgdir, relpath);
+}
+
 static int extlinux_boot(struct bootentry *entry, int verbose, int dryrun)
 {
 	struct extlinux_entry *e =
@@ -38,18 +52,18 @@ static int extlinux_boot(struct bootentry *entry, int verbose, int dryrun)
 	data.dryrun = max_t(int, dryrun, data.dryrun);
 	data.verbose = max(verbose, data.verbose);
 
-	kernel_abs = basprintf("%s/%s", e->rootpath, e->kernel);
+	kernel_abs = extlinux_make_abs(e->rootpath, e->cfgdir, e->kernel);
 	data.os_file = kernel_abs;
 
 	if (e->initrd) {
-		initrd_abs = basprintf("%s/%s", e->rootpath, e->initrd);
+		initrd_abs = extlinux_make_abs(e->rootpath, e->cfgdir, e->initrd);
 		data.initrd_file = initrd_abs;
 	}
 
 	if (e->fdt) {
-		char *fdtdir = e->fdtdir ? : e->rootpath;
+		char *fdtdir = e->fdtdir ? : e->cfgdir;
 
-		fdt_abs = basprintf("%s/%s", fdtdir, e->fdt);
+		fdt_abs = extlinux_make_abs(e->rootpath, fdtdir, e->fdt);
 		data.oftree_file = fdt_abs;
 	}
 
@@ -76,6 +90,7 @@ static void extlinux_entry_free(struct bootentry *entry)
 		container_of(entry, struct extlinux_entry, entry);
 
 	free(e->rootpath);
+	free(e->cfgdir);
 	free(e->label);
 	free(e->kernel);
 	free(e->initrd);
@@ -124,7 +139,8 @@ static struct extlinux_entry *parse_extlinux_conf(const char *abspath,
 			if (!strcmp(val, default_label)) {
 				entry = xzalloc(sizeof(*entry));
 				entry->label = xstrdup(val);
-				entry->rootpath = dirname(xstrdup(abspath));
+				entry->rootpath = xstrdup(rootpath);
+				entry->cfgdir = dirname(xstrdup(abspath));
 			} else if (entry) {
 				break;
 			}

---
base-commit: 9bc1a26592a59919d2ee8c60c273d87d3d9f2e81
change-id: 20260822-send-extlinux-abs-path-bd9809e3dda8



