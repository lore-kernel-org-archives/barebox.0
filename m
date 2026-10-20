Delivery-date: Tue, 20 Oct 2026 09:14:51 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJ43e-000wGM-2G
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 09:14:51 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 86736201EC5
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 09:14:50 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YEpIGbkE;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=F3C4CwW2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792480490; a=rsa-sha256;
	cv=fail;
	b=GcYyyHmRKc85FNGkZQnGHhoRb7LcRMzA+m9MqnUxzCrWhSm/tXFXt7J8A3Mm6rk5DKLiQN
	96Dapz91WJq3kEctphlMFZ2xiRa2zAsKDcBkKiu7eBrc3sMkaVwdpoGw+wHLXF4Y1Fp66o
	GFVf/GQgRB/yWA3gGSgC+JruYIBfcMuOFQB1LlXINTv68C1IXgi0QLFZ3USHwBt389uYu9
	zH5D3SN8ug1erezGK3HhoHCkGMinHHw4klThHmqPCyfbTlAPV3QdDc5d7vKe+kzPEBLIfr
	hICfXDvEo84pM5qxEL2x1vMbXuErE6zSfOZJqYZdQ7ho1bXLqe9kCRRFwBvPjA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YEpIGbkE;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=F3C4CwW2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480490;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=OwhaHq7l3ynIp4fL77Q5C4HtsjgsOoZviOgEGCqm82g=;
	b=C75xXmZlJ39Eo9RNIb+cvsMSe9wlwd9MYaxbNJLANwCcARRI2niz2aoLg7lNUFOtDpvDBB
	pBzo+exL1nZaVKCadxXqmyQLw6527e6E3MndJWcFhYRaSUrzulkEsFIfOESbcC1nd3EhBe
	m9aU8D5huajD7EioJ7laRKsjPb/sTu0mIQxjFnSxnsHeUYeuwy/QoQRueVx+RQOj7QhPGO
	SHu9mWNzeO7ESj/jCfeLSxM3E1rF//YCAxI9D8G+ro2lGAVbyQLR3ui/NsvQPVq8wQTyBZ
	a+pRWxHoIP5nNeBh3SqLQnzDBZo2d5+mR6ZKqXUmfbk6uYAni046OWpkyns4uw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OwhaHq7l3ynIp4fL77Q5C4HtsjgsOoZviOgEGCqm82g=; b=YEpIGbkErwTKIjKay/Mo61gNOr
	qA9MP+KTpKLarXyr9cJadZrMUMErvFKBjr3hlwpWTpMdUBad/5FXNPjuBpVdF7YuOpVQip0mmYO8x
	CPegQ8m5oxlxqO2WRh5SSBB7ohkG++fsSswWoNq6J/5sjpB+cvqNnWblzlzGThOrTipcJ52P5VOiF
	HObYYnVPrOcJbblG1G0iSHSYc5VOhhx6w+1TNbNLPos8lClk8vQ1yVqhBdjFMV1wYR7DVoEd3HiZD
	8VPq0FcyjYf/0xfpC/LwEZvJGyTjq+JmnDEZNpPcxrBJ8zWZnSbcLM3bD3GES5jhhM7irEU9pVG2f
	c6k3i6xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3yf-00000008zKX-03op;
	Tue, 20 Oct 2026 07:09:41 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3yZ-00000008zGe-439G
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 07:09:38 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id ECEB72022C2;
	Tue, 20 Oct 2026 09:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OwhaHq7l3ynIp4fL77Q5C4HtsjgsOoZviOgEGCqm82g=;
	b=F3C4CwW2hk7OzZrYX3SIrvD0oy0MJk3iuxJEhSML6SmOM+QYc8g/h/SQInxiBHGkBYzARA
	H/1N2R+FzsU2lLgw9EFKpxFzAFIH5/mmzzTHfaz8NZM2+RwFzHcQ852T/ShrBky9PYJ6Tf
	LvEJIWaz2sFnn8/ar/NNyXe6tBrzEgThNUANHj5s7J0872Xozad5MsKJROyPXh4e/ZVgfx
	HfgHl6cNmecci0gdNwMfnw2OkrpO6lFddXKA7zuH8mUZvbsyIQyQe6K6bPFf3nBv0+m3uo
	Fzr7CR2ztyk+6govYrEJf3gtTcMHkyHIwcscYTWDXOAnoFbH/QsQ+IlCAB9onA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792480170; a=rsa-sha256;
	cv=none;
	b=ZkEGIz7cHqQMf6RlsEoudziZpFySbgoLw/Am+Libqjd+QOuBNBHKLbTH+Nda2L6YxLn+m+
	LYanxpi6nLfQJD1epUgunfM8+EDhZC8hc/YRhD7h/mlk409LL2Obb7zr646h5nXbSnb9b1
	wt+ZQtN3DySqnCUKMUryZorbgSc2NggQx+m7QuQ7h218vYpviz/ZJJIzBFyVCrLUjZ2UkG
	jX8YWPq+KEkxaaCHNXKu7w2CfT8g3fwaKRJcKkVO5UyIGQBRCnT/Z3mn1I5kR/+W5GXl9Q
	wffsxkpPQZkmPKYAMNZH9gG3apENSGl945bIQcJE2aUXj8q2Xtm4nkUdU/0J0g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OwhaHq7l3ynIp4fL77Q5C4HtsjgsOoZviOgEGCqm82g=;
	b=a06nzb9gxUZbaM6EMWHKrtOCgWN4VdRRDrwzHNDWXiJP30KHyJsQy7Z6fg8PMW6Y+imVge
	LislB7dNt0re/P9oh61slONZsQlJDTmFcckl/Qj0TwdZwTDWcf4T1n/XP2LVcIlPfsfASd
	9HTRyfL+9Oox1yQzKylsltf0CVnMLYiz+Xwcednhv6phA9IQpfAD17bdqeRhyyN20KlQaN
	i+I6WCTSDEYU9IA0jy2IIwG23y4mpXMpGnY+Gmwi1BW1dia8dLnhr4Nn3XNgeFtm3chH52
	9FECChbAddlpropne1l6o8fIDSRNs2csGXfqRRcPR9zpxNMOFdl7mLgenRR8Pw==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Oct 2026 09:09:31 +0200
