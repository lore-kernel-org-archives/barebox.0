Delivery-date: Tue, 05 Aug 2025 09:42:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCJZ-007Ddj-0w
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 09:42:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujCJY-0006cB-Pe
	for lore@pengutronix.de; Tue, 05 Aug 2025 09:42:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b2km52gOf++R0WHh13dKREfkz5Dt9zeZl3W/xI+IqXY=; b=3Vwkylwtw5nSzDe68nd+3Gj1sk
	frevVu+aBbgGm4dkT+PhIy5HtdXDoPsa5v2NgqK+c/J+lKzThI4v6wHBgLYZoPh9rkaWMVCozjKCY
	Uda3tKQvDgdOd/uoxSzTen9F7GZfd8vTFA+QhYEVoqBpgSjXWPwJHg6cuHpvxtJWa/J9LtPwmw5io
	ERqFMZ6e7cM9TUGz5rE2qu20zNUBy0CSe9BLgAN6z7Og+//OuYRgyOiPMZmB2VwgcSQgfY3PauSp/
	A69sqYspiFaVEshUiRJaj5pazHtcw0Q6K/REUSPK+OFte7R9655QMvDAucSN5W9nU239f6c/BXk6o
	QuuOjRNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCJA-0000000C2zh-0hsP;
	Tue, 05 Aug 2025 07:42:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCJ7-0000000C2zC-2gPJ
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 07:42:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCJ6-0006Ts-Gl; Tue, 05 Aug 2025 09:42:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCJ6-00C0LB-13;
	Tue, 05 Aug 2025 09:42:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujCJ6-00Ed5k-0s;
	Tue, 05 Aug 2025 09:42:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20250729045607.612019-1-chalianis1@gmail.com>
References: <20250729045607.612019-1-chalianis1@gmail.com>
Message-Id: <175437972026.3486839.2597992485631619602.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 09:42:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_004201_679729_B91CC68E 
X-CRM114-Status: UNSURE (   5.49  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: clkdev: fix format security.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 29 Jul 2025 00:56:07 -0400, chalianis1@gmail.com wrote:
> not a string literal and no format
> arguments [-Werror=format-security]
> 
> 

Applied, thanks!

[1/1] clk: clkdev: fix format security.
      https://git.pengutronix.de/cgit/barebox/commit/?id=ffeeae51a5cf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



