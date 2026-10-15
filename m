Delivery-date: Thu, 15 Oct 2026 16:09:51 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHM9X-00Dx1c-1e
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 16:09:51 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 491FF2027FC
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 16:09:47 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=h93Is4Db;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GFHuAATx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792073387; a=rsa-sha256;
	cv=pass;
	b=LM2Rh0uXeKWBFbN2Y8UTOGPbjYw+Z1vfVS4nIdJ6vZiFbQxMyYvPRga8/shKyNKHzhIQLG
	kOk8mqtdXim4tmUagMdXuOhp14XikDm97qjkAYWMV9HxLmle+GilsvU2aenTg6yz4/2K0h
	qTjYWqW8Si+qMgeZz1a3fi9fOJ9fxX2+XxatJLJ1WTnY29AgIGqA/9/GlmSlfD7L1XLlVx
	3wwpMuN16YEwAIyT9narQQIh7uNTtxcZ/eBH90vsn3qmWRWQKRoTnNWsrbA8rnPjm1yX43
	Eti7OuThDAAw+8wlelJa5lZQRSUJjJXmAxPh6ri/QtCfFLiK6VsK8/GYAD6vuQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=h93Is4Db;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GFHuAATx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073387;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Ps7B0rmLcQW1YjVi2EMslwuZibLQxuABuPUaUMh2Xm4=;
	b=Xc5dgzl2ha6Bm3/FXRkKk8Aao3OXSEQkoJ9mB2yzmXAvx1Uj/4lOPCfkMCYMkO/hTUzoZq
	F7rMjZkgGckp8+9ohLJMGbqdmYRgV6djHnGooHZ2dx3e65/38EczJjIohHMUUJCJZStwG1
	XtWENcuQM8wr5NK/uYF4ruaSjB0eSaKIa+HGSDk8NAypydVdN60n6wWdUQT5eNJHTq+YOx
	xefDuOMIcEfLJTD+L8tOQ2EUgcmk70C7xG4bjLi+YpnOKka2Ov3izHbHNXmziXwlG32nbt
	QbW41TkuTurlALs7v0S+lB2nKkXxsMRsVEfjSx8feR0/PKTyPzw/Qdb6YP5JMQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ps7B0rmLcQW1YjVi2EMslwuZibLQxuABuPUaUMh2Xm4=; b=h93Is4DbKnFToSp4nsBVErlS8S
	qX32/HFCnlfsknEqx14amZePZpmI09ZmTvqHyoiB7WM0WkNJeWdO/Jfoolpypgff63XflKOYt+exS
	8iuAGcVV8M4uze20ykPcjHpVdepiA9RLiVmIRhl8KIAg6/520A1lljSHHnD74MUBwS23+O+uD2x+/
	xnHh6jrP5YgSSNIhRVyoB2HLrngODCRotyA031A+/7EO5wh1agIGSwNZgpM616bHdDJ/mivJYsd/E
	QzHQfhnTv1OEOiN5B23TOgyZeGWQLDjzKNjMXQ/kXWyy2vSak8QdTwzmfeXyoYqMhdJ/g9JDcmeZk
	G9+rQppA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM86-00000000KUk-0AgY;
	Thu, 15 Oct 2026 14:08:22 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM82-00000000KTn-3FH1
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 14:08:20 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 17BC32027F5;
	Thu, 15 Oct 2026 16:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073293;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Ps7B0rmLcQW1YjVi2EMslwuZibLQxuABuPUaUMh2Xm4=;
	b=GFHuAATxvZiY4kKrvveUiBv4TN9eUT8VEYKvCQq0VtiVyzpSiSugXx3xf0k4cKYWmKnSsI
	yGeiBWAVt6D55NwqOGjpQHlh4TXpVWGzc2FkuuTSt+sOeXOGxRkACMRyZ72oOt9xy/MewU
	fh2DMm77Ygnw37OoxmGUyUTnjQ0xw8xExu7JjeuoSiWV2TMHagL3UcbwS4MAgj1eM9Y6NX
	/ug9Cw+hzgBdhAMr6l2wKgSRLvn+2/yQcR2Xz7NNx15+y3R/bCWJ5RQ4BBohp9jYW2B0D+
	rbq8//9jMm57Tp8zeq06X/XzcuvfobiOetr1FX5oLjq8dy4SXIwZfvXqpnBqMg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792073293; a=rsa-sha256;
	cv=none;
	b=V5hZpe13u+ihfVuCWPiPzGe2CFolbwRbDjgfbXIvIjv+VpwoCy7t9IFcfs0CVLM8miQSIt
	rjFWKLGLhyhfaLLuPPnyEfjxfFfFimGKP6g4wfOpEr5PLkwmYS1Ca8bbqHH4DvJtbUwNN2
	YQnk5FXOXWSKsJNE++NiXw8Vn/YbT0gjpNpF66M1N9H9gs3USW32OnTY4sufouDqJaUReX
	Ca471U37TPAR4h2BkRBuSd6xHXq5BjAl4SC5gbp6H/ZDNYHToFueqbK5ntOxcDzEo792iN
	wVOKVzpBAQnJvr0Mx/XFG/XEOJb333o5t+4T3aaX1kxRKU4hMMDjRK7vpbHc/w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073293;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Ps7B0rmLcQW1YjVi2EMslwuZibLQxuABuPUaUMh2Xm4=;
	b=SCWJYN6QqWiqsl4Sj7d0QduVOpUmVeIlocWh0z5Ptc2ma8egtuY4LaPuXiVtSCsqTX1Nbz
	3yxOl/dY5wWuV8vYl7uFfN+2TtiZBezSfXg1Cy09z5pa+Txfm5D0GONrcEOYUbRFEU5th5
	mhaS2VWzfvpRLxu7lfrDPxwWRgKZXYpStD5DMxdb91xbpm1jE7lqhsZue2zVwhY7vS1W7G
	x35PQQpDPK0zMJyRhXTBusMJyjxqFrXVkNw2ruZdBWsrQyCxNZ+enTLuP1yIfPfjHnpu8o
	79Jf6aa/Nl8j1dRMzQElPH7cIJzwIqGKx5tiTzgPXH2aaDU9aoEk6Y2qvBbhAg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id F38E57402EA;
	Thu, 15 Oct 2026 16:08:12 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] commands: truncate: report errors from ftruncate()
