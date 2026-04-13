Delivery-date: Mon, 13 Apr 2026 10:09:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCLv-00Be9x-21
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 10:09:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCCLu-0002ox-TB
	for lore@pengutronix.de; Mon, 13 Apr 2026 10:09:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f9wYer+J7bhVIIQY/FsBQ7P0iNPw46K2eZqdN9bzI8I=; b=PlOe2rVvM+PWsg0d1dhYpyF+ye
	rWBIhD4ooSoeltwZwE2nbUR113KYKmhu6hmZcEdwdpweHYI8MLm3cKLlQqe1aIxjLSOlEraeYiIU/
	4s++wOlW4vQFpxwg5xHfXAhEvzXcRwDcpE9B+VFx1YUyToVdWmbauIeVfDezppWMH77t9kodHD2eh
	ZvA1mbKfil32mTnEnEFkR0UZ8RZzxSAUeXOTmULyYddNh50jtq7+th5P17wWYWW2g1RBXCjUGaGa9
	8Z5LtjJ7blauZ+8t++QbCmEZqv0XIadi+y8Y8Yczh5ay/7FVpQF0+UVimeX3FIuk8814P6P2HBL5S
	9GgytbvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCLU-0000000FEH6-0881;
	Mon, 13 Apr 2026 08:08:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCLS-0000000FEGU-1dIK
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 08:08:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=f9wYer+J7bhVIIQY/FsBQ7P0iNPw46K2eZqdN9bzI8I=; b=Z6ND9CvcHCpTwkNo9+xI9oD1Hm
	irUBNW65KPoI0TvbXEDoVy28oMx7Pvm9NsCw5mAqDAqSRaAH16hiA+S6M5WaqaoC7ayWGt5Z7lbZB
	XV9FU2rLbFehq0kfOIoTobX9Cv14RFXn7nKsFyW6PMYyOf1A+G8vHWotmCYlYuRBanMZV88s1PdzB
	yykoxb61FqqjAgkRq0PWHbHhFUCzHsBUiLiEXFjNL8zAcPCaV3hJznmEkdsPzWbl396frC2bk3Urt
	gGkz5fE0Y3+tMVEkQO0t0bErSuzGHJwN5A3pT21X6XOp38HraLi74wzorJF0GcvUHQfNR3Bw+OyIq
	xbKePYuQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCCLH-0000000GM2s-06jG
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 08:08:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCCLA-0002hF-6a; Mon, 13 Apr 2026 10:08:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCCL9-0058di-2g;
	Mon, 13 Apr 2026 10:08:15 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCCL9-0000000EiMy-3ERm;
	Mon, 13 Apr 2026 10:08:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20260331032307.203225-1-chalianis1@gmail.com>
References: <20260331032307.203225-1-chalianis1@gmail.com>
Message-Id: <177606769576.3507121.14696634572922687707.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 10:08:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_090830_277399_AC4AA847 
X-CRM114-Status: UNSURE (   3.93  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc2: host: initialize sub to fix
 maybe-uninitialized warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 30 Mar 2026 23:23:07 -0400, chalianis1@gmail.com wrote:
> 


Applied, thanks!

[1/1] usb: dwc2: host: initialize sub to fix maybe-uninitialized warning
      https://git.pengutronix.de/cgit/barebox/commit/?id=ed017efa3455 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



