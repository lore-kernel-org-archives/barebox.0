Delivery-date: Wed, 22 Apr 2026 08:54:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFRTt-00F0Sc-1V
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 08:54:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFRTs-0000hd-V4
	for lore@pengutronix.de; Wed, 22 Apr 2026 08:54:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pyIWf32xDUF5Em9VuK9zpsvj7e7ToVT4h7aRb9DQujo=; b=BvKKb3KszIAxEGwqtDkqdik6zz
	tiOOp0F/W7LEnGi6ifQrkFvOVuc7NiYHjagQ45bpmU4Y5TTW21fUzFc8z1II+nxnozc9QWcQfMcvk
	OFoM2uyFBPokEBUv2klSQE8A2OXOKITZLfM+nTH9dHO9aNs1rn+2W+8aGJuCApdkVcpKfgFaIE2vx
	QtS6VZgSmLLGkXqXEUuIic1I/MqqDTpHTuXgzRgk5bUBOgwyAMYB/tEWW2ScE2StKmrZVvMNXwO8Y
	S9yyMgu52dMWuiLnG7/Jzg7aBK9QNMmYY01M1V9LT/92u1nlWml/eUmhkzSDkdeEbMBFW/UU/ap48
	wNoaFLTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFRTW-00000009geq-3DrL;
	Wed, 22 Apr 2026 06:54:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFRTT-00000009geU-3ATi
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 06:54:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFRTS-0000bX-2a; Wed, 22 Apr 2026 08:54:14 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFRTR-006cib-2q;
	Wed, 22 Apr 2026 08:54:13 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFRTR-0000000AIxc-3RR6;
	Wed, 22 Apr 2026 08:54:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20260421084603.2161981-1-a.fatoum@pengutronix.de>
References: <20260421084603.2161981-1-a.fatoum@pengutronix.de>
Message-Id: <177684085381.2455977.18159830785491568491.b4-ty@pengutronix.de>
Date: Wed, 22 Apr 2026 08:54:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_235415_872122_851D1EAE 
X-CRM114-Status: UNSURE (   6.51  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: user: use matrix.to instead of
 element.io link
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 21 Apr 2026 10:46:02 +0200, Ahmad Fatoum wrote:
> Element is a client for the Matrix protocol and users may want to use a
> different client.
> 
> Use the generic matrix.to link instead to point at our channel.
> 
> 

Applied, thanks!

[1/1] Documentation: user: use matrix.to instead of element.io link
      https://git.pengutronix.de/cgit/barebox/commit/?id=7723132752a7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



