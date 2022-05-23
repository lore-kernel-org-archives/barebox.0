Delivery-date: Mon, 23 May 2022 13:49:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt6Yx-006SKS-Ko
	for lore@lore.pengutronix.de; Mon, 23 May 2022 13:49:27 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt6Yv-00066D-Ec
	for lore@pengutronix.de; Mon, 23 May 2022 13:49:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MJwLwUebTlgqWt4HXSI69BMhT3SBlNaqM/8ONjqNzeI=; b=3/YpsHzp26KjdPCyRofMoP7zmy
	4udREX+rMymwaVfZZPw0beBUNxI15rV6xQQj6tS2gJAwitetb09XWKK8Rgw4wFJm9m57E5qBTo8Kt
	2yJi5t9nEA9B50AJQ3IlUG+oZ3M9OWng+rGjzaUld/b+IVPMOmpTPmeBrpSkiB88KFD9FabwTAq4D
	FPM8Fegovw5pZwvKzzmgO1QJ0W2RQFX1z9xkv7o8Vl/bWdwDrXhKvkHnEeW4lz3SAS8wsV/Q94QXs
	TWIcQRoi2uhC8IZItgQZSwXe3mtNXaSz3qOVAKlxIFjzhvg0ps2An+SawpazH4vb7BpTOGcMFhXSc
	ay2n063Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt6X8-003pmT-2p; Mon, 23 May 2022 11:47:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt5rA-003WUG-H6
 for barebox@lists.infradead.org; Mon, 23 May 2022 11:04:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nt5r4-0007al-4x; Mon, 23 May 2022 13:04:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nt5r3-0005iI-Rd; Mon, 23 May 2022 13:04:05 +0200
Date: Mon, 23 May 2022 13:04:05 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220523110405.GN25578@pengutronix.de>
References: <20220523092526.791716-1-a.fatoum@pengutronix.de>
 <20220523092526.791716-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220523092526.791716-5-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:59:56 up 53 days, 23:29, 76 users,  load average: 0.01, 0.05, 0.07
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_040412_653305_A1B9CB37 
X-CRM114-Status: GOOD (  20.95  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:3::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:3::133
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/8] serial: imx: add $global.bootm.earlycon fixup support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 23, 2022 at 11:25:23AM +0200, Ahmad Fatoum wrote:
> Allow barebox compute a suitable earlycon parameter.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/serial/serial_imx.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
> index 6a933c930e9b..cf9c3f02a7ef 100644
> --- a/drivers/serial/serial_imx.c
> +++ b/drivers/serial/serial_imx.c
> @@ -234,6 +234,8 @@ static int imx_serial_probe(struct device_d *dev)
>  	cdev->flush = imx_serial_flush;
>  	cdev->setbrg = imx_serial_setbaudrate;
>  	cdev->linux_console_name = "ttymxc";
> +	cdev->linux_earlycon_name = "ec_imx6q";

"ec_imx6q" sounds wrong for the older i.MX SoCs. I don't know how
OF_EARLYCON_DECLARE works, but this:

OF_EARLYCON_DECLARE(ec_imx6q, "fsl,imx6q-uart", imx_console_early_setup);
OF_EARLYCON_DECLARE(ec_imx21, "fsl,imx21-uart", imx_console_early_setup);

looks like it matches a device tree compatible entry. For the older SoCs
you should likely use "ec_imx21".

Anyway, plain "earlycon" just works, why the hassle?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

