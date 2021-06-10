Delivery-date: Thu, 10 Jun 2021 16:10:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrLON-0000xj-89
	for lore@lore.pengutronix.de; Thu, 10 Jun 2021 16:10:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrLOM-000683-Cy
	for lore@pengutronix.de; Thu, 10 Jun 2021 16:10:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z1dgvCjdFKe15EuIE50tj4mvyBhPvrdxPGAS3sxY2Po=; b=Sjy1sTS8qbM+f0YtUJHpjFUhv4
	octDqUGGgL/XbGX+I/9E50bZZxrNKsRCcU6fpLL3hY+LkF/ma91K4OYDrdC/G9zCc+vyGZrnrc9Rt
	BCX3CNib4Nvm+WOcmT6jd0qvbxHD/dAtrnhX5SMoaEpi5r1hXpA7fNbN2qhEHnLP7FjBBe8u5NeX7
	E5d/zdWavggPzx949t4A+Q+3jnWXGGuTb7it4M+/vMAyi1jaWuhBfKJ9OYDBe5DVM4mzXUfYvzWtv
	1tWW0q8D8fNUpeKsnww+MXVCl3Kcvl6MJfAvMYr02IcGC0avRPKR5ZmR0IoKvVxBM7DEkI8/xc5uB
	NNLFV6rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrLMr-00157M-8e; Thu, 10 Jun 2021 14:09:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrLMl-00155W-Kf
 for barebox@lists.infradead.org; Thu, 10 Jun 2021 14:09:05 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lrLMi-0005ms-Fo; Thu, 10 Jun 2021 16:09:00 +0200
To: "Barbier, Renaud" <renaud.barbier@abaco.com>,
 Barebox List <barebox@lists.infradead.org>
References: <MN2PR16MB31351CB3C8DDCAA07DB9E25591359@MN2PR16MB3135.namprd16.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ad0091c0-2919-de80-01d5-41cea68d5550@pengutronix.de>
Date: Thu, 10 Jun 2021 16:09:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <MN2PR16MB31351CB3C8DDCAA07DB9E25591359@MN2PR16MB3135.namprd16.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_070903_731731_E7F829FC 
X-CRM114-Status: GOOD (  21.09  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: NXP Layerscape
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Barbier,

On 10.06.21 15:49, Barbier, Renaud wrote:
> I received a NXP  LS1046A-RDB

It doesn't reboot cleanly with a USB serial adapter attached!
Jfyi, gave me a scare first time, when I thought I broke something ^^.

> 
> I built barebox for the LS1046A and got the image barebox-ls1046ardb-qspi.image.
> I programmed the image in the alternative SPI bank as per NXP instructions:
> =>	tftp $load_addr
> =>	sf erase 0 +$filesize && sf write $load_addr 0 $filesize
> 
> Barebox does not boot.
> 
> I did notice that u-boot is at address 0x40100000 while the RCW is at 0x40000000.
> My understanding is that barebox is one image and shall be programmed at offset 0 of the SPI (0x40000000)

Can't comment on that. Sascha did the integration.

> At present I cannot connect my I.C.E. due a pin stuck in my MIPI connector.
> 
> Any return on experience is welcome.

Can comment on that: Last time I did this, I wrote some documentation:
https://www.barebox.org/doc/latest/boards/layerscape.html

There I flashed barebox from another barebox booted from SD-Card.
I'd assume that should still work. I can't recall how the CPLD
needed to be tickled, but it would be helpful to know whether doing
it like described in the documentation doesn't work for you.

Cheers,
Ahmad

> 
> Cheers,
> Renaud
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

