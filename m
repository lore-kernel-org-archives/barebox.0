Delivery-date: Mon, 28 Sep 2026 01:05:33 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xAxw5-0074me-0x
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 01:05:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 18CF02022C5
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 01:05:33 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JdmCzdB2;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=H8t+JmaK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790550333;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=sCyy1vqIQgIOVhPTCY2SRAb2YSScC6IqrOfzCfVj1xg=;
	b=IFD6SDGl6V1rqTcOr8oAzX1wpj8eRvV+Lo6qYUiGxkOB7dO5wibP9ewIdMJXUTRv+0y4rD
	fbe4/wU0sTF7OOmkm8SKKXQQgs23h2vdNpYCAD289iA4QYCJLKzCcDZsZgL2YQVfQl7dvu
	D2jePoTNhTah32rGk2iCLOIkU8X1cC3sTiuFHtM2xVUdvWditn7SkxZl7sqTXTyVxn4I12
	vRd+yoAjo4ayAlR4IoPilOm0uzeKB9ORWLmsyXsHV29I1h5wAXgfvNcUz7HZO0Lqk7qZdT
	pEL/MFuMYHBK3cILJIghth6BZdigHJUZDlmd2EflvC6KtAwSOElLoe0vEBSgrA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790550333; a=rsa-sha256;
	cv=none;
	b=SCenCJqj0Pz7uqMWGZeosXkfCaLxeuTK3nKKDiBZgplEf9f3i7SehAOq04RPLSTBWXWX+t
	r081DVvMLCHrOVCJew8hgbI6GxotygItAxHSbps8ASy8g7lF3BWJzlrHlLEL2+hYt/0LTx
	JVFpJjLgKz8MkIe8Va1U2sqm3B6Y950oiE8jgH3rO8ZA2HT7wNL2WrLe462jfoL/+VPQXN
	teetKeJscbV9GXPnKEeaGWwh943pzofzxUwGSJJDflgCLn/a8kip/zoL7bfHYEs9+sKgDY
	ecv4qcrg5WVtnAAwb/CEPSG9L+ACxYlMOaQrFHrY0IeZ7yIUVhfeaYVlgR3fHw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JdmCzdB2;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=H8t+JmaK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sCyy1vqIQgIOVhPTCY2SRAb2YSScC6IqrOfzCfVj1xg=; b=JdmCzdB2b1mDcnQDybrqw02sVB
	ru0cJv+n/mATRjtOfs8IkLLCTF3YbHDw4qrTAb/Tq2t2wqgn38x4bqsoXXXRzX3R00e1YLBKtOulW
	MNlIwNpI/4eA35ZhHfkrfuzsStNbolHSfqP1x4lGgweKiRIUmmT9PRLBLpwcVlA7Dlx9wmk8m8juT
	F7DFAcfuUl0ffU7Nzawdr/F/vgRTyYS0jFTxVHiQTOEJ/8xCWHTup9MRc9G7NZMLTToMn+tAAUecK
	JxF1bamOAh59BLs8oiQlG9LH9WpNFrcqLNo+2wr5Teeecfxm3FDzCMlrQsJSyfqpGZ3Xgs968ok24
	8Q9UtTQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAxub-0000000Gz2K-3SeO;
	Sun, 27 Sep 2026 23:04:01 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAxua-0000000Gz2C-1Rm7
	for barebox@lists.infradead.org;
	Sun, 27 Sep 2026 23:04:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 745B460052;
	Sun, 27 Sep 2026 23:03:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2339CC2BCB3;
	Sun, 27 Sep 2026 23:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790550239;
	bh=GEjp9iU5ZqzhLXwaehHm6oy5fii6dGYd+S6Hon2nTzU=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=H8t+JmaKqTv4Oj97CYyDm6nvHBJGoDPhiUqKSoR7jst2E4kuqocla1HJVhmBpRTWR
	 f0LoBk+dVNfxVW1C8J6f4jOED3E8Nvbp6Ce122USDI3qKPvtk9/ZYJDQrd2gKsMJ2/
	 0S7Q+mWkXv5c4wD4IngLqi5aH+LuxplJMjn0vDmGTxSjEOSSyK4Q/FVT0sZAU/28iS
	 wzI+CYEYt/np/GG7bwnCeAdeOURRou6Fc+uwNa5Yo1v5fOrJ3SKOiaDXGOSr15RY5l
	 BgiL/fF9LqpWIkjhcUWSv2Y877B/reLzTvtoZ+wVNerZK7sko4jSU7of85vDHGYSr9
	 XP3MGJr9ULNdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F21E0C9832F;
	Sun, 27 Sep 2026 23:03:58 +0000 (UTC)
