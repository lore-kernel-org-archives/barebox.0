Delivery-date: Sun, 25 Oct 2026 17:03:01 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xL0gX-003AEu-0r
	for lore@lore.pengutronix.de;
	Sun, 25 Oct 2026 17:03:01 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5EFFB201709
	for <lore@pengutronix.de>; Sun, 25 Oct 2026 17:03:01 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fCnuk38Z;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792944181; a=rsa-sha256;
	cv=none;
	b=Ha783tqa98/W0cXzr+ESBXjCYeTBQuM5tQ7xR5CLjN44EkG20gz1xecfP5n4toSWY4Icxm
	BslfQpbQOwNk2R6IHK6U5z/y+9Hc4CE/Gr8mOQtU2BWb8Yx0BzrT4kqPW6itSMAM709TRH
	UbVMNJOCXFRHveJ5z7yl26r6ZxQ4cGCqLlsIZcXM2BNF9bPXrVI5ncGItOUU/LQO8fyk9W
	ZuYUQ6ItlCSPLsyaKfT0z1nQSX68N6vCBZbe3WNZtY2PB4TWdKOVWed1yprPKd3t2I7cAf
	ecpbdpLVJ2k0F3ptxPePEqDV82re8eRgg3VAwQ5co7TJa7ZQmy01io9rR/0+0w==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fCnuk38Z;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792944181;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=VrUz+p2hOxAIV//Cqmpg/1bgT3engAH5p/GTi3vWpU8=;
	b=agqCoqtV8+pK4ejgcyrbTfE5FdLqvKplb6QXxeUlZx3kGAlV+FRm602GKdslYI7XKwGvrM
	ZmVInmnBPWsKtdDvbiI37cKdwH6tdjkg/o3rubLIWhYTGyHuYjD5OFlYP3JKQLrpmn/NhN
	vb7UMk8k2yhA6+XD36KxTqq+Geim20e+INXGL4oHNF05taTp+4L8UskYCMOV5/rT7yaKU7
	iJDjlbwdz2QAHY86e2QA8TriDuttTCU8yKxdIjl9n8J1fDqIlLipVXHKaaIzss7iQJGM4B
	Ou6VPGryw24ZV6Y9CiIj6D7uu56PS9iJqNbqfvHYmkTL1mk3bpe05bK9NU7axw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=VrUz+p2hOxAIV//Cqmpg/1bgT3engAH5p/GTi3vWpU8=; b=fCnuk38ZyRBQklU0gYc9rWPFgK
	4xIaE8vMZo46WK+UKeIAKr/szUfOb7YNkpjTxDCkH4/zS5b4JgslZerICxlKpZQztFfj1Grr9ZyON
	V3FjgoTOwPlhTlgV5mfZCArCd08QxZaUK06B7KXl2g6CEOaQAsWj1SyugyZcfp4P6O6WWX1hNHI25
	HY6oi+LIEE4FsuDaofTwQxu3674hIEZ6RCe7LIHiOe84mHPUNgLnnaLBOWxNfvgEJeQx/mrlygxEP
	OcK/xhTbWNTrju4bnDVhwhU9CTq0CD5+yTT/hVp9tjED9zlqPMzsEaqw9pMFJrpGkCjfhUR/PnJtN
	Op6yq6dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xL0fJ-00000001Bir-36C3;
	Sun, 25 Oct 2026 16:01:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xL0fG-00000001BiR-0RsE
	for barebox@lists.infradead.org;
	Sun, 25 Oct 2026 16:01:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xL0fD-0003xn-Ku; Sun, 25 Oct 2026 17:01:39 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] usb: gadget: fastboot: correctly cap rx_bytes_expected() result
Date: Sun, 25 Oct 2026 17:01:37 +0100
Message-ID: <20261025160138.3019136-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_090142_167374_27067F49 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The function only ever returns an unsigned value and fastboot.download_{size,bytes}
    are both unsigned values too. Storing their difference into an int may possibly
    lead to misbehavior, so fix the types to ensure no overflow can happen. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 5EFFB201709
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org]
X-Rspamd-Action: no action
X-Stat-Signature: nu53nfsu5yt115due5e8d616b8xmxpq1

The function only ever returns an unsigned value and
fastboot.download_{size,bytes} are both unsigned values too.

Storing their difference into an int may possibly lead to misbehavior,
so fix the types to ensure no overflow can happen.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/usb/gadget/function/f_fastboot.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/gadget/function/f_fastboot.c b/drivers/usb/gadget/function/f_fastboot.c
index 85732802ff80..8f7390fd2403 100644
--- a/drivers/usb/gadget/function/f_fastboot.c
+++ b/drivers/usb/gadget/function/f_fastboot.c
@@ -445,10 +445,10 @@ static int fastboot_write_usb(struct fastboot *fb, const char *buffer, unsigned
 	return 0;
 }
 
-static int rx_bytes_expected(struct f_fastboot *f_fb)
+static unsigned rx_bytes_expected(struct f_fastboot *f_fb)
 {
-	int remaining = f_fb->fastboot.download_size
-		      - f_fb->fastboot.download_bytes;
+	size_t remaining = f_fb->fastboot.download_size
+			 - f_fb->fastboot.download_bytes;
 
 	if (remaining >= EP_BUFFER_SIZE)
 		return EP_BUFFER_SIZE;
-- 
2.47.3



