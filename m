Delivery-date: Thu, 13 Jun 2024 08:54:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeM3-005EcV-2k
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 08:54:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeM3-0003Xf-9U
	for lore@pengutronix.de; Thu, 13 Jun 2024 08:54:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cC9DyLT1s9FBUkJkgu7VKv7G700FVexrJQPNnihorgo=; b=rtrJTpyx1o/wqaNgI5p6CcN1L/
	ZFraYwdGNRvSY8C49B/tU5fgtwlY/NCDm6xD1hPrHzuOsVkV9TndBBWZop9U0/CJSZUzDRgqlolgF
	6y9NyhNsE8ELBVVCrRKF5qJXTHa++H1pm5akhzbHbfK33BDwQVEvQ9KwCtZDfIjzpv6gfXwHdfyPd
	KHAA0RwVyIapQy63DBNFt8nvlDAEGF9hSmDMwPxwNevKOqy/YzVqEPe7h/OqTnA/aEzXUU/8FDo/p
	DEit4oGM5BX+KDieg3Zhkuvjea3V8sKJ8NDzoWsQoy6lVLaknXy1RPtdS4cF/L2Nppg+axKlaLD9/
	PrbQD48g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHeLa-0000000FNnq-0795;
	Thu, 13 Jun 2024 06:54:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHeLW-0000000FNmL-0YMY
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 06:54:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeLU-0003Ts-Lg; Thu, 13 Jun 2024 08:54:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeLU-001y0d-96; Thu, 13 Jun 2024 08:54:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeLU-00BGx8-0i;
	Thu, 13 Jun 2024 08:54:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20240612162830.1023574-1-o.rempel@pengutronix.de>
References: <20240612162830.1023574-1-o.rempel@pengutronix.de>
Message-Id: <171826164422.2686757.9911527739500564886.b4-ty@pengutronix.de>
Date: Thu, 13 Jun 2024 08:54:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_235406_204315_A60E223E 
X-CRM114-Status: UNSURE (   9.02  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] net: phy: Add support for PHY-specific link polling
 interval and randomization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 12 Jun 2024 18:28:30 +0200, Oleksij Rempel wrote:
> Introduce the ability to use PHY-specific link polling intervals. Some
> PHYs, such as the TI DP83TG720, require different polling intervals for
> link status checks. This is particularly necessary for PHYs that do not
> support autonegotiation and need frequent assistance to establish a
> link.
> 
> For instance, the TI DP83TG720 PHY may need to be reset if a link is not
> established within 100 milliseconds. If two identical PHYs are connected
> to each other and require the same software assistance, they might reset
> at the same frequency and fail to establish a link. To mitigate this, a
> randomization mechanism is added to the polling interval.
> 
> [...]

Applied, thanks!

[1/1] net: phy: Add support for PHY-specific link polling interval and randomization
      https://git.pengutronix.de/cgit/barebox/commit/?id=3ce75ee449ef (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



