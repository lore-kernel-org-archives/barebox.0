Delivery-date: Tue, 20 Oct 2026 09:10:57 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJ3zt-000vvU-1Y
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 09:10:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B69E220227A
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 09:10:57 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="aiNid3/P";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=UzJj5TF+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792480257; a=rsa-sha256;
	cv=fail;
	b=H+jJwKg5iQAcrO+Kq+fCfrHEO1F5ZDB9a3hYz9N92ekToQZnKV2DKt//N8ffxrnAW9x25y
	3AVc66rPBacPc1h0GV22l0wdpet6HYTT+onuzF7YFdWkGDMR4MEGiqJhywS6uvs5+Z0s7N
	SzhW5FiVjr2UFQP/JFtLt+a6odDhODMVJzeJKY5G3YbT9FyV5E79Eo1I1lNxLwpKhRXPEX
	J92KEAcuDj3+iIpXRfxFJcmZUQYcVFG9d5yyBP7vPVWRUyp971uAmKMkICkeZ5ljwrP0kI
	dQ/zVgXSQtjJ95f9az3Y6YxYyqFjVyME5XXjkCourdtlDWhAE9np2a8/MiIxeA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="aiNid3/P";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=UzJj5TF+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480257;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=k2UhFjeAyygo6P3ArSEL3v18Fu42ralqmlzoeHTr5hc=;
	b=a8RJjdomQNMLqOLpulykhr/a00vwnT1HXjN4rru6po8ZzHrqtQ7eKzE/VFL17Ks+0qOLJN
	mqZqiegH8h2PqxqjaDfJxttMdtlyvWdN9JYgQKECE4R5hfffXEdyiriLN7UD13xtuo97xD
	bUmMrL0FKX9+Ftl5lua2CREL00Q12OdobtCtbU1MfO8osHec1Rnsc0uOHqQY8zIZ3ixEv6
	jLYzK+AOc5K5/LZdEz7ljOfTZC7t8fJoQ5cru8dsZdnwbkFzas/yWAdlN8nNmWPEFpg54d
	JbpZytJ60JYhZJBxshVGzfAGHXc9lu33a9awsBVV01UTUcF4fefNWz1q0GYIzQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k2UhFjeAyygo6P3ArSEL3v18Fu42ralqmlzoeHTr5hc=; b=aiNid3/P8nau/Zk6wxCQm2bI6K
	1oryOJ6J2xw4KiYulFzJI39I5ia0WuzvWlUQ4M4zOwZ3Vz/ZZKMPdLPIidf0KduOdKCCxkwUxDZNK
	AScaDygpbNWe7mCQbbZ3c3FmTAYIHUrmxZdoP/Jj7Glk4uBVlrN+NhGPdnQuCzhgsykkRzHnoMODv
	tCryHYuf3JsrOQQZQgAd+Nu7FT3rTJX8YhDgiAM/njS2rNjjpVyLTN76g+DmcJibrfGPDaMD3O6Xi
	WCbRL3bATy5F4nyZGogeSwcz7mwLYE4jUWvgGAdM8dG2aKi0WZzTLJAAgPTCNqb91rc3NvS6wJal7
	xCN8IxOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3yg-00000008zN2-3Skz;
	Tue, 20 Oct 2026 07:09:42 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3yc-00000008zGO-45Xo
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 07:09:40 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C678320227A;
	Tue, 20 Oct 2026 09:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=k2UhFjeAyygo6P3ArSEL3v18Fu42ralqmlzoeHTr5hc=;
	b=UzJj5TF+VyIVucvqOzS7qyA1SbHUyNM5RuJhIi+gE4lNP+gfQLrr637/ZbQQ4k8m1DgWD9
	0ZU9Z/yyrIGGqvzgiu2tiVYNDXbCibkvBmXxAU7GjH2PzdnOZs4hcuFtOkQgZOWuifXxik
	fk5D8zDsHpAS5R2KBdBtDqyBNj1MRpTrTmuyArtrf3dcArBwJNrFhPxYqt/eA0zAU/ow5W
	cs38DB21mYmuBWQtjhS/tcq/l74N2PS6nRaYcHxBJ46BE0rfaaiyvMwFGCtRPMAW5Kl8Kl
	2/88sf6u3gRHg45FWF5Y9lTjZbIYuyH21h8WBT9kWnaPKUeBcTRD3Lz+rg/obA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792480170; a=rsa-sha256;
	cv=none;
	b=fclfPlOHGya+e8JLjx07maVCjPVvOwNcmfJy6EnC81hukSxeWn81xMkfdT/mY79XIvFYiK
	pVZkrE82qFOiPIsGtFu7XCaXN1QdHv+Lz1GgUn2XZAfXKUkpRJGtHleG/1cv64nKczWaxO
	lRR+y+j3nFJpkfIR3KpaW943c398Sy3tv7AQfju8PJGvZxXgKvE3yqOe9VKQJFBgHG7dAM
	021bhYvD+IbKgYDyDUrNC/4LgUyYcC5my8T+bv7VyPMMqVkQUvq53hxToY7K7UR328tvc5
	0XcDkdkv4XUNRuF44aDgnzbkivpDGx4SRoNopyy6b/mpxD7i8wuQ6xg1mFXktA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=k2UhFjeAyygo6P3ArSEL3v18Fu42ralqmlzoeHTr5hc=;
	b=eIY37jxwWu6u2nwxeojdCc+sosqZsAZTLCnsssoKyH3nCwGnAZX/+ht+Nijlf3JehAsD3A
	TShGLMtcu9dRRh7ymtKWyzm6uE6X7bBWKnTwUCVvDdnxh6ijwOFX1uZGYg74NTbXco6fxk
	EC1s/0cR7Gqf7PRqnEe5A2ktYDJj40ezp0eH3RxRfJElgte3hZD/jNFg2SVhsb5bxVH9rS
	yWvvCXccqSPrwRMIglwyk4iwAySGHymjV+2Fveq7K/9/eMNhCldKFa2b1BDdapXgbvns2H
	7qITKB1lJKtzk6WKO3BSzPklefFYMEbXXzx45zN+O9UIbjOkfr2YmwpFaDt9mg==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Oct 2026 09:09:28 +0200
