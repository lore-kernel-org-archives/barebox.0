Delivery-date: Wed, 16 Oct 2024 12:51:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t11cj-00522k-2a
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 12:51:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t11cj-0007yG-4V
	for lore@pengutronix.de; Wed, 16 Oct 2024 12:51:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UQQHXAXjtULAIlztsMPZNNJozuYfAunoPq22kLQRG0Y=; b=nHQZcldg8AjwfrJhFPeqSvon/W
	53w3LqW27HxH8GStPFGG2hLFTqI3vo5mTMkY1oJP1OiBjjnvV/GekY8oMHrZUdmYyheABLQmfS9WZ
	G5O08G8VF3QLPKR7ybhmm79J8VOaxiNLkYSof7sVBK+Q/s3go5LAaR8eHQ6O40+BpPNRh86ARPA7/
	8KWIjOfjkaLDqEgzGXS2wpduRDL3n+MkAxMERtCFhi7WvPJdExyiY7Jzn32eiD3s2JzWCuVEyurku
	S/LxzKmIfTmbaEKpfGGe/agBpKF+d2XpgZ141IoPWtG2ILX5mqR1bqO4D9KRfSNUQJvM6ba32LbeG
	0f7IZFkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t11cC-0000000BW0k-2MjS;
	Wed, 16 Oct 2024 10:50:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t11ZT-0000000BVSO-1XCk
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 10:48:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t11ZS-00078k-2n; Wed, 16 Oct 2024 12:48:02 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1t11ZR-002FZk-I6; Wed, 16 Oct 2024 12:48:01 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t11ZR-00EQ2C-1Y;
	Wed, 16 Oct 2024 12:48:01 +0200
Date: Wed, 16 Oct 2024 12:48:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <Zw-Z4X0I-yhYxB4y@pengutronix.de>
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
 <20241015-rockchip-spi-rk808-v1-5-e276b4b59603@pengutronix.de>
 <CAP1tNvQZ+-DXG862KJ1PMBJb5Z_pmngMqcCr7CrMDFs+MQOZ1g@mail.gmail.com>
 <CAP1tNvT6P9v9n74K=fdvnQoOx1FuEKhWT_W7c7f98riRFg0W5Q@mail.gmail.com>
 <Zw-A1UWpcffBeb1g@pengutronix.de>
 <CAP1tNvRXQiiSY-tv0q+4VVc0o6Se9jfE7TB6JCbGYBT-ApR6yg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP1tNvRXQiiSY-tv0q+4VVc0o6Se9jfE7TB6JCbGYBT-ApR6yg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_034803_433069_530E5FC6 
X-CRM114-Status: GOOD (  27.77  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/7] mfd: rk808: add support for RK806
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Oct 16, 2024 at 12:13:28PM +0300, Alexander Shiyan wrote:
> As an example, this can be tested with i2c-gpio driver, is'nt it?

We have a rockchip i2c driver in barebox. I just don't have a board
where the RK806 is connected via I2C.

Sascha

> 
> ср, 16 окт. 2024 г. в 12:01, Sascha Hauer <s.hauer@pengutronix.de>:
> >
> > On Wed, Oct 16, 2024 at 10:07:57AM +0300, Alexander Shiyan wrote:
> > > Oh, I see that in [4/7]. Sorry for the noise.
> >
> > I think you are misreading the patch. Indeed the RK806 can work in I2C
> > mode and my patch series currently doesn't support this. I have two
> > different of_device_id tables, one used for I2C and the other for SPI.
> > RK806 currently only is in the SPI table, not in the I2C table.
> >
> > I2C support for RK806 is likely only a matter of adding the compatible
> > entry. I can add it, but I cannot test it. Do you have a hardware to
> > test this on?
> >
> > Sascha
> >
> >
> > >
> > > вт, 15 окт. 2024 г. в 17:46, Alexander Shiyan <eagle.alexander923@gmail.com>:
> > > >
> > > > вт, 15 окт. 2024 г. в 14:21, Sascha Hauer <s.hauer@pengutronix.de>:
> > > > >
> > > > > This adds support for the RK806 to the rk808 driver. Additionally to
> > > > > I2C this variant comes with SPI support, so add SPI probe support to the
> > > > > driver.
> > > > >
> > > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > >
> > > > Hello Sascha.
> > > >
> > > > RK806 can also work via I2C. Can you add this compatibility together?
> > > >
> > > > Thanks!
> > >
> >
> > --
> > Pengutronix e.K.                           |                             |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


