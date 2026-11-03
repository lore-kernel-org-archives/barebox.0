Delivery-date: Tue, 03 Nov 2026 16:06:44 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xOG5z-006poQ-2e
	for lore@lore.pengutronix.de;
	Tue, 03 Nov 2026 16:06:44 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 07BAB202831
	for <lore@pengutronix.de>; Tue, 03 Nov 2026 16:06:40 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=CNgPet8t;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=F7LcVCzK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793718400;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=+sp5rgt0HRzkGfIZFaG7YR0AuwAsv163DU3Qf1XjwCs=;
	b=BgZjaFgWnv7ctCj8ymzs+/Ei9lTM0Cg1UuWB3uXz5exLxnUMt3L532ZlgiSbJP3hX2fUMn
	w07JRoK8BQrAGJA9SY6ayLsl/ScgmJswktWdAxlzuTiCaSHU8+Il35xhi/cnATaIaQBRRn
	lbdG17XpyviqhWLI1ZPm9AJf+PNYAvjPswkePFg+wDINDTawku3agewgUPWXPrXF6+vMh2
	U6kmtqXGj+hff/cJ8O2wvXo22E+Wnb8EXdOUURlDqZKtqmfS+pAp55uKKsFkm/K9kOEFzM
	h9j9fDTHlZGwkJ8WxiQmqS03saPshjtjqEHyCX966HTYQi/77Ter7tQ5IdsLmw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=CNgPet8t;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=F7LcVCzK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793718400; a=rsa-sha256;
	cv=pass;
	b=P12ClwYjYa0hZUYpShN7GgUe+vACOI45v3Y0fCuuloOn55cMXZY0KAhIDGCK/9p/5GFV3S
	2rDAXXknZYpEvEAN2462cWb9gTpqi9RNyCH6hi3fic2RaR3FwY4c9cMRUqyHGNZYKPNqs3
	87l0kxz3I7Ss+DQgEqZY+25DJCy1aw4P/9fIN7C+PEu+62jQAv92Ucz/LMpmm0HSqxxhv0
	bt06cEAmx+yZkvpoaGB7QwGGJkEKBtJS6bC4h7y0yoF+U+7MZE0tUKDZ0qOayFOEEen9Sv
	bNk9arMpyhQrhkZCii3gzTu+YZHyYscySzAza7sOkeEJMLEgpdN8dLVsJ2YV3w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=+sp5rgt0HRzkGfIZFaG7YR0AuwAsv163DU3Qf1XjwCs=; b=CNgPet8ts0Y3y1Jz9/VVeHgLRd
	eTmJo8hl3a9Coch1gsyPcujpvaJzPPOxOCealhp0z0Y3j+LCbZ2HfiBAxU/HiRyk/jt0ddHXPyuB/
	w3e4nmKn0WdccfDKJwcruluRswZSJjNOfbBSSAhhJFRo2/z3/fGJSrHgC1+iaFR8eoDCtqibmiqIG
	tvllvO5TYVXJEePrCsYw8lAXpJDP8NTgxdZVP0SYgW5B1ZEGqnwru8b/pA19qpUt+vsJeM9Gmfs0U
	4zoUuLYxl3Ykw0TPtt7l/nizQNMpsysYQAbVbp2oR+7C75YjU2NyOzxFNiau/oZlzfB4GQYOnWOUO
	FSiBob5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOG4x-00000002qYI-4AJV;
	Tue, 03 Nov 2026 15:05:39 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOG4v-00000002qX7-1cV6
	for barebox@lists.infradead.org;
	Tue, 03 Nov 2026 15:05:38 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 650612006C0;
	Tue, 03 Nov 2026 16:05:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793718331;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+sp5rgt0HRzkGfIZFaG7YR0AuwAsv163DU3Qf1XjwCs=;
	b=F7LcVCzKSWpZSIKoMjQp09ne0y3ZUkwd6We7epqIUyQ4iyupUxNJrwT8QcMcTDyORNyA2+
	p52lpinCyyh6D5aqYMXTgWXgrr+Jxy+D/d5HXE5eDUoal8H7OcvWJq22rQa0PLgz0J9nNK
	MFMogpnikZgj+7S1sSc+2pgOTi4/aSJqUHrXTwof+eeWjTD5IovobyOROeLyxjfK+gC0Dr
	g0P5gCodCILfMsDYyiUxtL7hJ6q1MPDvFvYSUd4V6kh66bSfU2RKzXPYVDZV3v9EYd4ICX
	xzA6ZNyxzIyPMhV22OfMvYbZkbQ7zkpDzgCSBW8hgQBR5hqlfXdyYk6BJtL9uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793718331;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+sp5rgt0HRzkGfIZFaG7YR0AuwAsv163DU3Qf1XjwCs=;
	b=O5e3oLBwFtniwnmTK98mUQdSeaWWn3ftyi9ktkjNzaZCzelGEhqoXKY/BI/0p+Kl1EjybU
	8b/D06tCJVIG3Iy+ZVWcTicBM2tkGHU9MH745K1SaCjU/jHfNJ7nMsGYi4KCN+Ib9Dc/PH
	XU5+BRTX1vtFjOqYKpbAUf/cLuWap8AdWbdecn3BhPGUSYUUwAW8DleVSWxcGq+e/gn8FV
	Ish5TBgCrWc41QaaOwS4NMZgXN7sInXOt2OXzF4UBvRScADkcaBkJ3kyEgtafJXbcy/b60
	wVrzvJyruZnYsU9rwZCsMdM/ABp85fAis7tbv9To/s3t1+ZYrtDuN8u7LwpKkw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793718331; a=rsa-sha256;
	cv=none;
	b=hH4Zhmt99XZ5xggwLzopQIjI35vdL8xdRZjaMzggAflUybqcXX9TUmxy3AWnSd05HvMWbL
	U81WKH8flECDvDKBpF407k8zOFzLDwNBb9y6Q6GNGSVj8jsnqQ9up/qo4KIfqQc2/UHbRg
	R0iasFt3KWmgT6MHOYyh3bMhWlG88aktGX8J/Xw/B4yDbyKi/+Tysvv2f2uJ0+Ebo9K4Am
	vLGO608b8VKuIjjSF7DaSC0fDUALZpdY7ZXULTzwpIwxyFOtXI9GKZJ7oKopiqzgY4zmu0
	XX5ZepTi6GmyRfqnKGrxJYKuwOfrRYVJqh/ch6uziUvkXeOedgZCgRJBth8Qug==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 3AAFF7406DD;
	Tue, 03 Nov 2026 16:05:31 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] usb: xhci: keep the transaction count out of Max Packet Size
Date: Tue,  3 Nov 2026 16:05:10 +0100
Message-ID: <20261103150522.1573809-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_070537_582835_A9ABA0F4 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Bits 12:11 of wMaxPacketSize
    hold the number of additional transactions per microframe of high-speed isochronous
    and interrupt endpoints. xhci_get_endpoint_max_burst() already programs them
    as Max Bur [...] 
 
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
X-Rspamd-Queue-Id: 07BAB202831
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
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
X-Stat-Signature: s1eea5as46cqa89tiggfiy8m5z3fhyzn

From: Ahmad Fatoum <a.fatoum@barebox.org>

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



