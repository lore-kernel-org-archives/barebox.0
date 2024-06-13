Delivery-date: Thu, 13 Jun 2024 09:09:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeaa-005F7V-1E
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 09:09:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeaZ-0004bd-RP
	for lore@pengutronix.de; Thu, 13 Jun 2024 09:09:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hhpV+6VWpAJCuXMVAUNsnQ5tbSjnQIvuQfBEbzmtHOQ=; b=VJ7eY7ow2AHzaTdBvR3AHFs6Ga
	ipV34iK2WBv9FVWMlComyF0vjxOXWYpZ2BloZlP8p+QAklvm9PF9Ko9I22uQCZSJOyLJ2pYyxF7U1
	yI/Ip2zKTSDJR5K0fjgRYGqbuUM032Tg3O2dUdHYBtJSqZS7RcMH1O5lcRCvcsdLlec9Yox71TCNN
	Hwkc7y0s46IWFvtE4aOgRJyZo/picN3FrRGKQ8IoI7zAQLmuG8krEUnC6vGbC7bmzK6jBVNRRbtSk
	yrxt/lD2kkISEoTdz2A1H/iFu6vKYFq77dr3H1GLXEG9hKFvmkC2B5GPMVscSw7PuP0MCt5s+ASeq
	Eht0WUjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHea9-0000000FPxh-1miA;
	Thu, 13 Jun 2024 07:09:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHea5-0000000FPx8-2EVz
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 07:09:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHea4-0004YW-DR; Thu, 13 Jun 2024 09:09:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHea4-001yJp-0t; Thu, 13 Jun 2024 09:09:08 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHea3-00BSRg-35;
	Thu, 13 Jun 2024 09:09:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
Cc: David Jander <david@protonic.nl>
In-Reply-To: <20240612130256.3587709-1-o.rempel@pengutronix.de>
References: <20240612130256.3587709-1-o.rempel@pengutronix.de>
Message-Id: <171826254795.2730933.10680688244057722794.b4-ty@pengutronix.de>
Date: Thu, 13 Jun 2024 09:09:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_000909_603394_18411344 
X-CRM114-Status: UNSURE (   5.53  )
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
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: phy: dp83tg720: wake up PHYs in managed mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 12 Jun 2024 15:02:56 +0200, Oleksij Rempel wrote:
> In case this PHY is bootstrapped for managed mode, we need to manually
> wake it. Otherwise no link will be detected.
> 
> 

Applied, thanks!

[1/1] net: phy: dp83tg720: wake up PHYs in managed mode
      https://git.pengutronix.de/cgit/barebox/commit/?id=c9a2b7c74058 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



