Delivery-date: Mon, 23 Feb 2026 10:16:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuS3C-004mN1-0p
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 10:16:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuS3C-00012m-Hu
	for lore@pengutronix.de; Mon, 23 Feb 2026 10:16:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sA1zzQQT+YGlUD1908rWGjYlMtl5AOBAkacTjGAerfg=; b=Rm+hF5ENFDWURDaUT831hNHZIA
	wDchZ/pE1WPwSCFntHwU0fLVAUkK9pWMFrD5T4ixUdtZT2VAILNDkS6XZMaTOYbQ/k1NuH6npguYl
	rn70RZDtZl9p7sj9xHBGYHcI0C7s2CmHMkkwYK8UC9hCdqzyahqKuIPf9hpLuu0U9gqQiZBgQuB1D
	BtT2eOm6fjQqlk0peaJeeiN1UQjgJBUL6VuVXmbKKvUn5iUWkYd81ow6c1zNgRw6iyDpfHwro/cDF
	khJvrAddeVNtnej/JRYid6Q6PQxvCZcjqQiOlb8U0vR5iEEq7LEnN26QMx24niWILSAToHqI+ngpO
	cckrkouA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuS2n-0000000HVxU-0dvt;
	Mon, 23 Feb 2026 09:15:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuS2k-0000000HVwF-3doD
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 09:15:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vuS2j-0000xU-B6; Mon, 23 Feb 2026 10:15:53 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vuS2h-002ChS-2Z;
	Mon, 23 Feb 2026 10:15:53 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vuS2j-000000014te-0EIW;
	Mon, 23 Feb 2026 10:15:53 +0100
Date: Mon, 23 Feb 2026 10:15:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aZwaydz8gMTJNv5W@pengutronix.de>
References: <20260218124307.2358552-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260218124307.2358552-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_011554_906544_17AB37BA 
X-CRM114-Status: GOOD (  23.26  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] eeprom: at24: verify that chip is accessible during probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Feb 18, 2026 at 01:42:48PM +0100, Marco Felsch wrote:
> Perform a basic sanity check to verify that the EEPROM is actually
> accessible by reading 1-byte. Linux does the same sanity check for all
> non-ACPI platforms.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/eeprom/at24.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
> index 06a2a4b22697..a08d42fe3e14 100644
> --- a/drivers/eeprom/at24.c
> +++ b/drivers/eeprom/at24.c
> @@ -373,6 +373,7 @@ static int at24_probe(struct device *dev)
>  	unsigned i, num_addresses;
>  	const char *devname;
>  	const char *alias;
> +	u8 test_byte;
>  
>  	if (dev->platform_data) {
>  		chip = *(struct at24_platform_data *)dev->platform_data;
> @@ -487,6 +488,12 @@ static int at24_probe(struct device *dev)
>  	at24->nvmem_config.size = chip.byte_len;
>  	at24->nvmem_config.id = devid;
>  
> +	/* Perform a one-byte test read to verify that the chip is functional */
> +	if (at24_read(at24, &test_byte, 0, 1) != 1) {
> +		err = -ENODEV;

a return of -ENODEV from driver probe doesn't print an error. Is that
what we want here?

Sascha

> +		goto err_devfs_create;
> +	}
> +
>  	at24->nvmem = nvmem_register(&at24->nvmem_config);
>  	err = PTR_ERR_OR_ZERO(at24->nvmem);
>  	if (err)
> -- 
> 2.47.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


