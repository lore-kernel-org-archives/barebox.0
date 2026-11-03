Delivery-date: Tue, 03 Nov 2026 15:32:37 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xOFYy-006p8i-2G
	for lore@lore.pengutronix.de;
	Tue, 03 Nov 2026 15:32:37 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D5F3A2006C0
	for <lore@pengutronix.de>; Tue, 03 Nov 2026 15:32:32 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DfkmnBD4;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=YutPcpGd;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793716352;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=nf+B6G3Mg3dJEO1/GL3FOr0p+jzwlks1ZY9qK5378FM=;
	b=I0jOuWWIIjLmFAxU+XypTxVxAUoeJhYD0p7bZY0R+uXtygAh/3Tc7jFfOq6Ve4Q1wOfngN
	jRae2HvZSGMuEweRLbrQ4L63d6OcTpcrCGM3y3Ry2O14fR17P+A5mo6uNiHcGC2tZn+E3F
	c5xFSNnH46uJYDeVEmcMPJSidlAUTbe+WdWk1xrr8dNf5b5dWCiHR7Ud6mKCeadFh/eFoc
	g3RUtiEWvWjYBtmYbRvEz7yMD9yTWsyxox/sRZpzzT3w27xiCARtz/7Z0cyz7/R3dWEXnH
	17nT9twVanqy71j3JP0pG8Ko8MpjQj7v4OTTzuO03AL5yyVBqzVUYlw0T3gLug==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DfkmnBD4;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=YutPcpGd;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793716352; a=rsa-sha256;
	cv=pass;
	b=K8m+a+IwHLd5DiWQ1kAhhrDXWI7FBYyHnCjmQsVPmQRN+WGtEBdVhm1sQEpkFji2W9ntTa
	GU4SERW5BuekVDws0LHnV+kHHSB6myDLTHqx1Yo4nWM3ZMe25b6mQBh6pFQGX3GWK9pxhN
	6HHpp2p0HbtstOEqV1+9eOm+wAbwzoH8u8gKfWYtqDXJrsVB4ZtiJcUvhGcpu+BUw+qD+S
	4WmPdDk1txu4v5uR9r/NKf0KinvbF08HVu3CMM0/NB/n75W8rWAlamOppO4QUuxZ8w0YHl
	Knkqq2KMOJSMN45MBomr6Vbdc0ip9gsc0Cc1r2ezqZPjqbNRu/BBUeC+ulSSbA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=nf+B6G3Mg3dJEO1/GL3FOr0p+jzwlks1ZY9qK5378FM=; b=DfkmnBD4YYQkSs+NvGsACYwQpq
	vCw2zCgy7anddRJ4HOA1u/8oR4ewGvDmP87AU5ecouwFAejKpWaypfglGD4Nm1Gz2cNTGYw1Fy9Fh
	sOBYuwoWgL0HaZPRzN+XLe4qyJJw6MTkEC3QBcakUmBxEDKnaqCuZiNend8pTbVVV2NnABnkmBQ6z
	O788XuWmmDwd3En2iNSBgUtywYQNI0c5Q5j+c8loNmzioGHs79Riut0SvE6j+t1VVQ0R054z21SQs
	W1AcJJT72Mb+cDoxxDoN4POXzsZBjFHotTuzdzNA9/ev1U/1x54ecit7Fw8B+Rk5c7txubZM3riSv
	tyvWEXUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOFXe-00000002j0s-08cD;
	Tue, 03 Nov 2026 14:31:14 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOFXW-00000002izn-2B3H
	for barebox@lists.infradead.org;
	Tue, 03 Nov 2026 14:31:12 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 902C2200FB6;
	Tue, 03 Nov 2026 15:31:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793716260;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=nf+B6G3Mg3dJEO1/GL3FOr0p+jzwlks1ZY9qK5378FM=;
	b=YutPcpGdfgt7rfrBfXtbUUbjaV9kBHnbzfXGVAn64+JHZFJ+Cj5wNNqu6ASJrqIjc/Efid
	Nu43tTg8oQolwgxNEyUpuPUAi1Sm1M/dZVqDTwqkOF3ZFOrsyqGFxj6OX/BZf1D+cWSSwh
	ugYzGQZ01Tx7X3D1AZePoGNlOtLyc0OwZBoj5UcOGOtyJpnTqyHqFK0QMS4idXr3AJis+l
	2h7DHBUxtkFRK88VvOANO6HWnO2aNG+BMAfRhBi2YMFRU5YrGigCqaA8fgZtUl5JpujQdo
	c6MOUbCacSiC/0wacuyiznuZfk+Kt/uqTzCvhi6iLobjLGb1ALakHFH7mrmRnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793716260;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=nf+B6G3Mg3dJEO1/GL3FOr0p+jzwlks1ZY9qK5378FM=;
	b=dzSfptdbJfBS0AHWdHs6VotL/MpH84tqoyCNqnrLfYdZsFtP9VkhQWOoOiljLAWayIVOBv
	XdTgvAn2HcUiGRTN/aX/X3iKpAg06hqnnWVmdd+0bkDE7h49cBUcJ6sZE9/7ogtIKa+wLU
	AmTsWAW4+zvju3DQZet/LSC7pfCODFxXJPCBpTd8kxb/nB3+dK/O63GfikSNk8aIV4bXpP
	W3pky7iXK1ZCLZRMwC5VlhLVnrx8+qFn2P9Gljh4DtZZFBabmIuXRQc35UrDk83GXCfRDt
	t7mQchI5sWqmUDlm8z1ZNiuzdNxm+5FkuFaA75nP4Gkfl7p4SLUmdgAfYmaA9g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793716260; a=rsa-sha256;
	cv=none;
	b=P1T7VUMg/hdGlB66CTiDBv3a7tz4YU4COEggYrDZyKsOcjIqWHrXJPI5L8540Y+wsFKKAK
	2CBWVTT/g3/l05lJRn1HukzldyXODSMPNJ97MThF0K05H3uylF4P1mhX0SMpIbqKEf1f5S
	69ckLahJ4pY/Ou3+wgQU3h8o1jn5QHQd7LniAPwqV0ZGKY8T6vuyLpQekXX7kPaVmBG1S6
	IQhWeFCtXtiohVDxSj7yyy4knK/IkCA6M0YJpVG+Bj0HGLsQh3w3/BUSF6aZjz+fFY7Q0z
	H2xQ2Ca3W6nwRpM37BNEEss+SSjLdlaRDwm7bIPa5pPy2I7mQwm2eNWr4gqj9g==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 774DA7406DD;
	Tue, 03 Nov 2026 15:31:00 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH master] efi: loader: disk: don't install a file system on raw disks
