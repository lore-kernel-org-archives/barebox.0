Delivery-date: Wed, 25 Jan 2023 10:23:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKbzo-001K7U-8M
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 10:23:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKbzl-0006bv-JK
	for lore@pengutronix.de; Wed, 25 Jan 2023 10:23:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l5k6jVIzCbFdzIHAxBzYkWVtuCeXcHFChgWCWQmFC1s=; b=biDYUWxVecLBr7lukaf2cK6Ur6
	kBUIEkac4jdxTUNr56p4X2SegiyFFQYziUAlGHB5bauVMI4oct2O8loCQPcCFxmdyIBAWCy+b1u18
	e8RmpaDiH6tv7oXcK2Za8PJ12beoq3dqdJhh9fqxlgu5eoF3ZQeeBAci/gngarTLztdpJCvfgr/N/
	yDBbu2ObiuRrJGPbFxUxrPcCh/w5hgXyRhMqu91WFGiOh9WzbOQZc+bG5yMBsVoLoZRAWxyOnMc5s
	v3pLSMSndw2lwVyFHf49Uy0+3zxLYj8NuVrK4rC9qUnTsqYzGSoDFhSLf8aCbjhMPAae7c7+7hwUu
	52GjKxVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKbyZ-006awT-IP; Wed, 25 Jan 2023 09:21:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKbyV-006avL-CU
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 09:21:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKbyU-0006I1-4Q; Wed, 25 Jan 2023 10:21:46 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKbyT-0006f0-TH; Wed, 25 Jan 2023 10:21:45 +0100
Date: Wed, 25 Jan 2023 10:21:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230125092145.3jbkrhulfgkgg3qb@pengutronix.de>
References: <20230125073739.1992152-1-s.hauer@pengutronix.de>
 <20230125073739.1992152-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125073739.1992152-2-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_012147_450050_3C456F47 
X-CRM114-Status: GOOD (  17.34  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] i2c: Make i2c_recover_bus() to return -EBUSY if bus
 recovery unimplemented
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-01-25, Sascha Hauer wrote:
> Based on the corresponding Kernel commit c126f7c3b8c4:
> 
> The i2c_recover_bus() returns -EOPNOTSUPP if bus recovery isn't wired up
> by the bus driver, which the case for Tegra I2C driver for example. This
> error code is then propagated to I2C client and might be confusing, thus
> make i2c_recover_bus() to return -EBUSY instead.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/i2c/i2c.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index 7e1cea49f3..f3efb62087 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -353,7 +353,7 @@ int i2c_generic_gpio_recovery(struct i2c_adapter *adap)
>  int i2c_recover_bus(struct i2c_adapter *adap)
>  {
>  	if (!adap->bus_recovery_info)
> -		return -EOPNOTSUPP;
> +		return -EBUSY;
>  
>  	dev_dbg(&adap->dev, "Trying i2c bus recovery\n");
>  	return adap->bus_recovery_info->recover_bus(adap);
> -- 
> 2.30.2
> 
> 
> 


