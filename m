Delivery-date: Thu, 17 Oct 2024 13:14:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1OSN-005S3y-1U
	for lore@lore.pengutronix.de;
	Thu, 17 Oct 2024 13:14:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1OSJ-0000Ob-NE
	for lore@pengutronix.de; Thu, 17 Oct 2024 13:14:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8itxagi4obRh8+kY8mxAwjqtecZ2sHfYeuLeEqH8uKQ=; b=mVSbQFA4wocn5YdD3kst3rXv2h
	glYVt1wdivygqErhJQVSAPHIr04+prki4iLl15s3+8LqnaWKcXXMIQ4XiqbMmNXcq/1U9RgIpN2vf
	w1V7ArqFR5GoN7vQs5qyxucK8mLmnwNjgmSmqc0IGVDFQP2wUsQDtOFawUaaBLhrsmGYFORSr1+KH
	j+zfVwDQjSjsnXnzohv43nnC0vGsSK5Y/Jaf/GB+9guJnAUjV76qHCgMiOuDNdYJ+tOCH7eIESCNZ
	+/qUbUt48iwGQDkR15+msqJH4oqnNwemQ7qVOQWuySO+XCUHJLZpmasLUeOMYrD+uyiuMOpOtWjSY
	MCGYzZjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ORS-0000000EcAg-0TCu;
	Thu, 17 Oct 2024 11:13:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1OJz-0000000Eb8r-2Eke
	for barebox@lists.infradead.org;
	Thu, 17 Oct 2024 11:05:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t1OJw-0007nD-7F; Thu, 17 Oct 2024 13:05:32 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1t1OJv-002Woe-Qt; Thu, 17 Oct 2024 13:05:31 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t1OJv-00GH2L-2N;
	Thu, 17 Oct 2024 13:05:31 +0200
Date: Thu, 17 Oct 2024 13:05:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <ZxDve8R0y3-uz3Jc@pengutronix.de>
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
 <20241015-rockchip-spi-rk808-v1-5-e276b4b59603@pengutronix.de>
 <CAP1tNvQZ+-DXG862KJ1PMBJb5Z_pmngMqcCr7CrMDFs+MQOZ1g@mail.gmail.com>
 <CAP1tNvT6P9v9n74K=fdvnQoOx1FuEKhWT_W7c7f98riRFg0W5Q@mail.gmail.com>
 <Zw-A1UWpcffBeb1g@pengutronix.de>
 <CAP1tNvRXQiiSY-tv0q+4VVc0o6Se9jfE7TB6JCbGYBT-ApR6yg@mail.gmail.com>
 <Zw-Z4X0I-yhYxB4y@pengutronix.de>
 <CAP1tNvTv15iVnfgEmQOkG0oBZOextR7HrtsgaA03MBXcG47vcw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP1tNvTv15iVnfgEmQOkG0oBZOextR7HrtsgaA03MBXcG47vcw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_040535_595699_7D383DC7 
X-CRM114-Status: GOOD (  32.29  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/7] mfd: rk808: add support for RK806
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Oct 16, 2024 at 07:08:24PM +0300, Alexander Shiyan wrote:
> I'm just saying that we can use i2c-gpio driver on SPI pins since in
> rk806 pins are common for i2c/spi :)

Ok, that could work. We would still bootstrap the RK806 for I2C mode
instead of SPI mode. Anyway, I am not keen on doing that.

Sascha

> 
> ср, 16 окт. 2024 г. в 13:48, Sascha Hauer <s.hauer@pengutronix.de>:
> >
> > On Wed, Oct 16, 2024 at 12:13:28PM +0300, Alexander Shiyan wrote:
> > > As an example, this can be tested with i2c-gpio driver, is'nt it?
> >
> > We have a rockchip i2c driver in barebox. I just don't have a board
> > where the RK806 is connected via I2C.
> >
> > Sascha
> >
> > >
> > > ср, 16 окт. 2024 г. в 12:01, Sascha Hauer <s.hauer@pengutronix.de>:
> > > >
> > > > On Wed, Oct 16, 2024 at 10:07:57AM +0300, Alexander Shiyan wrote:
> > > > > Oh, I see that in [4/7]. Sorry for the noise.
> > > >
> > > > I think you are misreading the patch. Indeed the RK806 can work in I2C
> > > > mode and my patch series currently doesn't support this. I have two
> > > > different of_device_id tables, one used for I2C and the other for SPI.
> > > > RK806 currently only is in the SPI table, not in the I2C table.
> > > >
> > > > I2C support for RK806 is likely only a matter of adding the compatible
> > > > entry. I can add it, but I cannot test it. Do you have a hardware to
> > > > test this on?
> > > >
> > > > Sascha
> > > >
> > > >
> > > > >
> > > > > вт, 15 окт. 2024 г. в 17:46, Alexander Shiyan <eagle.alexander923@gmail.com>:
> > > > > >
> > > > > > вт, 15 окт. 2024 г. в 14:21, Sascha Hauer <s.hauer@pengutronix.de>:
> > > > > > >
> > > > > > > This adds support for the RK806 to the rk808 driver. Additionally to
> > > > > > > I2C this variant comes with SPI support, so add SPI probe support to the
> > > > > > > driver.
> > > > > > >
> > > > > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > >
> > > > > > Hello Sascha.
> > > > > >
> > > > > > RK806 can also work via I2C. Can you add this compatibility together?
> > > > > >
> > > > > > Thanks!
> > > > >
> > > >
> > > > --
> > > > Pengutronix e.K.                           |                             |
> > > > Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> > > > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> > > > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
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


