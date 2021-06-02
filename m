Delivery-date: Wed, 02 Jun 2021 12:30:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loO9K-0001Bw-Pv
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:30:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loO9G-0006fR-6o
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:30:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cH4uzJxLOTc+BES9jgMBY5d1yQteedzvpQvDyUCp3FM=; b=W5m6+3Nj5nmeSYGnxS82QNx7il
	hhORYN2Ghj/YBGZX/7GnEFPfohRhyuJZmBVRuu1tgUcLpIZBBWICjO0KkZk3s+xeoLZXtojFckDba
	ZuL12Qb6xsV1q9xSCCL3EXZEIs+kFekkTd/q8XeYiQNppRp5/SRvOUf8PLeLgZMEjhpAyJ/gjFf8C
	ZTjG8w2oMOlpZF6Vk/T7dxu9AoOtOzwvMpPyubqjPTPXJn3lB5AbX9ZDW4psTYqBLoYMaEhZLX5H7
	OfAoVF0gK2zj7hKUrCW6sJfukNTQtJlUZWv8O9Sy74MSYEGJOqXmcdl0CWS3qsi+PBdOXMmuL3pjm
	uNy39glA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loO7q-003Kgv-RX; Wed, 02 Jun 2021 10:29:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loO7j-003KgM-IF
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 10:29:23 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1loO7i-0006M8-1F; Wed, 02 Jun 2021 12:29:18 +0200
To: Oleksij Rempel <ore@pengutronix.de>
Cc: mgr@pengutronix.de,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20210602102524.20034-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7898464b-55df-45e8-0fd2-f36bc570dc87@pengutronix.de>
Date: Wed, 2 Jun 2021 12:29:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210602102524.20034-1-a.fatoum@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_032919_640180_5440E087 
X-CRM114-Status: GOOD (  21.86  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: at91: microchip-ksz9477-evb: support PBL console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Oleksij,

On 02.06.21 12:25, Ahmad Fatoum wrote:
> First stage PBL does FAT file system accesses, so there is more that
> could go wrong compared with second stage PBL that just does extraction.
> 
> Enable PBL console to get some error messages out if things don't work
> out.

I don't have the HW handy to test this. Would be great if you could
boot this up once to see nothing broke. Thanks!

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/microchip-ksz9477-evb/lowlevel.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
> index 93ae4819750c..7c5a69af05de 100644
> --- a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
> +++ b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
> @@ -41,8 +41,9 @@ SAMA5_ENTRY_FUNCTION(start_sama5d3_xplained_ung8071_xload_mmc, r4)
>  
>  	sama5d3_udelay_init(MASTER_CLOCK);
>  	sama5d3_xplained_ddrconf();
> -	if (IS_ENABLED(CONFIG_DEBUG_LL))
> -		dbgu_init();
> +
> +	dbgu_init();
> +	pbl_set_putc(at91_dbgu_putc, IOMEM(AT91_BASE_DBGU1));
>  
>  	sama5d3_atmci_start_image(0, MASTER_CLOCK, 0);
>  }
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

