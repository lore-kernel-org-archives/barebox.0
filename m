Delivery-date: Wed, 18 Nov 2026 15:53:26 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTh2L-000nf3-1U
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 15:53:26 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8D8F320102E
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 15:53:21 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=XnPtZ3mz;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=ZClHLOxZ;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013601;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=rEVhZ80xPhZnyq2C2UAn9/rIU9PPna+3WA5Ls70DyW0=;
	b=eeG+lqVQTRBLLJiuJWinmMUFUTMVMUXs1Dt2bEv2kOunVdhh9SfXz1/yc9vKeQKP3tPK0+
	m5a9sTklCW0zuO/qdaHPFlU1VCOyl/ebpOe1/LyCazHdrkP+p8qR65u0K6iPeqkbzg5PpO
	1CBO9dHQG0YGMEudI0vloYkFkmb0xN7Bctpy5zyHEGmz+wxVVpVUHxPoxMuQTN3re1ttYd
	J5cZb9XonuJCZF3ixJeFR0L76n1k05qk6Axd4ER7MI/eSbWjrmJ9yAcUX17ZS/h6+ZfdLU
	CYKVNLIlrF7fGHkNdalFKfglsUmlPhhaj9a17AL5CK2W49Ydex00Wf3DfSALWA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795013601; a=rsa-sha256;
	cv=fail;
	b=O/Vm15exux8gKO2l5G11RBLsedB1TtlzHObsZAGf8qy1cywkfI0dbJYS2jup8CuKnXo3c1
	Uoz73jF+xCHNMoIaiJ4ohPuVuUQtZZbO18s00A8iJkyxKrr+d5C7PEHCYXE3/1Hx5bAmOW
	ZOon96BSPUmOeXxfhtz722YvMXXUzz4XuU+bSpRC1LGhzKgxdRkdpc3yMq3umaYZZAP5om
	0lZy7FnUlw2pcS86leSCciDi5wEjU2SWLJT0gJ6vCzyfLPOEN64cpI6MkM3Tz4q+/BSYCU
	RQxXq3XyIRlyzNNjtUW61QGozkR9hy4ia5gqtV3P8GUSzLrzydqGoX8lk0SNWg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=XnPtZ3mz;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=ZClHLOxZ;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=rEVhZ80xPhZnyq2C2UAn9/rIU9PPna+3WA5Ls70DyW0=; b=XnPtZ3mz/NmYnu
	dIIvGB9IKeqfABVOlmsrCfaLJ68NU8slC1Ao2IntyIdkFtATO225Qy+QjvMpMeeWojOJeo3ugPUhT
	ydTAMnk4qEzt0IZAgPEFRWb7HThTDiKYYjCoInhfd37QcTMXxXfegoY7IwPASo/BP2NALfo1vaBls
	VxQSwPOX/wiurnRhSahYYZXtZTZZtjfp8mCfALUstl1F6oagTMfezdBAtAka41z7LXxhQ/ZdQFDR6
	IOxyX+xIVkhoHta1Z++G+dA31JCeXHBkJ/oY0erEwANsYXgUoGO967JFhr++1h96BVvMaSqV2ZS6u
	EOVYV+VSgJ+jwOnJ5rNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1K-000000099qw-0Pxn;
	Wed, 18 Nov 2026 14:52:22 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1H-000000099nq-0D0A
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 14:52:20 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 04BB1205A6A;
	Wed, 18 Nov 2026 15:52:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013532;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rEVhZ80xPhZnyq2C2UAn9/rIU9PPna+3WA5Ls70DyW0=;
	b=ZClHLOxZ4udNheGn+Vg01edTau1xvKIhPSCl+MbK3miX71xRg5H5bq/ZoYAzumtwzDLH/O
	oMiexVO7LLW5xHSMI/DSk1kt+FbQMy8F2d62UYu+iu/8FTP4/rMNPJEMn/1aOPU+sI2dJo
	t078xsa4F3FmO/k7hgNZDWfcwLnmWsr2kTehoO0XWfQ1peshZ6HC67s9kEnTxRhqmU/pwS
	27SihNucHPmyDSzjfVO4+ExoZ/GUV775A2fyVw1ecluNO+io4xCX7Cer04UhKrjT6+I7hK
	v1JI5P2qsFV/+ok2S1xL68JZTasdV8/dO/Cqa7BbWwXUdcvav1p5DpS84dip2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013532;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rEVhZ80xPhZnyq2C2UAn9/rIU9PPna+3WA5Ls70DyW0=;
	b=HZvD4kzSMTBAY/anD3HAsHruPHalMK2pNVIjnp19/j8oOjVwoyiyZ/aMU3zuyrGzSa6qog
	Mg3EUyEEdH/mJ0K1dZeA47bpTTESRkf/5NSOqBdtruBO35fA8lT5fA5pBDdR3QV3YQScP4
	ygqP0rUJ+Ff1xUVV8ir6Z88qiuEO0M+L+vcDvf5ExN9q2dHAsHi6Yd2fkslcb0ToKXyxiP
	QDmLcPmNCz08eog0JpXt0ZG0UcNGl1IhdOYYpPIjd6pC47g2EaQkU58s29YWaiB9/HMONx
	FlDE8iAM6QyHSQf1hWovcTkSD4jJX8D1CfLah7g4LxZzmO4C+Zti0NHl9YVwKQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795013532; a=rsa-sha256;
	cv=none;
	b=ZwJidO7yCUUtxT0I6LV6NwXTuW6QqCVCXv5LaDDLqE1H88qtqJhc9Sh72XVElpgGCSSwmV
	EGpT8YOnUS1TjSAIjO+inNGnYu0L415vjqSMqq3DADkL01oXF4g+qOkFQwvp5hxF5vbR9X
	2i7iK9m8uTEtDaz6FqG9Oh1/Te+RyUU4zv1/l+MGNI28Qx7/6VxmqXyiKw9OqQPHLoDCze
	IATFDFVFKRIf/gnGIJfhLNW0cchzwkinRkIF1rO+mJlN5B10A9mI4nnkUUT90HqE+OEkVp
	Zld0ZA+zC7Of5zAqx/xm63FU5jwmG+Q3FFTtAXpfHf33wl04N/0iPo/lC6zdYw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Nov 2026 15:51:54 +0100
