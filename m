Delivery-date: Tue, 15 Jul 2025 22:20:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubm8r-000Fa6-1m
	for lore@lore.pengutronix.de;
	Tue, 15 Jul 2025 22:20:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubm8q-0002Gu-VX
	for lore@pengutronix.de; Tue, 15 Jul 2025 22:20:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M0KRxtMfskgJSJVYeANRpO3UF4MCbELb6vBhOs0zM54=; b=bh5Ng+ZDHc9Ajp/csgfiJ4a7Ti
	8bC0bjQQbout/rxjDnLKLwUdqblCTaBH+6ErWW823+qVezMPOYiIhC+IR8iUJlOXgpm2PPyLNlnOf
	WEccZAKlrqWbJqYEhWdtLH41euzcl7pRegSBsk788mI622Hl4OYjihTm9IBtmdJSSUEDO7nctjDEW
	5BrCLNsKVCOjel1VUBUgvwWh79G6Bb83295D+mdJ0n021BWQ8YoDkgG08evwaaJ0zI0lH5xFu0sbt
	IAsG/rl7gryw/CIEf0/ALCjIIMGdVVchJORGsrNg7EK7BMWLvMp2U6Yy6udfzi71FnbfbBimg7Rtz
	kka/wPuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubm8Q-00000006ARi-2fGZ;
	Tue, 15 Jul 2025 20:20:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubm8O-00000006AR0-08hE
	for barebox@lists.infradead.org;
	Tue, 15 Jul 2025 20:20:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ubm8L-0001m5-Hs; Tue, 15 Jul 2025 22:20:13 +0200
Message-ID: <9183ce45-f0c5-432f-b424-5dad3f5b03b5@pengutronix.de>
Date: Tue, 15 Jul 2025 22:20:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <DM5PR07MB3532E2B48E52ED710507A7B6EC57A@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <DM5PR07MB3532E2B48E52ED710507A7B6EC57A@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_132016_074583_C523F209 
X-CRM114-Status: GOOD (  18.28  )
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
Subject: Re: ls1046a: fsl-fman failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Renaud,

Thanks for the report and your investigation and sorry for the breakage.

I just Cc'd you on a suggested fix.

Cheers,
Ahmad

On 15.07.25 17:04, Renaud Barbier wrote:
> I have recently moved to barebox v2025.06 and the ethernet driver is failing probing.
> In the COMMIT below, dev_get_drvdata is replaced by the following function device_get_match_data:
> 
> const void *device_get_match_data(struct device *dev)
>   {
> ~         if (dev->of_id_entry) {
> +                pr_err("%s A0 return 0x%p\n", __func__, dev->of_id_entry->data);
>                   return dev->of_id_entry->data;
> +         }
> 
> ~         if (dev->id_entry) {
> +                pr_err("%s A1 return 0x%p\n", __func__, dev->of_id_entry->data);
>                   return (void *)dev->id_entry->driver_data;
> +         }
> 
> +        pr_err("%s return 0x%p\n", __func__, NULL);
>           return NULL;
>   }
> 
> For my specific device, I get the following debug message:
> ERROR: fsl-fman-port 1a8b000.port@8b000.of: probe
> ERROR: device_get_match_data A0 return 0x0000000000000000 (here dev->of_id_entry is not NULL  and dev->of_id_entry->data is returned)
> 
> and from fsl_fman_port_probe:
> ERROR: fsl-fman-port 1a8b000.port@8b000.of: type = 0. This is a valid type: FMAN_PORT_TYPE_RX = 0
> ERROR: fsl-fman-port 1a8b000.port@8b000.of:  out 
> 
> COMMIT:
> index f205de1929..84e7f20330 100644
> --- a/drivers/net/fsl-fman.c
> +++ b/drivers/net/fsl-fman.c
> @@ -1085,15 +1085,14 @@ static int fsl_fman_mdio_probe(struct device *dev)
>  static int fsl_fman_port_probe(struct device *dev)
>  {
>         struct resource *iores;
> -       int ret;
>         struct fsl_fman_port *port;
>         unsigned long type;
> 
>         dev_dbg(dev, "probe\n");
> 
> -       ret = dev_get_drvdata(dev, (const void **)&type);
>          dev_err(dev, "type = %d\n", type); <==== type is 0 or 1 (FMAN_PORT_TYPE_RX  or FMAN_PORT_TYPE_TX )
> -       if (ret)
> -               return ret;
> +       type = (uintptr_t)device_get_match_data(dev);
> +       if (!type)  <==== HERE it bails out because type == 0
>                  dev_err(dev, "out\n"); **
> +               return -ENODEV;
> 
>  
>  
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


