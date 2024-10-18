Delivery-date: Fri, 18 Oct 2024 10:52:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1ij4-005owW-3C
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 10:52:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1ij3-0001pw-UT
	for lore@pengutronix.de; Fri, 18 Oct 2024 10:52:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RvFZs+C7oFON1o+8mAikE+OVfusYv3yY74AGPLGHJug=; b=VWUnTZA+cyr+EM4+VYqfeALghd
	BBm1rR2BJxu7ZIs03LqUEeWCY/qTP6M0I8IvvoR2AZlvWfnTYI+SM59fZQ2rVZY0Apz7oAn4r+8ur
	RdoHYIL+OWH6mL9XmOdS7WwSNSQTXJg1Re0hTZiS+rwZKaK4APa9IaO2aOUeErtaN5FrnZcqTmcPk
	RXxJwSF8h4o597oq0MA8Iol80Cuy8y9gQccfAIBfu1fZ1lzc+nkZEr+1JKfsbQhcn4F/S6h8d5QDZ
	rPN9OHfj32daPVQb7jJ5BUrqVmg8q+mYcF2Se5aPiCtwrDNN3byR2iixgrHi0XmHYm/ZR136fTk4a
	/mYrREuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1iiU-000000003M9-2bJx;
	Fri, 18 Oct 2024 08:52:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1iZU-000000000tG-1WDm
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 08:42:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t1iZT-0000zY-6e; Fri, 18 Oct 2024 10:42:55 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t1iZT-000BKI-02;
	Fri, 18 Oct 2024 10:42:55 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t1iZS-000Pid-2z;
	Fri, 18 Oct 2024 10:42:54 +0200
Date: Fri, 18 Oct 2024 10:42:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <ZxIfjqz2B_513xIa@pengutronix.de>
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
 <20241015-rockchip-spi-rk808-v1-5-e276b4b59603@pengutronix.de>
 <CAP1tNvQZ+-DXG862KJ1PMBJb5Z_pmngMqcCr7CrMDFs+MQOZ1g@mail.gmail.com>
 <CAP1tNvT6P9v9n74K=fdvnQoOx1FuEKhWT_W7c7f98riRFg0W5Q@mail.gmail.com>
 <Zw-A1UWpcffBeb1g@pengutronix.de>
 <CAP1tNvRXQiiSY-tv0q+4VVc0o6Se9jfE7TB6JCbGYBT-ApR6yg@mail.gmail.com>
 <Zw-Z4X0I-yhYxB4y@pengutronix.de>
 <CAP1tNvTv15iVnfgEmQOkG0oBZOextR7HrtsgaA03MBXcG47vcw@mail.gmail.com>
 <ZxDve8R0y3-uz3Jc@pengutronix.de>
 <CAP1tNvQM9U7d5nty4OHWhogCqT-rQk+YgRVvBjpkhT49BR5VFg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP1tNvQM9U7d5nty4OHWhogCqT-rQk+YgRVvBjpkhT49BR5VFg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_014256_425682_638E1023 
X-CRM114-Status: GOOD (  35.75  )
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

On Fri, Oct 18, 2024 at 08:12:40AM +0300, Alexander Shiyan wrote:
> Hello Sascha.
> 
> Since you're here, I've found another new patch for the driver:
> https://patchwork.kernel.org/project/linux-rockchip/patch/20241017-rk809-dcdc3-v1-1-e3c3de92f39c@gmail.com/

Applied this as an extra commit.

Sascha

> 
> чт, 17 окт. 2024 г. в 14:05, Sascha Hauer <s.hauer@pengutronix.de>:
> >
> > On Wed, Oct 16, 2024 at 07:08:24PM +0300, Alexander Shiyan wrote:
> > > I'm just saying that we can use i2c-gpio driver on SPI pins since in
> > > rk806 pins are common for i2c/spi :)
> >
> > Ok, that could work. We would still bootstrap the RK806 for I2C mode
> > instead of SPI mode. Anyway, I am not keen on doing that.
> >
> > Sascha
> >
> > >
> > > ср, 16 окт. 2024 г. в 13:48, Sascha Hauer <s.hauer@pengutronix.de>:
> > > >
> > > > On Wed, Oct 16, 2024 at 12:13:28PM +0300, Alexander Shiyan wrote:
> > > > > As an example, this can be tested with i2c-gpio driver, is'nt it?
> > > >
> > > > We have a rockchip i2c driver in barebox. I just don't have a board
> > > > where the RK806 is connected via I2C.
> > > >
> > > > Sascha
> > > >
> > > > >
> > > > > ср, 16 окт. 2024 г. в 12:01, Sascha Hauer <s.hauer@pengutronix.de>:
> > > > > >
> > > > > > On Wed, Oct 16, 2024 at 10:07:57AM +0300, Alexander Shiyan wrote:
> > > > > > > Oh, I see that in [4/7]. Sorry for the noise.
> > > > > >
> > > > > > I think you are misreading the patch. Indeed the RK806 can work in I2C
> > > > > > mode and my patch series currently doesn't support this. I have two
> > > > > > different of_device_id tables, one used for I2C and the other for SPI.
> > > > > > RK806 currently only is in the SPI table, not in the I2C table.
> > > > > >
> > > > > > I2C support for RK806 is likely only a matter of adding the compatible
> > > > > > entry. I can add it, but I cannot test it. Do you have a hardware to
> > > > > > test this on?
> > > > > >
> > > > > > Sascha
> > > > > >
> > > > > >
> > > > > > >
> > > > > > > вт, 15 окт. 2024 г. в 17:46, Alexander Shiyan <eagle.alexander923@gmail.com>:
> > > > > > > >
> > > > > > > > вт, 15 окт. 2024 г. в 14:21, Sascha Hauer <s.hauer@pengutronix.de>:
> > > > > > > > >
> > > > > > > > > This adds support for the RK806 to the rk808 driver. Additionally to
> > > > > > > > > I2C this variant comes with SPI support, so add SPI probe support to the
> > > > > > > > > driver.
> > > > > > > > >
> > > > > > > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > > > >
> > > > > > > > Hello Sascha.
> > > > > > > >
> > > > > > > > RK806 can also work via I2C. Can you add this compatibility together?
> > > > > > > >
> > > > > > > > Thanks!
> > > > > > >
> > > > > >
> > > > > > --
> > > > > > Pengutronix e.K.                           |                             |
> > > > > > Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> > > > > > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> > > > > > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
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


