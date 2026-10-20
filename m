Delivery-date: Tue, 20 Oct 2026 09:10:18 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJ3zG-000vtJ-0Q
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 09:10:18 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E7F08202136
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 09:10:17 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VpR6Z33D;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Df1B5Ft5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792480218; a=rsa-sha256;
	cv=fail;
	b=S6m4M1dFbpOdHssLOBeFb3s/4Qe9iuyatdkxZWOw4fDexfKHs+FLU7AA/zuNFV8Yv1W0Bw
	+SnlNc0WUxgquM0Dt7bmZS/pLFVO/JXyO4hQEYIalJTPUREPiakSLr2/0jKjo2qnLUMczp
	pMlUZyufc0yv/aaVtxbkDx3p95TZ8Hk54E7o0uZW9nuBSeniJtE+c0IxQBWgkB0mP3shuE
	wRPWDp5RKXAj+ATcthF5G2s1zRhL4KSSvGLg04zqMy1Xz9KGWeJIeBm6EeePWDrcfijP+s
	syy1gqRvHUuBjbyCSHKZtFMqsEz/Xnb4qZlixKEuoEmwopIqt5q+PgIhTROpkQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VpR6Z33D;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Df1B5Ft5;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480218;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=tOfpY3Q7w/VVxJ6lXBMj0KgoJolaDpKi5pKOCLxItEM=;
	b=abGpTuOjVSNPdmrqJQ4XxNBrEHuZI4myVR0zz3QcWqLdslAIj2pbr2d0mKoOyKIqE3q2+7
	AAYz48J6Jlb7y/DaFL/Ope/SxTEMosomnZYDxk+zILuOuP1ouompjWH6nGNk3xYDsgjhTF
	M0GfyhsDWjacLNWvbXrZEsryhJ5k0Ub3wK3+JRE2Xa0epP5lagddlSt3FQOp9ab1UwdYAF
	RC7cmzx+s5fE0qkAxn83lDvHJQLgnqUN30T3WcjxybQEOc9lBp4M9ksK+uuwkehATuZgXW
	MOgyzwXsUD+WMCJGGfdz7j2RPQoGlvL47zq4bNOS+YLIrsy+w223gf4tatxsjQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tOfpY3Q7w/VVxJ6lXBMj0KgoJolaDpKi5pKOCLxItEM=; b=VpR6Z33Dj4aDl1kdbNnG/ZliRF
	QwxRWYYFgbBYJN+0aHW2153RHNzXAFPm8hstlz19d+V+Fz0CRHaGiySaep/4KqHvmtpLqSd5hQX11
	2NPHTO2bPJoRf35gz8wmliX7+mxeOUJ8Dqjl/nRr0Df2oXDK8/aa+cJ1b/QW2dVWF/1cwJQtgVlr2
	Ao0+Mfrvt0UDol8MrbnO+8VXw1EEimcAWr21G/R5ZO1nUGetMpdh3oP5fgCbPFTsMgLtetqjpO3/I
	WO4PkJfHhiv/B41VD0L1NFcWE5iokzYGSDU89sUJ5v/svPrZaC8IwjFh48bfvd+EeAM24XB38XQWP
	uNO4hLIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3ya-00000008zHd-1qpq;
	Tue, 20 Oct 2026 07:09:36 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3yW-00000008zFY-2acT
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 07:09:35 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D36B1202283;
	Tue, 20 Oct 2026 09:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tOfpY3Q7w/VVxJ6lXBMj0KgoJolaDpKi5pKOCLxItEM=;
	b=Df1B5Ft5naSwIZ3QpSPVwh/W+zAoFIv286Ytr7PPItUWdPAfRHG2khfi8Clf7iQcN/TFvj
	G+XbyO+G0qsAeL/He17KSkzmY7K/cfm3NedvnetVroBgigsmv+ShZiLF3JA1bb2wanlUIz
	JJTn14y3naVsWvD9u/51H2uBlWw6dsbbVoF47N1UU7ndfYRsuNR45Sqbjsfax+tiXOy4L+
	3t4GjPGL+E9bUPwV0M9Zj7T1ClfIQjR0hWWqDl4plIZ2JMt7ua/j/hrWI4T91cB8qNg4R0
	7Fs/mLPyyzfg3QpL8OXPIRwJuT1prr5TYlTNfs6Ui+8pqkKY68xS72u90ARXqw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792480170; a=rsa-sha256;
	cv=none;
	b=ZRMqnYBkWegcBXq5CiU+ssN43KCTjFnFcWE2ar0lj5m+w+wMmwR3aaBG66kmekKqt0SUl9
	9yO5h4kXcx8b1K0mCRO5W/Hd1xwD7t9xD4pWMQJYnfJluleosHX8BhayODvT+iA3R4OLJM
	Dl6zRulTi3qDgmJL0BRMkPomHjv3pkrmb5HmiiCVWBYDJrWyqA2rx7O0okeEXNI/JrS7dM
	tM+gyKR0xO4xdFGXUZXU0xJciRVIrcKPgDCIVWH/vU8/VyJSkwczXbSsUTY6Lsq1l6h6dz
	Ryf8ROJZwn/RfzX/DL5Xf7UxYslSl4dabLOJ7YcqBUgY8yEqgsrcuzuBhcw0FQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tOfpY3Q7w/VVxJ6lXBMj0KgoJolaDpKi5pKOCLxItEM=;
	b=K14q2QKNONKJ/wRj2Oqhnu6ZKaBdp/2iG6YR+ge+Ueo/Gv3IJI6Pb8Dbi8tb1EzIGgufix
	MXAcmngWp/SDH2BKBtLb0HLEDAnOqzVlejr0IlRn10lepWe3QV55KPkFH/bcdOjgJkCCL6
	RS8BaFNXc366KjsPfCo8oGDMNNheAlk9RKmaTVDPn06E1QD9D1RMzFZJb78NUqpdLwXZ/w
	mZsepIM0wHHdTN4tui+QIjhSQoS43gs1Jklxz3174iGtvnmfs60I4j1xKt76t1ADZL1umj
	E84gzsXQuoS/2cL/XJ2cWwvFvVcMnnZ8oz3qHH4SSuSm+Opng9V2xNUEyy9zKQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Oct 2026 09:09:29 +0200
