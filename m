Delivery-date: Tue, 03 Nov 2026 15:33:55 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xOFaE-006pAM-1q
	for lore@lore.pengutronix.de;
	Tue, 03 Nov 2026 15:33:54 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B89EB20103C
	for <lore@pengutronix.de>; Tue, 03 Nov 2026 15:33:50 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="xeDnE/rc";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OqQXFJ8H;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793716430;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=FA5ztMT6rkmjXYl1JDIEXKEt5u2tUdYPSnQ+C7N8XUI=;
	b=QNox9S17wPvFGb7Ohu5a97U94TJnqAkXv01sKiql3mbmA1Vr+SQsyaqNwogXkCxjVExMIO
	TtFnjxVQqFU3nOdDjbJL4C8tygMXTc/qcKeg5GnqMqpjDVpjtVGVYFG8yxUhjYxM1HtaLJ
	d00CNRgjeMFQJ28lA/LSWa2LwPVt9Xfl/CId06HiZpuVOriqaUxB/CEMTAnfXEj5MoQ4zo
	r1orwkmTAFkDO8vGr10QsLS5mip3ul2NZSa/druJCRV36cSvIz1SCBq/lZG8IjAXXAARxp
	DbBi6yEUurlb2/jbP8aIqNNMBdKOgA2+3f0uRp74DJhNngFHDRwSx3RpU2d1sA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="xeDnE/rc";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OqQXFJ8H;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793716430; a=rsa-sha256;
	cv=pass;
	b=FP5E8tLHnvR48zXn5uet+OyBIPr9X+2Vk0CYpvUsRtEsl/jBNgvG06sdSistiuM7S4l91S
	FkYubYTyDR+mjoQQYs06qU/WUK6ZG3JMCJIGiwCI058Wtzy/hDik+tPAB8vDRzv+M8rt8b
	qjcUaMzVn7bPEMJdIrhYnsmiTXTdU0GsChwOgTi+1VeIgiYqCIC+ZWdi/iZyGg9Mz/VPBB
	zI5PgYLjEFGNgoRksASOn7GFk3smaJl8jgsM1oSRi5jm0M8N7Hc+O2z988vBh8s8Orrdbr
	qOL8hgOHIPkcoSZ+9RtxHoMqj4rq/9jTQ7yt5TVH0Nw24hKPJvWXO2FujjM1QA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=FA5ztMT6rkmjXYl1JDIEXKEt5u2tUdYPSnQ+C7N8XUI=; b=xeDnE/rckQCt6zx5wDVsH407VI
	ZW62KlbNhXjL8g76ZUE8gzEyk4YCx0fvff4Cdmwbp7Zu0ayh24ul3GnwxKv7bPGbsjnY1eCBzpyHi
	Vs0bznrpDhg1YetjM0+WuHCnSXtntg5dRd+hamd4boYPRFt2yaguMHO/cVlwtjzmeLg9WPGYYRyB3
	QuoOatw6qUaHbkEgO5mKSQOhnESSs4hohaRmkfayME4LT9uvqEpfN6qrCCAjKsRhEQbvb5D8t0erX
	bflP4sFLR5fYUslE7Vsznh549eZYks1nYNMtd11KHyO2S0Z/rAVrNU98j46AKvTuhyycdkZ3E/pJ8
	gAt0Li1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOFZ5-00000002jIa-3wUP;
	Tue, 03 Nov 2026 14:32:43 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOFZ3-00000002jH9-19rT
	for barebox@lists.infradead.org;
	Tue, 03 Nov 2026 14:32:42 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8B685201CE0;
	Tue, 03 Nov 2026 15:32:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793716355;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=FA5ztMT6rkmjXYl1JDIEXKEt5u2tUdYPSnQ+C7N8XUI=;
	b=OqQXFJ8HNJUQJxpJBR8XkSHIaEUNmr9wcvyNB80WYTeQd4J2gLZrVmJreC6DVGT8VywXNy
	3/VSAzZJbZmNXtTC+v0EfU377w6asD+mrA2/dKi15cI71mw1mu0FkGbarxMxxIi1KFnFT6
	GaEOtfQYnBKVs3kc3hHesh8ZmX2iOFqHdCg6BB3TQ7HAfRjy2wFXr6+OWznICSnT22FI30
	gcSHg5Q9OvdzNR/F8Ch3uqp/flJqAE5qoa1AkjPnCqfm0H1lTHQPa+xWPvAeviT0Ad1J68
	RRQey36GQPsra8mFWV7IBzPqrkgsRqQ653qhVOsCbf5UNEpcRmgGyPYCfx9zxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793716355;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=FA5ztMT6rkmjXYl1JDIEXKEt5u2tUdYPSnQ+C7N8XUI=;
	b=eqRgFDx7godT+obavSJHn3hCkfE5HEpfsUuL5gKoe4evc+r7Wa0jy2OqmPLkIo9Hv9HHDT
	lThmekhX6MC/QOmUXGjzFAj7Tm0zBUzDoQFY6ih1fzKIVbagCxBt8fpUPt9Gthj6aDdt1b
	L+F1Wd6bej3ddgvYwFqtRDSNjRNZ9akxZJw7jsQ7duvLVLbIvOmz2l5hi9zaHPGBodQtfv
	JIQh1XxbmhNyFRVc9GrEFMojfw85OY3DVpdNlXq98CxEiuLseVp3r20gt9YJQvhxLUG+Z7
	N4/qNhC5mMs2EyiQOLleDgqVomE76UrmBmuDOf5mp1M3LHczgHGMQbzSYgUh8A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793716355; a=rsa-sha256;
	cv=none;
	b=aZeaiao9uBSXsHCsrzWmIPqNbx887ACmZZHmYrD68XTy5lgeJiPZxgkbOFIFBdQPXTskUs
	/yGen5QKjOQk4tGw+DBEcnuBisQ01JvOiZELnxWwu3IxRnG32pJf4cbd3FvUtSReqsfsGO
	fAoaY/AYTvw+f1IbH0GNUmWUYr4ak2puJj0Fci+fMhf8de3gctuKXDVKOuCqVmVhjJn50L
	HhoXMhEla3vpquFakGXcyTFOKXZDihWKk92Txc0ON4JW+qepmDELPQadRjAe7+xGP6r7EX
	/LYRBDPC2NxfqSk6vONLm0Wiwjr1A0r94Fu2FhB8Oeeuw8dECMH1PXQkpsfuOA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 73098740C7D;
	Tue, 03 Nov 2026 15:32:35 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 1/2] fs: pstore: don't claim uImages