Date: Tue,  3 Nov 2026 15:30:59 +0100
Message-ID: <20261103143059.853339-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_063106_709912_57CE4F7C 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> efi_fs_exists()
   matches the detected type of a cdev against the type of every registered file
    system driver. Drivers not backed by a cdev, like ramfs, devfs or tftp, leave
    their type at filetype_unkno [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D5F3A2006C0
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.98%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: koazrre85hp5mes49tepdez3x57pojh3

From: Ahmad Fatoum <a.fatoum@barebox.org>

efi_fs_exists() matches the detected type of a cdev against the type of
every registered file system driver. Drivers not backed by a cdev, like
ramfs, devfs or tftp, leave their type at filetype_unknown, so every
disk with unrecognized content matches one of them.

Let's skip filetype_unknown like fs_detect() does, so raw disks only
export Block I/O.

Fixes: 3146c70b0f8b ("efi: loader: protocol: add Block IO support")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/protocols/disk.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/efi/loader/protocols/disk.c b/efi/loader/protocols/disk.c
index 493be8c5aafe..d56c9116460d 100644
--- a/efi/loader/protocols/disk.c
+++ b/efi/loader/protocols/disk.c
@@ -163,7 +163,8 @@ static bool efi_fs_exists(struct cdev *cdev)
 	enum filetype filetype;
 	struct driver *drv;
 
-	if (cdev_detect_type(cdev, &filetype))
+	/* drivers not backed by a cdev, e.g. ramfs, have no type to match */
+	if (cdev_detect_type(cdev, &filetype) || filetype == filetype_unknown)
 		return false;
 
 	bus_for_each_driver(&fs_bus, drv) {
-- 
2.47.3