From: Christian Berry via B4 Relay <devnull+christiankbberry.gmail.com@kernel.org>
Date: Sun, 27 Sep 2026 19:03:49 -0400
Subject: [PATCH] nvme: check for readiness more quickly to speed up boot
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260927-nvme-ready-poll-v1-1-6a3f63b0ea3e@gmail.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MQQqAIBBA0avErBswC6WuEi00pxooCwUpwrsnL
 d/i/xciBaYIQ/VCoMSRT1/Q1BXMm/ErIbtikEIq0UuNPh2EgYx78Dr3HTvrVCdara2xUKor0ML
 3fxynnD+hX8CDYQAAAA==
X-Change-ID: 20260927-nvme-ready-poll-4bd640377bab
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Christian Berry <christiankbberry@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790550238; l=1373;
 i=christiankbberry@gmail.com; s=20260927; h=from:subject:message-id;
 bh=l8Ulibs93iyPd5xJMD4r29EG9Ft858b6i/ATurkctCc=;
 b=qY1NGMDH2pukCyk9JNIs6w8MUSuo7otKu4VfoYh7MPDMpJuNbT2wBOh6JL3liKJilLlZT03pS
 phbajqBqrA6B4jtU3jDlVfYG+tgg+hozpGnUtU0Y60j5RipQzI6F7Is
X-Developer-Key: i=christiankbberry@gmail.com; a=ed25519;
 pk=mIiHYdE/qfTZkSzWp7S7P0suIaXgOgQIn4nfjIhg9+c=
X-Endpoint-Received: by B4 Relay for christiankbberry@gmail.com/20260927
 with auth_id=1073
X-Original-From: Christian Berry <christiankbberry@gmail.com>
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
Reply-To: christiankbberry@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-7.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[99.99%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de,christiankbberry.gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[christiankbberry@gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 18CF02022C5
X-Stat-Signature: ggpc3uk9o8bf5wdtqju3xpg6heg8i55f

From: Christian Berry <christiankbberry@gmail.com>

nvme_wait_ready() polls the controller status every 100ms, although
the controller may become ready much sooner. Every probe then waits
at least 100ms longer than needed, and possibly twice, since both
nvme_disable_ctrl() and nvme_enable_ctrl() wait for readiness.

Poll every millisecond instead, as Linux does since commit
3e98c2443f5c ("nvme: Check for readiness more quickly, to speed up
boot time"). The overall timeout is still based on elapsed time, so
it is unaffected.

Tested on an Arm64 SoC with a Samsung 980 SSD in a Gen3 x4
configuration, where PCIe + NVMe probe time dropped from 165 ms to
65 ms.

Signed-off-by: Christian Berry <christiankbberry@gmail.com>
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 345707ecfe..9686268d44 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -173,7 +173,7 @@ static int nvme_wait_ready(struct nvme_ctrl *ctrl, u64 cap, bool enabled)
 		if ((csts & NVME_CSTS_RDY) == bit)
 			break;
 
-		mdelay(100);
+		udelay(1000);
 
 		if (is_timeout(start, timeout)) {
 			dev_err(ctrl->dev,

---
base-commit: 983608b439b803f72f12d56d0ab10bd6ba29e536
change-id: 20260927-nvme-ready-poll-4bd640377bab

Best regards,
-- 
Christian Berry <christiankbberry@gmail.com>