Subject: [PATCH 6/9] fs: symlink: drop references taken by
 filename_create()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261020-fs-symlink-fixes-v1-6-e7ac8c29b08a@pengutronix.de>
References: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
In-Reply-To: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792480170; l=1485;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=N4w2yD2pLN/AsxdG3mp+z+x9crcPShThYD7oXiHJR+k=;
 b=6GrP0FyMcPKOFZ5QLYrXtPcH0yhs+kuw23qY6k/J2AK3ge8YN1MFqMcVpTZlvxYkXwYB3R5kc
 DoQNBhioFM5B5tfkciHS2p9sbNOXyEgeI7NYjAymwWizGKf/ez4xkrk
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_000936_182506_EE64518D 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  symlink() never releases the dentry and the parent path returned
    by filename_create(). The leaked vfsmount reference keeps the filesystem
   busy, so it can't be unmounted once a symlink has been created [...] 
 
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
X-Rspamd-Queue-Id: 86736201EC5
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
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
X-Rspamd-Action: no action
X-Stat-Signature: hesp6g17iaa43h3t5ts8j5pedyaex3fe

symlink() never releases the dentry and the parent path returned by
filename_create(). The leaked vfsmount reference keeps the filesystem
busy, so it can't be unmounted once a symlink has been created on it:

  mount -t ramfs none /m
  ln -s x /m/l
  umount /m         -> Device or resource busy

Release both references like mkdirat() and mknodat() do. Also pin the
new dentry in ramfs_symlink() like ramfs_mknod() does, so that symlink
dentries end up with the same reference count as all other ramfs
dentries.

Fixes: b3fbfad7ae ("fs: dentry cache implementation")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c    | 3 +++
 fs/ramfs.c | 1 +
 2 files changed, 4 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 40dc32b3c4..dd064c8527 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2973,6 +2973,9 @@ int symlink(const char *pathname, const char *newpath)
 	}
 
 	error = vfs_symlink(path.dentry->d_inode, dentry, pathname);
+
+	dput(dentry);
+	path_put(&path);
 out:
 	return errno_set(error);
 }
diff --git a/fs/ramfs.c b/fs/ramfs.c
index 4c64310e22..22fe620b55 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -178,6 +178,7 @@ static int ramfs_symlink(struct inode *dir, struct dentry *dentry,
 	inode->i_link = xstrdup(symname);
 	inode->i_size = strlen(symname);
 	d_instantiate(dentry, inode);
+	dget(dentry);   /* Extra count - pin the dentry in core */
 
 	return 0;
 }

-- 
2.47.3



