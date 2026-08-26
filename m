Delivery-date: Wed, 26 Aug 2026 11:41:43 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzA8c-007O6Y-2u
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 11:41:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7FFA920205C
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 11:41:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MIJDKqhf;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BwDfR9q7aDVgAPVgex0KG6zx5BMPjnpwXBONNR7eaf0=; b=MIJDKqhf3K3ohxwDUZPFngvHUZ
	s7lcR8WZxlIM6QE1zQtiFzRADEsgqSgy+zevnygT1pofgGA4kVq9YtelqVneF2pOjuvVwZ2kiyiwr
	JYAJW5GiQfdhjUg+h9NJ7HJ2DU1xSTBemdYx950GvHmJVK+oOnnrz+mlr70HsO+k97LhJDnpzAMcv
	S6JN8XF8aTY0LMoT7iTVmcKn/IgeuHXrEkfknRZ72MwATr8QKI8oC9/Ompicba8bzpi5EiuqP5pFm
	gSHfNX7aexgQh0rAXb4t0YQ7OvjnxTBsk/+l0d5H3rFWGkzZi3+6+zag61qbAoS4WW7BXtmkokYQt
	izzGpR+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzA7a-00000002DrP-3VWX;
	Wed, 26 Aug 2026 09:40:38 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzA7X-00000002DqM-3ugp
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 09:40:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3D392200FEE;
	Wed, 26 Aug 2026 11:40:34 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzA7W-003PzY-0Y;
	Wed, 26 Aug 2026 11:40:34 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzA7W-0000000Ag7k-0IdZ;
	Wed, 26 Aug 2026 11:40:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] fs: don't leak the parent path when openat() fails after the lookup
Date: Wed, 26 Aug 2026 11:40:32 +0200
Message-ID: <20260826094033.2545168-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_024036_124541_B9AB3D28 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  openat() jumps to out1 on three errors that happen after the
    lookup has succeeded, and none of them drops what the lookup took: - create()
    failing leaves both the negative dentry that filename_create() returned and
    the parent path it filled in. - The -ENOENT branch dputs the dentry, which
    is path.dentry here, but not the vfsmo [...] 
 
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
X-Spamd-Result: default: False [-56.21 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: c1dx93q6ekwm8e9kfhoghb3e5muqzppp
X-Rspamd-Queue-Id: 7FFA920205C

openat() jumps to out1 on three errors that happen after the lookup has
succeeded, and none of them drops what the lookup took:

- create() failing leaves both the negative dentry that filename_create()
  returned and the parent path it filled in.
- The -ENOENT branch dputs the dentry, which is path.dentry here, but not
  the vfsmount reference held alongside it.
- The -EISDIR branch drops nothing at all.

The leaked vfsmount reference keeps the file system busy for good:

  barebox:/ mount -t efivarfs none /efivarfs
  barebox:/ echo -o /efivarfs/Foo-8be4df61-93ca-11d2-aa0d-00e098032b8c x
  open: Operation not permitted
  barebox:/ umount /efivarfs
  umount: Device or resource busy

efivarfs refuses to create variables outside barebox' vendor GUID, so a
single mistyped GUID is enough to reach this; any file system whose
create() can fail - a full FAT, a read-only mount - gets there the same
way. Release the path on all three paths, as mknodat() already does for
the same filename_create() result.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index dc6c30802d89..ce41f23f880b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2748,8 +2748,11 @@ int openat(int dirfd, const char *pathname, int flags)
 	if (d_is_negative(dentry)) {
 		if (flags & O_CREAT) {
 			error = create(path.dentry, dentry);
-			if (error)
+			if (error) {
+				dput(dentry);
+				path_put(&path);
 				goto out1;
+			}
 			/* repoint path.dentry from parent to newly created entry.
 			 * path.mnt already points at the correct vfsmount, even
 			 * for a dirfd of the root directory, so that's fine.
@@ -2757,12 +2760,13 @@ int openat(int dirfd, const char *pathname, int flags)
 			dput(path.dentry);
 			path.dentry = dentry;
 		} else {
-			dput(dentry);
+			path_put(&path);
 			error = -ENOENT;
 			goto out1;
 		}
 	} else if (d_is_dir(dentry)) {
 		if (!(flags & (O_PATH | O_DIRECTORY)) && !dentry_is_tftp(dentry)) {
+			path_put(&path);
 			error = -EISDIR;
 			goto out1;
 		}
-- 
2.47.3



