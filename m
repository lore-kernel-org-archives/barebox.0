Delivery-date: Thu, 26 Sep 2024 09:24:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stir3-002uha-0E
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 09:24:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stir3-0004mz-I3
	for lore@pengutronix.de; Thu, 26 Sep 2024 09:24:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7NKF2goc43u4Tn9JMyCNac7WrtUuJUqfpim0fnxvHOc=; b=epuUSiik8ObRjGy2782RXVHN9w
	jU11iNVmU3gs0O1O9JW2NHWZkObZEIzxhnnVSrHX3Jk8BB8tveeqSGICWs2JDC8cDWHJ5PkvH27NI
	Z7hNLTC2Lt2UQkvQJMo2YWdd+J9lT7Us53GfAWUM5kyc81Rt7M87EtDr/ymj7OFDaQXFf07mvvebM
	YNK2JSbY/RX/BtLwCuJw60Qd1KW3We/LjBQdkng9Yps1FSmX6EXHCC8PjWa9u5gC6TEc0yK6JRh1s
	xlDjfpQyuLUiz4MiqKsb6qYl75zWkK9hQ6B8PlFwsJF5umXfc4eTL13NXrCisUWuDQJe4DACVMHBt
	S6+Cvdpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stiqc-00000007Uhk-1tRI;
	Thu, 26 Sep 2024 07:23:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stijM-00000007TZU-3Czh
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 07:16:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1stijL-0000fS-8n; Thu, 26 Sep 2024 09:16:03 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1stijK-001dGn-Sr; Thu, 26 Sep 2024 09:16:02 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1stijK-00D7DX-2Z;
	Thu, 26 Sep 2024 09:16:02 +0200
Date: Thu, 26 Sep 2024 09:16:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <ZvUKMrQckfAELL8M@pengutronix.de>
References: <20240925-spi-gpio-v1-0-47f6285b3bf1@pengutronix.de>
 <20240925-spi-gpio-v1-2-47f6285b3bf1@pengutronix.de>
 <008a1d90-2bb7-4135-9546-ba7b21bc56dc@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <008a1d90-2bb7-4135-9546-ba7b21bc56dc@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_001604_874504_F125ED73 
X-CRM114-Status: GOOD (  17.35  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] spi: spi-gpio: support different word widths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 26, 2024 at 08:07:49AM +0200, Ahmad Fatoum wrote:
> On 25.09.24 16:06, Sascha Hauer wrote:
> > The spi-gpio driver only supports 8bit word width. Add support for
> > arbitrary word widths up to 32bit.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> With below issue addressed:
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> >  static int gpio_spi_setup(struct spi_device *spi)
> >  {
> > -	if (spi->bits_per_word != 8) {
> > -		dev_err(spi->master->dev, "master does not support %d bits per word\n",
> > -			spi->bits_per_word);
> > -		return -EINVAL;
> > -	}
> > -
> > +	gpio_spi_set_cs(spi, 0);
> 
> Chipselect is already asserted/deasserted in gpio_spi_transfer, why deassert it here?

I had a case where the CS is asserted by default during startup. I had
to deassert it once before the very first transfer to signal a new
transfer to the slave.

Anyway, this change deserves an extra patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


