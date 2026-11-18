Delivery-date: Wed, 18 Nov 2026 15:53:58 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTh2r-000niG-2x
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 15:53:58 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0A266201F17
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 15:53:54 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=qn+SvF4C;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=RK01zlM1;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013634;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=JUqp/7aZwsijY58fj5N+Vciups86hNGyAX2jkuI70FI=;
	b=fxfxbqdLAk2TP0bmLWQJ7IL3KFIqXKoPrzwy6ng4aRoLLAsM69hDkBVpXg2wg/BOR1Io3u
	C+oCymdQxJ6FFHdYzmxYtDajT4g/5wB1VGIE7PrP6vgkYjzXVMEhfbdvlkm4FRkB8/hu4X
	nWJpahTlfsbCO46kzhGHMBnRfT08nckr7pbj/iIEqkz6u6YKx5303Egwk2WGz7lEXPP/Qd
	+KLCMA3pMrCB++xL0uoSVlFcdKzrJkFUnTyO52BtI00aVuyV6AFPa4QCVNJFeiO4z7n439
	CSpiVSgU1r6h6BZvt7dnh6GEQG+97xMWrrn8pFHOuWgkGKYND5ZPWXlMeOARaQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795013634; a=rsa-sha256;
	cv=fail;
	b=BeSV9EPoXb7QU7TxejsCvyBXEkKdnCAQ4WDFwhmhWuiZgG4fWFkHkBNSYQp78zukKDj9v7
	PCfn3tXm3hJsqDle6YMA9hHX5L1MihIi5vtRRxJ+/IGSVmzrMTfkhXi3asDr4daXgebtkw
	7XSy/pjrWdIi4uMFzkbcHyfjOTMbU/ugL7M8mrDodWca2EXwLs9zqNGDzPCrqxcHkWE6SV
	Dw+n9ZnqDjrWRKUMaWfKY9x2s5drNaUfDcFdPlrMAC10zG8IJ2K3hzal2nwQDOk69myWZn
	yVYq7+1lqj1z2iWq7SE3XhhXrxdar2SIJcFeAuSR90FNIz/Le7USSR6+cKACLw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=qn+SvF4C;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=RK01zlM1;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=JUqp/7aZwsijY58fj5N+Vciups86hNGyAX2jkuI70FI=; b=qn+SvF4CkR7bTw
	wXUMO6d6DVU4KsdlRd9iayWSPDdl/hZ9/2R5LzmKIUTYCS4R5m43NMterNBgwGHOzlCB2S5KaT5zn
	VFvAVYgdZw2P0TBQnYNIW42d+xiRguxTDGAaMZHrEFtW6C/kcTgoZhdgFBj34hm5aaZjWHqGHgsUm
	CvUkXU5Ldpw9PqlgLuMxmw+1b/8iK4H/H443yBXWxLtOwD+h77NqV6NGbDsCfqKKGTBFtzrT9jXWZ
	ekHffmTrK6eLnrVK9WGw7TydXpSoK+I1jtKJCGX0naXIfwD6ELPSHDrSiY0MizTRrQS8TT5I2rnn2
	9omYJK/iK6U2bkmSEbxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1R-000000099vv-1hv3;
	Wed, 18 Nov 2026 14:52:29 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1O-000000099sl-1DmN
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 14:52:28 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5BD67205AF7;
	Wed, 18 Nov 2026 15:52:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013540;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JUqp/7aZwsijY58fj5N+Vciups86hNGyAX2jkuI70FI=;
	b=RK01zlM1tJJO8QeNjQ0cPAdQ8pGvPynVO5vdkOf7LQUMnhQP1j5tCGwCMDM0AhFd2sl9Yz
	A+Xn4R/uR1mYANMpJLXPH2QzVjwLweaSb15wpzJDrVHe4dSr4hUo0ObZukNOiqH2+cFexh
	FNuoYo3lmkNb/SO0XS6P5to55xrpT2ujpEkbYhurhVj/oOOiZhYyj86Wh5Z793nwlJVgai
	mLppBKXHgoDmMxTXL6phTdvapZhFiMRO1TSugiltyznMGKIn/48wNLhOfTc/N3nuWFyP8R
	clq9tTAjcz9Z07k5oz4fGpSigjHiDDpz9RmFe8UiqJu07mGCmuGPTK/4OCOx7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013540;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JUqp/7aZwsijY58fj5N+Vciups86hNGyAX2jkuI70FI=;
	b=Q5zSd7h9DBrmND1ECpk99Iw6XKROMuURJ65o1yfCJ48ZElGQ9V6lkDc68LM7wb8nYTrYg6
	6tE9q40lJJpQYsTpdx5N86XDMH90squD3NB7hFhXsz5Lop/OFTlGr9PjdKp0jNerzUzIhY
	giSWlsH3bb9LMOEyQS9AZ9fUuDJMsFl9hf38qZbpS4reBtftyjwQ3VlpeMAQ2etYlp8iet
	/Z9mNY1NDZXKDobbd+tJnUAlMrO5KhpVjcujtWiMm68/No+KNAYGnLMfwUD/G7wWlXRpfA
	rUBkUVNzK6HurHplHHhO6FtgMy6i5Jdnk2Aufo8kiCfSGclFtJ5GJ3jpi7X7RQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795013540; a=rsa-sha256;
	cv=none;
	b=XjUeiYmy6F6F77wc/bJdnNxvSUlVMTuartmD2HLirWIhhrz9ekYF03XfczoLdlg5iums/h
	KIfVO/AI6ErmeOV+yow6TQmvu3Rsqh6onhxeCG70LG20wYIjMKkupqKtyoLKPDXxVrofKG
	m/vRqc88GLjEm0/7ND+VUc7NfRfQHF/nZbZOejHOwUauiT6njap72ch5rI7P75ZuGnY4Xm
	tupaZiuXFno4mi3Cc3yMSJMurMFPM2sOcihHBlwdYr/a7CwziKlp2a1eegJFknlILFL9UG
	6W7DSNsG4aRr0hmp6i0P6VDwJggs/xMVI6/U2Fm4auifppSgiEFyiVhS0o7H/w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Nov 2026 15:51:56 +0100