Date: Tue,  3 Nov 2026 15:32:29 +0100
Message-ID: <20261103143234.855394-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_063241_474661_18075191 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> pstore_driver sets
    .type = filetype_uimage, likely copied from uimagefs. pstore doesn't read
    from a device at all, so it shouldn't claim a type. This is harmless so far,
    because file system detection never reports uImages, but if it did, mounting
    a uImage without uimagefs enabled would mount pstore instead. Let's drop
   the type. Startup code mo [...] 
 
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
X-Rspamd-Queue-Id: B89EB20103C
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
X-Stat-Signature: yt8nmp8s897gc5i174esj6apqqscjj9p

From: Ahmad Fatoum <a.fatoum@barebox.org>

pstore_driver sets .type = filetype_uimage, likely copied from uimagefs.
pstore doesn't read from a device at all, so it shouldn't claim a type.

This is harmless so far, because file system detection never reports
uImages, but if it did, mounting a uImage without uimagefs enabled would
mount pstore instead. Let's drop the type. Startup code mounts pstore
with an explicit type, so it's not affected.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/pstore/fs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index 88951632138a..42825d01ce76 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -288,7 +288,6 @@ static const struct fs_legacy_ops pstore_ops = {
 
 static struct fs_driver pstore_driver = {
 	.legacy_ops = &pstore_ops,
-	.type = filetype_uimage,
 	.drv = {
 		.probe  = pstore_probe,
 		.remove = pstore_remove,
-- 
2.47.3



