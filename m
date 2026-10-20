Delivery-date: Tue, 20 Oct 2026 09:11:00 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJ3zw-000vwK-0B
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 09:11:00 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DD0602021F2
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 09:10:59 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=43AKA89B;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="W/GcNMTH";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792480260; a=rsa-sha256;
	cv=fail;
	b=EYx97RDNvcBkZ0Rc50fsqbl1n12uK56OrsdHoj/mg8YdHvkzaJaRKgHBBc3lGwnkuDUYS6
	ijS30XeYTXPrihcMNfv0iis33+26zRcgUkXQdjBOGDOc9jZp4O0Sps4grzTZOsYyxrxsl0
	HbkI2VoHg0Le/NzuULdBdGnuhqMy27nhgK11wItfz1xnGDCrrysu+fcavwWwRhJS2TW1Vf
	B+Np718YSSaTzXhaA/zHEde5nNkAOcGoakvM4ZFDd2uUyppncMK+cFvvg4ksIqzFEZXalY
	r+pqFIUfkDH+PZ+QPO059pfFjeN5iuL5KjGdhw8Y31TrpKKdq1fSvDo/6csQDg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=43AKA89B;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="W/GcNMTH";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480260;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=kokKSc4KLQCmyJjk4RbK2T/dBJIsZ3ne8oWDRtUafO8=;
	b=gdxchpDNvxs2AlclE3v1YYcSDfZPPJJPXsBy5FZQEkWOevgFs7Q6tWBQtCNr8rmF9T7sGM
	/oPtCkU+vWbSiOA/EfI+pB+TPVnICszrFF/0zG2qUIqCJGT10LB4B6XdjRfB5XEdSKaWQg
	a4n/AzyTdTc8sgp1e5tAL+en0NB2p7WOaeLR2nPfgOOFfQAhy0IC9UGxl9U2PwvgBxNms7
	6ODpcvyxycFNqSfAI+Dx02g4kwe3wIC9iOxv2hrKGnKEDg9OL5GKLiceruwVHlWAug2SwZ
	nh4ld2w5HQiXEk7hgSly14U+uQ/wKZDjr8aYxh/QasCx8CpkRXoDlOsLrrUmVQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kokKSc4KLQCmyJjk4RbK2T/dBJIsZ3ne8oWDRtUafO8=; b=43AKA89B90YofHySdpkLxoM8sR
	IzPqL+uITChQ26Mnzsiu2VwvVmNTRyB4jzWVAmlAIFK6fCZkS1bskvjFLxfdDEzdmQc+89qbW/I3G
	XlWKcJFltuz0Sd/9OQmC7V9ByARyJ4pxg6YqySbsm7G30Y0KyQQwROkQs2XbFwvSw2KJVAOJNZQBO
	5JXbB6rkSP4HjzzewP1IpTiarIrqvUhWx4A7LtAJrGqpvNsCZNFQiVi7sLWK7DUWzXOHdJsVNd22+
	FJjYJxyHyZdHn40xd46wuqRxhLGFzZaxA8Ee/L8DApL50G5GNTBh6ESf/O+aTw+/GQLAb8kCpJusj
	i//X8qDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3ye-00000008zJs-2kiE;
	Tue, 20 Oct 2026 07:09:40 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3yZ-00000008zFV-1O2I
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 07:09:36 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id AC573202136;
	Tue, 20 Oct 2026 09:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kokKSc4KLQCmyJjk4RbK2T/dBJIsZ3ne8oWDRtUafO8=;
	b=W/GcNMTHGVg1rBsDDpf/r81LwTpoxjOgWG+iLdvjNjDHKkCtgU8+Fyw7jH5rjUOF/AbWDH
	JbFiegvN/eR46bsi7sYhGaM8nUbSq2ZwRbAe3nczi7lcnEV0kaDh1ud+rheRbP29Bks3/R
	t+ZuMcphWJSTuum/BbimvLbypILdYj9Q634T+s60ZjJdIAPtwl3KYK2+rXTuMfunKf9lm7
	fLZve0ND/vhCrEtLwcy4paLjXEQPleJySo63WZWtyUNyfHUeGEfmYMArV59ur3rHISjuLX
	d81iwCYQAWfK4uWu2JRMZp79TVctHwj7XF17eFEi6BkzM/SPXhxRNlve3atnHQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792480170; a=rsa-sha256;
	cv=none;
	b=S9mVXUH1maz80XhzUJ3p6yFiW31Fx1Pf/42rBQk+RvQGghcmRPCTUpqIpmmdPcaFEA6PK1
	9LBJfm2ydyu7zrb2yVzYC5HyNbYr4c71k0Lzbny0QR5r68msPmWNYvrObxjh/XwDm0hBb1
	ANAvGG3rxLysI4WtT8mDnzEIUC4GYqgkMJu50T31piDxXZtezkGKVayGaZbo2gxcOAyhdb
	JqlKhIFsIT74enjKzfrmHbscLvp9Kat2PtM0Yjs9bQ2SW7JyyLHJq3o0cfoIyBTwVCnPDD
	Z3HZbZG58aPeEB4rR8axOpMU0RTxx+vLWGs8A/iHg2lSvH8oVE7QgQJiuQoQGA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kokKSc4KLQCmyJjk4RbK2T/dBJIsZ3ne8oWDRtUafO8=;
	b=a8+wBLFc/UM+GGhD0+0gTm/lY5o6/COzoz1hCDxcC9erZlLASFKQjAQvIzy0UbWvGGjeOh
	/rD6292RMGEVi6pqhVVujGEm70WSb8MgNxEydlEVLMYRRMSM7kVhkjlTuqrfTpsRVcqjYd
	TmGbuLj9kBHA6dJq4qYHoVIe/Y4hhCWg84K474MW9FDCLshs06hf3CA2N2lrNX3SmFS4tj
	1pCeVBR9ced87M1zWMKFZbXoRvx5RmrbIIUjCnjNlxrbTBwHruQyhPyTIZ4aFz4frvFeRj
	nomJMZriKJXXYZN8xzzdKFaDPCWWrCq6OR9ny9YoLadLPTb/R97YLNrjoPW1OA==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Oct 2026 09:09:26 +0200