Subject: [PATCH 06/13] fs: nfs: drop the write and truncate stubs
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261118-fs-conformance-fixes-v1-6-59b59ec15d47@pengutronix.de>
References: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
In-Reply-To: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795013515; l=1742;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=sXa9GGRStvkYOZ/1aahqqn5BEtjQ9ScylroxGc8Idd0=;
 b=4qOKfGpVATPLrb7rLnYtf1tiHrZ9fuFw6GJj4yRNhmMHjCua/2imQdVz3bYh+cF6wGAJIF+dA
 Xyg032ioiSQAKjGWMuZqRc/JI+lCI5X9ZZLJ2hUq/snhh4xw9yOkfzX
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065226_527646_EF73E9ED 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The NFS client can't write, but has write and truncate operations
    that only return -ENOSYS. That makes it the only read-only file system that
    fails to truncate a file with -ENOSYS rather than with -ER [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
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
X-Rspamd-Queue-Id: 0A266201F17
X-Rspamd-Server: mx1
X-Stat-Signature: d6coxdw9ufu87kqmtxc1prj438gknoqi

The NFS client can't write, but has write and truncate operations that
only return -ENOSYS. That makes it the only read-only file system that
fails to truncate a file with -ENOSYS rather than with -EROFS, which the
VFS returns when there is no truncate operation, e.g. when opening a file
with O_TRUNC:

  open("/mnt/nfs/file", O_WRONLY | O_TRUNC) -> -ENOSYS

Drop both stubs. The VFS then fails writes with -EBADF and truncating
with -EROFS, like for other file systems that can't write.

Fixes: 9ede56ad24 ("fs: Add NFS support")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 7a859a718b..496dd742ae 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1245,11 +1245,6 @@ static void nfs_handler(void *ctx, char *p, unsigned len)
 	list_add_tail(&packet->list, &npriv->packets);
 }
 
-static int nfs_truncate(struct file *f, loff_t size)
-{
-	return -ENOSYS;
-}
-
 static void nfs_do_close(struct file_priv *priv)
 {
 	if (priv->fifo)
@@ -1386,11 +1381,6 @@ static int nfs_close(struct inode *inode, struct file *file)
 	return 0;
 }
 
-static int nfs_write(struct file *file, const void *inbuf, size_t insize)
-{
-	return -ENOSYS;
-}
-
 static int nfs_read(struct file *file, void *buf, size_t insize)
 {
 	struct file_priv *priv = file->private_data;
@@ -1543,8 +1533,6 @@ static const struct file_operations nfs_file_operations = {
 	.release     = nfs_close,
 	.read      = nfs_read,
 	.lseek     = nfs_lseek,
-	.write     = nfs_write,
-	.truncate  = nfs_truncate,
 };
 static const struct inode_operations nfs_symlink_inode_operations = {
 	.get_link = nfs_get_link,

-- 
2.47.3