Subject: [PATCH 3/9] fs: ramfs: create symlinks with mode 0777
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261020-fs-symlink-fixes-v1-3-e7ac8c29b08a@pengutronix.de>
References: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
In-Reply-To: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792480170; l=836;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=CRRd3NiNK0HEOnRlYdJ6e6siV2sxSaswVGz4MteSch8=;
 b=Fw20fpy/ORCXi+IoXPFFCl1cgib3btevrZUx+BF7br0CeoZTZdUuehQH6b0+ozLzAckVbBif4
 P77gePtwDd1DBQHg6CAmxlldwH01g+LoKIKHYFcTMFyluIyv3FRorIz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_000939_206643_A7EEAB4A 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ramfs creates symlinks with S_IRWXG only, so they show up
   as 'l---rwx---' in 'ls -l'. Permissions of symlinks are meaningless, Linux
    always creates them with 0777. Do the same here. Fixes: b283b72639 ("fs:
   ramfs: Switch to dentry cache implementation") Assisted-by: Claude:claude-opus-5-5
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de> --- fs/ramfs.c | 2 +-
    1 file changed, 1 [...] 
 
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
X-Rspamd-Queue-Id: B69E220227A
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
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
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
X-Stat-Signature: xjxnbp9a9eppaisdtghuybau1ce4fbph

ramfs creates symlinks with S_IRWXG only, so they show up as
'l---rwx---' in 'ls -l'. Permissions of symlinks are meaningless, Linux
always creates them with 0777. Do the same here.

Fixes: b283b72639 ("fs: ramfs: Switch to dentry cache implementation")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ramfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index c843df6c5c..4c64310e22 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -171,7 +171,7 @@ static int ramfs_symlink(struct inode *dir, struct dentry *dentry,
 {
 	struct inode *inode;
 
-	inode = ramfs_get_inode(dir->i_sb, dir, S_IFLNK | S_IRWXG);
+	inode = ramfs_get_inode(dir->i_sb, dir, S_IFLNK | S_IRWXUGO);
 	if (!inode)
 		return -ENOSPC;
 

-- 
2.47.3