Subject: [PATCH 1/9] fs: ramfs: report symlink target length as st_size
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261020-fs-symlink-fixes-v1-1-e7ac8c29b08a@pengutronix.de>
References: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
In-Reply-To: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792480170; l=1221;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=QawOe14C8wzmohHZXTsOrAlz9v5Y/NRXHhP8A8M1FxE=;
 b=xvHuDQWny5wzPwjSy5ubQZNcXgaZfPWiizyq7qS4Ji5rUqsEXw9opTzhEtHVzCHYMzsgNBbZN
 61RpHLAWtXRDk6qAalTduGqpRReds4WfFdc+pyGLJFjJU2fgJkGK6hK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_000935_544980_D2346111 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Since the switch to the dentry cache, ramfs symlinks report
    a size of 0. Before that, st_size was the length of the link target, as on
    Linux and as all other barebox filesystems that support symlinks [...] 
 
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
X-Rspamd-Queue-Id: DD0602021F2
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
X-Stat-Signature: 5bxswosocfee6mnbuoqu3cj4mgxgrbu5

Since the switch to the dentry cache, ramfs symlinks report a size of 0.
Before that, st_size was the length of the link target, as on Linux and
as all other barebox filesystems that support symlinks still do.

Besides the cosmetic issue in 'ls -l', this breaks saveenv: file_action()
allocates the readlink buffer based on st_size, so every symlink in /env
is stored in the environment truncated to its first character:

  ln env/init/automount /tmp/e/foo
  saveenv /tmp/e.img /tmp/e
  loadenv /tmp/e.img /tmp/l
  ls -l /tmp/l
  l---rwx---                    0 foo -> e

Set i_size to the length of the link target again.

Fixes: b283b72639 ("fs: ramfs: Switch to dentry cache implementation")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ramfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index d86bf6144e..c843df6c5c 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -176,6 +176,7 @@ static int ramfs_symlink(struct inode *dir, struct dentry *dentry,
 		return -ENOSPC;
 
 	inode->i_link = xstrdup(symname);
+	inode->i_size = strlen(symname);
 	d_instantiate(dentry, inode);
 
 	return 0;

-- 
2.47.3