Date: Thu, 15 Oct 2026 16:08:11 +0200
Message-ID: <20261015140812.1229929-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_070818_965091_A9A22C4E 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> ftruncate() and
   fstat() return a negative error code, not -1, so the command only noticed
   an -EPERM and otherwise exited with 0 even when the file wasn't resized, e.g.
    on a size ubootvarfs has no room [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 491FF2027FC
X-Stat-Signature: 6d7rkajygj3hpx9ekt7r6qppee6sc4uq

From: Ahmad Fatoum <a.fatoum@barebox.org>

ftruncate() and fstat() return a negative error code, not -1, so the
command only noticed an -EPERM and otherwise exited with 0 even when the
file wasn't resized, e.g. on a size ubootvarfs has no room for.

Let's check for any negative return value instead.

Fixes: f59a9574c22c ("commands: add new truncate command")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/truncate.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/truncate.c b/commands/truncate.c
index 1fd929337dd5..01d827007554 100644
--- a/commands/truncate.c
+++ b/commands/truncate.c
@@ -64,7 +64,7 @@ static int do_truncate(int argc, char *argv[])
 		if (modify) {
 			struct stat st;
 
-			if (fstat(fd, &st) == -1) {
+			if (fstat(fd, &st) < 0) {
 				perror("fstat");
 				ret = 1;
 				close(fd);
@@ -74,7 +74,7 @@ static int do_truncate(int argc, char *argv[])
 			target_size = st.st_size + size;
 		}
 
-		if (ftruncate(fd, target_size) == -1) {
+		if (ftruncate(fd, target_size) < 0) {
 			perror("truncate");
 			ret = 1;
 		}
-- 
2.47.3