Subject: [PATCH 04/13] fs: legacy: return -EPERM when a driver can't create
 symlinks
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261118-fs-conformance-fixes-v1-4-59b59ec15d47@pengutronix.de>
References: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
In-Reply-To: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795013515; l=964;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=mzanWexsc+YXGpuYiphF3TdsWH7NGOIKQUdGOFxfk3E=;
 b=ynA0McpHgZsmKmWSDErrf2c8asco8faD45pVoUOwW9n/H1VUxPI0hp9fEZP6tgCZWeGLFjGvE
 j3tEkgM3twICRxVJbpeuIuVZC0a+X8yF+qejsGBW/SGI5N+hoq/zvJL
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065219_285396_60CD07EF 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The VFS returns -EPERM from symlink() when a file system has
    no symlink operation, like Linux. The legacy layer has one for all file systems
    using it and returns -ENOSYS from it instead when the drive [...] 
 
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
X-Rspamd-Queue-Id: 8D8F320102E
X-Rspamd-Server: mx1
X-Stat-Signature: xb7nrzagjwh3dib4s5w4wnhj5b4ooszg

The VFS returns -EPERM from symlink() when a file system has no symlink
operation, like Linux. The legacy layer has one for all file systems
using it and returns -ENOSYS from it instead when the driver can't
create symlinks, so the error depends on which API a file system
happens to use. Return -EPERM there as well.

Fixes: b3fbfad7ae ("fs: dentry cache implementation")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/legacy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/legacy.c b/fs/legacy.c
index 5344737fa6..d90232623e 100644
--- a/fs/legacy.c
+++ b/fs/legacy.c
@@ -257,8 +257,9 @@ static int legacy_symlink(struct inode *dir, struct dentry *dentry,
 	char *pathname;
 	int ret;
 
+	/* like the VFS does when a file system can't create symlinks */
 	if (!legacy_ops->symlink)
-		return -ENOSYS;
+		return -EPERM;
 
 	pathname = dpath(dentry, fsdev->vfsmount.mnt_root);
 

-- 
2.47.3



