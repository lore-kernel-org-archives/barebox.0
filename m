Delivery-date: Tue, 10 Mar 2026 11:10:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzu2a-00A3mu-1b
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 11:10:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzu2X-0006Hz-QZ
	for lore@pengutronix.de; Tue, 10 Mar 2026 11:10:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O60SEXPRk2T3ABOpb0qmXZXajn+tkoY3fpCnIfrGh2Q=; b=WsVkWGnlXAwkpDZDQ9Rf/Fxi7t
	W0FxEfIq47QoNQJ7SBawhhRYqnENmAGgALVwGpE3HGXFl3IKif+9E/2pEZlMwK3EpG/LbT2+JSZLW
	QpgnqNJkLdB28lgfSM8L3cZvAnGTKqAyHzv8I5pWepGoreasu3anQN7KPlGfyP5/XC8AriRfhsafC
	HM3UvDF/jE+c8THG7UDi+d1txf7W1lvznFMbsfeu8tl8frnFVeQ6SaZTJJCo/dpmVfcHQaUl0nt75
	CMno5ULdTloDVPPp865+d5SPzp5DI3LVkPB+aQyEsH3WLMF9CGo09sRnQYWidU3RmnZPjFxcisSlR
	oZFM6bwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu2B-00000009ARe-2o10;
	Tue, 10 Mar 2026 10:09:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu2A-00000009AQi-1BKF
	for barebox@bombadil.infradead.org;
	Tue, 10 Mar 2026 10:09:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=O60SEXPRk2T3ABOpb0qmXZXajn+tkoY3fpCnIfrGh2Q=; b=aolqE+uGgoZsocnds5N29JtuAW
	mUHLpRhh2WynA8JOqMgf5IpvsbfA/sUniVRaZ2dCVqeX+ZC5NLWeyZqi0DnpkXqsdHMaFVTjQ2PJJ
	t5odMhFNXW5mPs0k311jwna2upO8GiREbjQ0NCIJ4e+bozrZGIph9RxWAR4Dy/me/bCTIYQCJbBh3
	b9d+Yvs0Blx6/PQ2Te9iAkfNGfoc4b/jtY8HT4l50oSkanv7swlatbFHzbS2T/uLkux09mrC8YwoC
	o0b4UmwILWawimghHu2g+wp3iVZ1/W2BJwb3KWwQrVAQxoDimfeHIYZu40LMlTwS+31hzh+tWrdXT
	55GTBOyw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu25-0000000EDaM-1Xl9
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 10:09:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu23-00062N-9Y; Tue, 10 Mar 2026 11:09:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu21-004gFl-2S;
	Tue, 10 Mar 2026 11:09:43 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu23-00000003ILb-03mT;
	Tue, 10 Mar 2026 11:09:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260305074448.3426540-1-s.hauer@pengutronix.de>
References: <20260305074448.3426540-1-s.hauer@pengutronix.de>
Message-Id: <177313738300.785107.2283013897283177911.b4-ty@pengutronix.de>
Date: Tue, 10 Mar 2026 11:09:43 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_100946_918304_38F279D3 
X-CRM114-Status: UNSURE (   8.69  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] tlv: check incoming TLV headers for size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Mar 2026 08:44:48 +0100, Sascha Hauer wrote:
> tlv_register_device() gets untrusted data in the incoming TLV header.
> Add a size argument and check if the TLV is within the size boundaries
> before processing it.
> While at it check that the reserved field in the TLV header is set to
> zero which is necessary should we later want to use it.
> 
> 
> [...]

Applied, thanks!

[1/1] tlv: check incoming TLV headers for size
      https://git.pengutronix.de/cgit/barebox/commit/?id=fedf2ea1985f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



