Delivery-date: Tue, 15 Jul 2025 08:28:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubZ9I-0003Tr-18
	for lore@lore.pengutronix.de;
	Tue, 15 Jul 2025 08:28:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubZ9H-0007o2-Qj
	for lore@pengutronix.de; Tue, 15 Jul 2025 08:28:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HRXGteTnCELFYgHIq0NfVMs/bc+ElUqr5NcjMG/llec=; b=TisA8vuRSmnDMmcyCnqs26PaTE
	abFyORgrQZJXnLOwEzTK0E6NmjoA0vDcJLc8m7vacoLnjMG1MgB315DzJiCuQcLEK6etYGXxEcl0t
	B5bUN7d73FAPp4WOWzLiDxjbVTaoYgenIgEe1fP53U2Po1HtCQ5UxfgmTqnOgeNuGZw+SSBYE7I+N
	wf2UnNRV4rSn9CG0UVorS+ItVnVV4P6woslk98OcX5cXtZoqiX3ssyH3QRTBSpXi1r2B90FhjP7/q
	k5bGANFy17aJZ2/XK3JC2+N4LeEs7Sm+6kLEIZ6UbSp+Ew0UVP9bbn/yachlcAssnIqu7QZ30XypW
	/omw/RYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubZ8X-00000004Cbl-1dXv;
	Tue, 15 Jul 2025 06:27:33 +0000
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubZ6L-00000004CP3-21zK
	for barebox@lists.infradead.org;
	Tue, 15 Jul 2025 06:25:20 +0000
Received: from [IPV6:2a01:e0a:efa:53b0:468a:5bff:fe9a:3c4d] (unknown [IPv6:2a01:e0a:efa:53b0:468a:5bff:fe9a:3c4d])
	by smtp1-g21.free.fr (Postfix) with ESMTP id 4F3FAB00565;
	Tue, 15 Jul 2025 08:25:09 +0200 (CEST)
Message-ID: <6e2dbe14-3699-483b-9ef5-d1fcf2565d6a@trabucayre.com>
Date: Tue, 15 Jul 2025 08:25:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
Cc: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
References: <20250714071249.2428110-1-a.fatoum@barebox.org>
Content-Language: en-US
From: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
In-Reply-To: <20250714071249.2428110-1-a.fatoum@barebox.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_232517_664137_35C9AEBE 
X-CRM114-Status: GOOD (  11.17  )
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
Subject: Re: [PATCH 1/2] serial: cadence: support console= and earlycon=
 fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

Le 14/07/2025 à 9:12 AM, Ahmad Fatoum a écrit :
> If we tell the serial driver core about the names of the Linux
> console and earlycon driver, barebox can fix up the console= and
> earlycon= arguments without having to hardcode Linux boot arguments.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>   drivers/serial/serial_cadence.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
> index bda3269106c7..52b488e80f0a 100644
> --- a/drivers/serial/serial_cadence.c
> +++ b/drivers/serial/serial_cadence.c
> @@ -212,6 +212,9 @@ static int cadence_serial_probe(struct device *dev)
>   	cdev->getc = cadence_serial_getc;
>   	cdev->flush = cadence_serial_flush;
>   	cdev->setbrg = priv->clk ? cadence_serial_setbaudrate : NULL;
> +	cdev->linux_console_name = "ttyPS";
> +	cdev->linux_earlycon_name = "cdns";
> +	cdev->phys_base = priv->regs;
>   
>   	cadence_serial_init_port(cdev);
>   
Tested-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>

Thanks

Gwen


