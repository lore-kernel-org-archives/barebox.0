Delivery-date: Mon, 31 Aug 2026 11:49:44 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x0ye7-009EK7-23
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 11:49:44 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3C05C2020CE
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 11:49:44 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4OkGixXs;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=92WMiVKbtXjzC5107KWZGW+8kJtZwUbJzdYj+WS7LEE=; b=4OkGixXsHnnYAmOKnA6+eazY8Z
	yOfwGaBk2kopS7PqfPrkEHuLWoDehjxYd25K1iI4BQFaJI/+GDtzUNh3We7sLJdHmdX86b5C+neFU
	zKDoH8RU4kHz4ASjH2rBnAuTVOkYGYvYRgW6P+h8I9hkFASJeLwPDu3NClEIviTLrPT6Dtu5WcA+L
	iAo1i9qhm5yNpa1JMzb7Q4kmAdV5bhpjrlpGmjt8rsbfWdEUVpVHoQbtLsiYRiYjyi58wXYcUBaZC
	N92GqAQvtKFSxzCkz0jawwucw1nFFVM6SIYZN/PC4DqrtjmWWTS/OB0FxNM89sj5AFYdk/90W99yG
	H366lFRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0ycx-000000093PF-1Qf2;
	Mon, 31 Aug 2026 09:48:31 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0ycu-000000093Nm-1J4o
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 09:48:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 504782020E6;
	Mon, 31 Aug 2026 11:48:26 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x0ycs-004Ebm-0R;
	Mon, 31 Aug 2026 11:48:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x0ycs-0000000Bs0g-0ED5;
	Mon, 31 Aug 2026 11:48:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2026 11:48:28 +0200
Subject: [PATCH 4/4] fs: devfs: make the default automount reachable under
 cdev aliases
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260831-usbdisk-aliases-v1-4-0a2e40a35f3d@pengutronix.de>
References: <20260831-usbdisk-aliases-v1-0-0a2e40a35f3d@pengutronix.de>
In-Reply-To: <20260831-usbdisk-aliases-v1-0-0a2e40a35f3d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788169706; l=2709;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=di+ILKij8HGQXtF7Msa1oE+Ym8djZSkIIE/GsN1KM3A=;
 b=/0kk4Xi8jhbiPjDBlhJe0AhDV7Z4dMbENyFFOXk0W+bjHXECgpTK1iJgsWMuItvA4KBX5bIc1
 +wFzzJfP8A7ALydP25J/kMOuZWab7KB7jhpijFIEfDIUdpnHVRPrykA
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_024828_506549_FCD54E06 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  A cdev with a default automount is mounted by walking into
    /mnt/<cdevname>, so /mnt only ever knows a cdev under its real name. With
    a USB disk registered as "disk0" and aliased to "usbdisk0" you can [...] 
 
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
X-Stat-Signature: kmfz43axr7g33zr8oqb8ehjw7koyw8mc
X-Rspamd-Queue-Id: 3C05C2020CE
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

A cdev with a default automount is mounted by walking into
/mnt/<cdevname>, so /mnt only ever knows a cdev under its real name. With
a USB disk registered as "disk0" and aliased to "usbdisk0" you can read
/dev/usbdisk0.data, but mounting it still requires knowing that it really
is disk0.0.

Link the aliases next to the automount directory, so that /mnt/usbdisk0.data
points to disk0.0 and walking into it triggers the same automount as
/mnt/disk0.0 does. This also covers the aliases a partition has always
had: /mnt/disk0.data did not exist so far even though /dev/disk0.data
did.

The links are created and removed along with the alias itself, hence
devfs_remove() has to remove the aliases before dropping the automount -
cdev_mnt_unlink() needs DEVFS_HAS_AUTOMOUNT to still be set to know that
there is anything to unlink.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Assisted-by: Claude:claude-opus-5
---
 fs/devfs-core.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index d647be9b9d..35a4bdfdc4 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -520,6 +520,35 @@ static void devfs_unlink(const char *name)
 	free(path);
 }
 
+/*
+ * A cdev with a default automount is mounted by walking into
+ * /mnt/<cdevname>. Link the aliases next to it so that an alias can be used
+ * for mounting just as well.
+ */
+static void cdev_mnt_symlink(struct cdev *cdev, const char *linkname)
+{
+	char *path;
+
+	if (!(cdev->flags & DEVFS_HAS_AUTOMOUNT))
+		return;
+
+	path = xasprintf("/mnt/%s", linkname);
+	symlink(cdev->name, path);
+	free(path);
+}
+
+static void cdev_mnt_unlink(struct cdev *cdev, const char *linkname)
+{
+	char *path;
+
+	if (!(cdev->flags & DEVFS_HAS_AUTOMOUNT))
+		return;
+
+	path = xasprintf("/mnt/%s", linkname);
+	unlink(path);
+	free(path);
+}
+
 void devfs_init(void)
 {
 	struct cdev *cdev;
@@ -588,6 +617,7 @@ static int __devfs_add_alias(struct cdev *cdev, const char *name,
 	list_add_tail(&alias->list, &cdev->aliases);
 
 	cdev_symlink(cdev, name);
+	cdev_mnt_symlink(cdev, name);
 
 	return 0;
 }
@@ -686,6 +716,7 @@ static void devfs_remove_aliases(struct cdev *cdev)
 
 	list_for_each_entry_safe(alias, tmp, &cdev->aliases, list) {
 		devfs_unlink(alias->name);
+		cdev_mnt_unlink(cdev, alias->name);
 		list_del(&alias->list);
 		free(alias->name);
 		free(alias);
@@ -706,6 +737,7 @@ int devfs_remove(struct cdev *cdev)
 
 	devfs_unlink(cdev->name);
 
+	/* Must happen before the automount is dropped below */
 	devfs_remove_aliases(cdev);
 
 	cdev_remove_default_automount(cdev);

-- 
2.47.3



