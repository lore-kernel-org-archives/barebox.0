Delivery-date: Sun, 08 Nov 2026 09:48:03 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPyZG-008ckb-28
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 09:48:03 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D4567201F43
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 09:48:02 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ztnAkG0G;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794127682;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=oBRKl2ZuV0NdGam5uIk5SZeEPFjM4IXabY8QGictcQU=;
	b=ChsxGLBM1+Ou7cZ/WnI1MJZiH+7xnktM7wSy5rDn5tc/LTxu6UWyejSNTJoBIpetVm+xNI
	aWbIz26rLajmYpQBPXC9vhxh3EEilsbD/iyuyCulRwJGqQYl087JmGJhc6z3y3AzjO87ew
	gEle71PASnm3i0j2w0gsworonWGu71Pr1HzZ8MiQssLKRddHnhJwUacPRFSfGt1yYT5Rt2
	weLJUpNDIMnhxYnn2ZcbiRovCDOjpck4AxaJ7rGawoQEiQq3VRLLE6n7Kk2JiX2Enlnv6X
	SZ8kc/JRv2I6TNF6Wu0BLoqN1t/VNvn0rZabpfuDGmGdecFZF/Ipjj+ReiY29A==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ztnAkG0G;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794127682; a=rsa-sha256;
	cv=none;
	b=NT1KXSyNnmYnu63T6yG2QHph6eIWO4N6pVgatPHVN/mv2NM+V8MjcnRucrjlnag2SPzHs4
	iSLAMHKSEk+895jwwPzuG4xmkR1tYe2dQnI4CDUkbwawJvktjZa7c48xJ4vDIG3Ik1w2fN
	WtvQIQfQVAWt/nVV0KGTmNKHqbuUW5dhle7FHA0k6EIuxGaGvWwHXSABCl5a1TrpHLtr6a
	kBL4SD6nGRfpgUJL61Y/lRRCcMg6eiH1Y4iLRiX/DAJkMo2icArlLyNnQuZTO6XRAnLKcH
	GmzpTw7W6k50CnLsB9CSVOAmelkmA2cETPwf4If5x6tZbfY3C1f+nLV9AwTsRA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=oBRKl2ZuV0NdGam5uIk5SZeEPFjM4IXabY8QGictcQU=; b=ztnAkG0GbVD5YubVRZXoOkZch6
	eEW0kat27X+bKZGcKleORJwD1TjLPV24E0K+VxV2gZfex9LNaO0S9lZrg2qi9HaFr0fJI0k672AeS
	hx1zsJf69sQynCYAN2hyjnL2TtJ2WYzURarv15ZWrNLnVgMZX4Y7EGS3VNxBmNA4w2K+9Q2xHMOeH
	bUDFvZsz44RuHG263joJrUjkm5MuhoSr/YDCZ95VsKS/jj19bD41oYiivzeowktjfvVfhp6CCSCi/
	BjrvVHg/pXYoC044ZAMOV1TF6bZ+a4voDmybqOxeEMmRo7mhaL7Mg6ZiYRb4r2wDPPl28Z92fCxM5
	zzYZOHEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPyYF-0000000FrqX-1hzA;
	Sun, 08 Nov 2026 08:46:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPyYC-0000000FrqA-3gp5
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 08:46:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xPyYB-00078r-47; Sun, 08 Nov 2026 09:46:55 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] usb: xhci: keep the transaction count out of Max Packet Size
Date: Sun,  8 Nov 2026 09:46:48 +0100
Message-ID: <20261108084652.1231859-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_004656_921115_0DF65565 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Bits 12:11 of wMaxPacketSize hold the number of additional
    transactions per microframe of high-speed isochronous and interrupt endpoints.
    xhci_get_endpoint_max_burst() already programs them as Max Bur [...] 
 
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
X-Rspamd-Queue-Id: D4567201F43
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 4ut9fi8j3q4zx3ayy1rksyngyykw3hzj

Bits 12:11 of wMaxPacketSize hold the number of additional transactions
per microframe of high-speed isochronous and interrupt endpoints.
xhci_get_endpoint_max_burst() already programs them as Max Burst Size,
but xhci_set_configuration() copies them into Max Packet Size as well,
so a high-bandwidth endpoint ends up with a Max Packet Size beyond the
1024 bytes a high-speed endpoint can have.

Mask them off, like Linux does since commit f94e0186312b ("USB: xhci:
Bandwidth allocation support"), with the mask fixed to cover bit 10 in
commit dc07c91b9b40 ("xHCI: fix wMaxPacketSize mask").

Fixes: 105b2eabd55a ("usb: Add U-Boot xhci driver")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/usb/host/xhci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index 661dc0dde0b8..1bb1758ac25d 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -574,8 +574,8 @@ static int xhci_set_configuration(struct usb_device *udev)
 
 		ep_ctx[ep_index]->ep_info2 = cpu_to_le32(EP_TYPE(ep_type));
 		ep_ctx[ep_index]->ep_info2 |=
-			cpu_to_le32(MAX_PACKET
-			(get_unaligned(&endpt_desc->wMaxPacketSize)));
+			cpu_to_le32(MAX_PACKET(get_unaligned(&endpt_desc->wMaxPacketSize) &
+					       USB_ENDPOINT_MAXP_MASK));
 
 		/* Allow 3 retries for everything but isoc, set CErr = 3 */
 		if (!usb_endpoint_xfer_isoc(endpt_desc))
-- 
2.47.3