Subject: [PATCH 4/9] fs: follow absolute symlinks from the root directory
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261020-fs-symlink-fixes-v1-4-e7ac8c29b08a@pengutronix.de>
References: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
In-Reply-To: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792480170; l=2373;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=wfOPQ+NHJskhRS2vHN7PBacmvHsJ0akW22vAKJMJdt0=;
 b=FY7l+iIuFCUeF0yBjPLhM0qnSsB5AmaU/qjGbyevpVSgsI0k5xZ0gqWkbtgRIBvKJyja8hAfJ
 Z/WOP4F6a37D0fz2RRxp90I4Kc/RuZrE0igC4K8SfjLqcXE4Ws5ik/y
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_000932_835973_61503C03 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  get_link() skips the leading slashes of an absolute symlink
    target, but never moves the lookup to the root directory. The target is therefore
    resolved relative to the directory containing the link: ln -s /tmp/a /tmp/b
    cat /tmp/b -> looks up /tmp/tmp/a, fails with -ENOENT ln -s /a /tmp/z cat
    /tmp/z -> opens /tmp/a 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Queue-Id: E7F08202136
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
X-Stat-Signature: e6s14mknpcy6e8unyjnhjjcpn6t3ys7c

get_link() skips the leading slashes of an absolute symlink target, but
never moves the lookup to the root directory. The target is therefore
resolved relative to the directory containing the link:

  ln -s /tmp/a /tmp/b
  cat /tmp/b        -> looks up /tmp/tmp/a, fails with -ENOENT
  ln -s /a /tmp/z
  cat /tmp/z        -> opens /tmp/a

Do what Linux does in nd_jump_root() and replace the current path with
the root before continuing the walk. For lookups relative to an
O_CHROOT dirfd the root is the root of the dirfd's mount, so record the
root vfsmount along with the root dentry in struct nameidata.

Fixes: b3fbfad7ae ("fs: dentry cache implementation")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 1426ce4bc8..edb68cf455 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1726,6 +1726,7 @@ struct nameidata {
 	struct filename	*name;
 	struct inode	*link_inode;
 	struct dentry   *d_root;
+	struct vfsmount *mnt_root;
 };
 
 struct filename {
@@ -1740,6 +1741,7 @@ static void set_nameidata(struct nameidata *p, struct filename *name)
 	p->name = name;
 	p->total_link_count = 0;
 	p->d_root = d_root;
+	p->mnt_root = mnt_root;
 }
 
 static void path_get(const struct path *path)
@@ -2003,6 +2005,19 @@ static inline void path_to_nameidata(const struct path *path,
 	nd->path.dentry = path->dentry;
 }
 
+static void nd_jump_root(struct nameidata *nd)
+{
+	struct path root = {
+		.mnt = nd->mnt_root,
+		.dentry = nd->d_root,
+	};
+
+	path_get(&root);
+	path_put(&nd->path);
+	nd->path = root;
+	nd->flags |= LOOKUP_JUMPED;
+}
+
 static const char *get_link(struct nameidata *nd)
 {
 	struct saved *last = nd->stack + nd->depth - 1;
@@ -2018,6 +2033,7 @@ static const char *get_link(struct nameidata *nd)
 			return res;
 	}
 	if (*res == '/') {
+		nd_jump_root(nd);
 		while (unlikely(*++res == '/'))
 			;
 	}
@@ -2323,8 +2339,10 @@ static const char *path_init(int dirfd, struct nameidata *nd, unsigned flags)
 
 		if (*s == '/')
 			nd->path.dentry = nd->path.mnt->mnt_root;
-		if (chroot)
+		if (chroot) {
 			nd->d_root = nd->path.mnt->mnt_root;
+			nd->mnt_root = nd->path.mnt;
+		}
 	}
 
 	return s;

-- 
2.47.3



