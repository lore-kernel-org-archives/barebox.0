Delivery-date: Fri, 15 Dec 2023 12:05:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE60c-003ZEv-2y
	for lore@lore.pengutronix.de;
	Fri, 15 Dec 2023 12:05:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE60d-00085C-2v
	for lore@pengutronix.de; Fri, 15 Dec 2023 12:05:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AHoxiYv2WJLoHqHTJW0MAsoS2pNWaBRgbfB9F/qwfv0=; b=Yvzc7/xmuOZCQGwyi38efRX2GP
	IwLpd5lWoIPMAZkHvsA3VPpevr2ZRWDgm7WEvCUTbq7DUHDanFHtxLhrWllyqOLx1Bxe8XnUt7/ut
	cAAbgqgVMgFfUQChbAhl43tyqFa//m85Dq/NcIbYN9z7U6rBTNHsbSjZA7tpFbPAAAwfKdJqcLr3+
	KtxMxlc1/mELXSKESTX5AgRhnjxQawwfU9xjvXoxaXoNiUfxOMgzXYqdNtNc2egMN8ntfiLJbuDEz
	UZ07X5+tkSQdczbDKd8rqEVVIaeDRehYOxQIEToZPTjZxEUQlw5gzgxT9ZYxy1446xKiMTLJ4LM63
	uuNJKZ7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE5za-002raE-1H;
	Fri, 15 Dec 2023 11:04:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE5zW-002rZu-21
	for barebox@lists.infradead.org;
	Fri, 15 Dec 2023 11:04:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rE5zV-0007sa-Da; Fri, 15 Dec 2023 12:04:25 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rE5zV-00G0U2-0w; Fri, 15 Dec 2023 12:04:25 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rE5zU-0076dh-Uk; Fri, 15 Dec 2023 12:04:24 +0100
Date: Fri, 15 Dec 2023 12:04:24 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231215110424.GM1318922@pengutronix.de>
References: <20231213121246.1676405-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231213121246.1676405-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_030426_681565_87166E85 
X-CRM114-Status: GOOD (  32.09  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Documentation: bcm283x: be clearer about Raspberry Pi 4
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Dec 13, 2023 at 01:12:46PM +0100, Ahmad Fatoum wrote:
> While rpi4 support is not as extensive as the rpi3, it's still
> sufficient to boot Linux from either SD or Ethernet.
> 
> Make this clearer in the documentation.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/boards/bcm2835.rst | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
> index cfd3bb2edb96..f7ab723d633a 100644
> --- a/Documentation/boards/bcm2835.rst
> +++ b/Documentation/boards/bcm2835.rst
> @@ -5,28 +5,35 @@ Raspberry Pi
>  ------------
>  
>  barebox has support for BCM283x-based Raspberry Pi single board computers.
> -Support is most extensive for BCM283[567]. For the newer BCM2711 used in the
> -Raspberry Pi 4, only basic support is currently available (Serial Port,
> -Pinctrl/GPIO, SD-Card).
> +Support is most extensive for BCM283[567], but barebox can also boot Linux
> +over SD or Ethernet on the Raspberry Pi 4.
>  
>    1. Prepare an SD or microSD card with a FAT filesystem of at least 30 MB in size.
>  
>    2. Download the `Raspberry Pi firmware`_ (195 MB), unzip it, and copy the
>       contents of the ``boot/`` folder to your card.
>  
> -  3. Use ``make rpi_defconfig; make`` to build barebox. This will create the following images:
> +  3. Use ``make rpi_defconfig; make`` to build barebox for 32-bit boards or
> +     ``make rpi_v8a_defconfig; make`` to build barebox for 64-bit.
> +
> +     ``rpi_defconfig`` will build at least following images:
>  
>       - ``images/barebox-raspberry-pi-1.img`` for the BCM2835/ARM1176JZF-S (Raspberry Pi 1, Raspberry Pi Zero)
>       - ``images/barebox-raspberry-pi-2.img`` for the BCM2836/CORTEX-A7 (Raspberry Pi 2)
>       - ``images/barebox-raspberry-pi-3.img`` for the BCM2837/CORTEX-A53 (Raspberry Pi 3)
>       - ``images/barebox-raspberry-pi-cm3.img`` for the BCM2837/CORTEX-A53 (Raspberry Pi CM3)
> -     - ``images/barebox-raspberry-pi.img``, which is a super set of all the other images
> +     - ``images/barebox-raspberry-pi.img``, which is a super set of all the other images,
> +       including Raspberry Pi 4 32-bit support.
>  
>       Copy the respective image for your model to your SD card and name it
>       ``barebox.img``.
>  
> -     The ``images/barebox-raspberry-pi.img`` is expected to replace the other images
> -     in the future. It contains the device trees of all supported (and enabled) variants
> +     For 64-bit, only ``images/barebox-raspberry-pi.img`` will be created, which is usable
> +     for both Raspberry Pi 3 and Raspberry Pi 4 in 64-bit mode. No support for the Raspberry
> +     Pi 5 has been contributed yet.
> +
> +     The ``images/barebox-raspberry-pi.img`` is expected to be the sole image for 32-bit
> +     also in the future. It contains the device trees of all supported (and enabled) variants
>       and determines at runtime what board it runs on and does the right thing.
>  
>    4. Create a text file ``config.txt`` on the SD card with the following content::
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


