Delivery-date: Sun, 08 Nov 2026 21:17:20 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQ9KK-008n0Z-08
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 21:17:20 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 435BC20183A
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 21:17:20 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HRfxpOUS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794169040;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=l9TVpAfKEVwWKX0tnWaAJ0mt0v2m6ch5Zbjw0z8wNO8=;
	b=NNC3+LWRmedTQHBVNYdQrvv6ozWFtSTRo3f6yaLZMCyolYF7Yo/OpEUQ9cbpRzlKjDnoFg
	2TBz2E8iJSsf1PWcKFDBlMrzqR/P6QayWmv1RB3RHM8N1uMHmte2DLwDdmYz4bRoW4ejJp
	Dzzxc7cY0Qua4hUfbYoEUXn0GljmaNU0eRlgtb3y/c+RtA1cAwug4lTM3n9S0k342WsrDw
	B7IcJTvOQ4bfA0P8xEGm6bY8yE5/10DivvOiV7AI0PCxAvm/5el6juofgti6zr2W/neldA
	yienhrxAyF09XFycx19rsdveXdgLU4lDTDy3trP79Fnmdc05gg0zmIGJYoFQbA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HRfxpOUS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794169040; a=rsa-sha256;
	cv=none;
	b=bxpHoPwpsSGKPIMzCqFOeMZ9a5wBzRtcwLqUbteOSIEdX/EOkrcRU4JeZlh3qB7iAvjyvP
	ky3JGxzWZJ4z3jydUWe96rCsRgQ3Rrwo2RTJA74PQhRrrcRFOBuIoXo3eNYpuBeRlaemsa
	cPYh8nQbmY8rHoFjS7FDkrn0kArZLVs5hmFvwHz9/a3k4/IKz8jjcK2B08FpExsH5twDV5
	yu2277wI5pQXA9wuKhNC3AW5uZcSzdluGyFN/dXhiyXhNpvRUNh+tIEUr79qnmaCwxBAcZ
	/IOzORryjPO7scfvGS2uVt7m5Ah+7oV1yHSdr6p7XZcdNsF8nunJ1eIaE47N1w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=l9TVpAfKEVwWKX0tnWaAJ0mt0v2m6ch5Zbjw0z8wNO8=; b=HRfxpOUS5LZ17Qi5t2I2O47sF5
	rbHUvLGUUPwRn6X1FV2bdJmbUHF/dqYDeTDXE3Y2gS5LnHos2rchp98DfTkA7JP5zFNUiWq1kXuxn
	5rOdAlGpGltRuEr6r5F9aO7BmSeVOUW3QS76/4b6shqCyO/wXwnCu0aWyUW7FKzGU+1DTlWndST2/
	pT8x8/jLW1ypwMuEI3w1JBF9qAlJUQUKPEuJ6o2JlUUX6y2KK9yxe7A6DU/VZM81Vxxxr43hAXQtI
	UeH/DvqnMz71sCDSKLdYLdhr762X5213xo9v5UlzA1u1+QCwG68J4+t0s4n+95KJYT6P9lYCNdmVr
	G6ZG0nBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ9JL-0000000GYvu-3Ql8;
	Sun, 08 Nov 2026 20:16:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ9JI-0000000GYvM-1XkY
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 20:16:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xQ9JG-0002Kt-Ng; Sun, 08 Nov 2026 21:16:14 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] net: designware_eqos: leave the MAC alone while the link is down
Date: Sun,  8 Nov 2026 21:16:12 +0100
Message-ID: <20261108201613.1401590-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_121616_753337_A3B6260C 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The PHY core calls adjust_link on a link loss as well, with
    whatever speed and duplex the PHY driver falls back to, 10 Mbit/s half duplex
    for genphy, and eqos_adjust_link() programs the MAC for that. 
 
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
X-Rspamd-Queue-Id: 435BC20183A
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
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
X-Stat-Signature: 4zu9t7esygf9kaotno91hbs3i8kgcjn1

The PHY core calls adjust_link on a link loss as well, with whatever
speed and duplex the PHY driver falls back to, 10 Mbit/s half duplex
for genphy, and eqos_adjust_link() programs the MAC for that.

On the Amlogic A9 (DWMAC 5.30 behind the G12A glue, which isn't in
barebox yet), the detour over 10 Mbit/s every so often leaves the RGMII
transmit path dead until the next speed change. On a BY401, that was
about every other ifdown/ifup.

Let's configure the MAC only while the link is up, as Linux does. 20
ifdown/ifup cycles in a row work with that.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/net/designware_eqos.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index 763e52f3d70f..68394bf3df17 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -317,6 +317,10 @@ void eqos_adjust_link(struct eth_device *edev)
 	struct eqos *eqos = edev->priv;
 	unsigned speed = edev->phydev->speed;
 
+	/* Like Linux, leave the MAC alone while the link is down */
+	if (!edev->phydev->link)
+		return;
+
 	if (edev->phydev->duplex)
 		eqos_set_full_duplex(eqos);
 	else
-- 
2.47.3



