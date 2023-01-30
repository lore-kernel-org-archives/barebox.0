Delivery-date: Mon, 30 Jan 2023 19:36:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMZ0j-007tMV-Iq
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 19:36:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMZ0g-0003Xb-O4
	for lore@pengutronix.de; Mon, 30 Jan 2023 19:36:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J4wElG+rkh3uvxtdei3NZCL5xdxqR9vGZK9FkadOygU=; b=yltiumSQmiWbeZEebCasi436zF
	w9fP7UbsdhG9PhXtXyQmBAp3xo27uaaTAaWMKsE3RYvEWuSLV5Zw6Dxaybe43vm+nOy0h5JBXJzYK
	PJEAC93OSk+ysNwtHXWmUobP8ViqSun0akCEGVtjb6vWsqudsy/63Gze1nMUBJabop/hE4OAki0+z
	chOCAj5BDWVOla2dDJXAGeQwn3TgIxIIMtKXbfV93FTqdfeBmkIYt0vIzB5YjwR1Q1HgG84hp7j5+
	Wrb0Zgt5tHEstreKDNikNr/lqfDJlW3tpCxZQy+eh32ZWoFTRww5YEai+8meXou80AwDUZJVJMN3O
	w8VSEzsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMYzD-0052ht-M9; Mon, 30 Jan 2023 18:34:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMYyh-0052WU-Sp
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 18:34:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMYye-00031n-Cq
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 19:34:00 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMRNn-0002di-Hz; Mon, 30 Jan 2023 11:27:27 +0100
Date: Mon, 30 Jan 2023 11:27:27 +0100
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230130102727.GQ13319@pengutronix.de>
References: <20230126185643.104049-1-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230126185643.104049-1-contact@jookia.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_103404_008069_75FBDFD6 
X-CRM114-Status: GOOD (  22.85  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,
	DATE_IN_PAST_06_12,DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] I2C: i.MX: early: Use internal udelay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 27, 2023 at 05:56:43AM +1100, John Watts wrote:
> udelay isn't provided in the PBL, so use our own definition.
> 
> This avoids boards having to define udelay in their code.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  drivers/i2c/busses/i2c-imx-early.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-imx-early.c b/drivers/i2c/busses/i2c-imx-early.c
> index 6c8bdc7904..fcf279eff8 100644
> --- a/drivers/i2c/busses/i2c-imx-early.c
> +++ b/drivers/i2c/busses/i2c-imx-early.c
> @@ -90,6 +90,13 @@ static int i2c_fsl_acked(struct fsl_i2c *fsl_i2c)
>  	return i2c_fsl_poll_status(fsl_i2c, 0, I2SR_RXAK);
>  }
>  
> +static void __udelay(int us)
> +{
> +	volatile int i;
> +
> +	for (i = 0; i < us * 1000; i++);
> +}

This takes around 5 times too long on a i.MX8MM and around 50 times too
long on a i.MX6Q. This was measured under a regular barebox on the
shell. In an early environment with MMU disabled it takes 730 times too
long.

Maybe we could do this:

static void __udelay(void *base, int us)
{
	int i;

	for (i = 0; i < us * 4; i++)
		readb(base);
}

The time spent for a register read depends on the bus clock which
doesn't change that much between the different SoCs.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


