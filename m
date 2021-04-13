Delivery-date: Tue, 13 Apr 2021 09:23:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDOh-00071f-IJ
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 09:23:43 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDOg-0000hT-NE
	for lore@pengutronix.de; Tue, 13 Apr 2021 09:23:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=frcXcxfgSHTuJq94b7l6uvaT3XqRN9HUbutxZ5ookWw=; b=jK3OfZAzahfvJbhgEXxDECP1u
	LGit5T0Lg65lr/Vcyaj/7rF0WFpCzwj2uhKZmUZQfKYWtdRJmDNZKYoxO+AdnwDNzIH9B1vIKKYTt
	uUy0pEWZ1bGJwV1ACrXrpTEM7j/NVfLa8Y2MRdS/f6n9Vsj/uGewEHU1/2JNHbSphu39TOSQrXDv8
	WL28yAez6AuHJbFwHEOEDj/U2kEmbS5rXzkmoMS6Bs8pELopjBcVJMfPUJ2ahf/kdKEB3S9KUTVhy
	X/MRwnJETXk7UXwl0aIVRTDVeO3ZwT3jHTszhVXo8Kf8OjYgTAPEJoyWOrxG1R7AA+L6MEeB7YTG9
	3UanaqqgA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWDMC-008UZ9-Ou; Tue, 13 Apr 2021 07:21:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDLr-008UY0-RQ
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 07:20:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=AtaBnziWwXm1BmKS0B3Dg5q+saoHDBasVU7YFmyaENw=; b=eDawJvstpqokBa4em8qnHinDuA
 3barnOSyvri7QBmp47vT5nQrAMYNKz0RX0COfJX3IRTNo60Mt8M8qpzNBonU/9oDL1R7/mrPM4LJ0
 7Qdl3Hsie2ZjTAawx3zifXDeoouEUw/vqm2lYiEuWKXHxlbkpxEB5rb098TtrOECG/Uck7kG3OjUn
 v9whcro/4ao0KG3y33T2V8D0lDCxP5W+JX5Cy7m2BmpVnbvbld7HeXNGYNY4nBgySI2x8KCKnwzFR
 QuKqjf0O47LViIzbftuPUQaFBkIPxH6znhzxW3TpOixqX2lW8OArYmhBKWCXr80qJpWoCBJcHqUFg
 hhif1gkg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDLp-006nTj-8I
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 07:20:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDLo-0000GN-1t; Tue, 13 Apr 2021 09:20:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDLn-0003XS-Lo; Tue, 13 Apr 2021 09:20:43 +0200
Date: Tue, 13 Apr 2021 09:20:43 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210413072043.GF19819@pengutronix.de>
References: <20210410105110.2080785-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210410105110.2080785-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:20:32 up 54 days, 10:44, 91 users,  load average: 0.29, 0.19, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_002045_316636_1B0C0A74 
X-CRM114-Status: GOOD (  24.55  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] gpio: pl061: implement gpio_ops::get_direction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Apr 10, 2021 at 12:51:10PM +0200, Ahmad Fatoum wrote:
> This makes gpioinfo on board that incorporate it more useful.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/gpio/gpio-pl061.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/gpio/gpio-pl061.c b/drivers/gpio/gpio-pl061.c
> index b9a8846dedaa..8dd9ca3bd5cd 100644
> --- a/drivers/gpio/gpio-pl061.c
> +++ b/drivers/gpio/gpio-pl061.c
> @@ -84,7 +84,18 @@ static void pl061_set_value(struct gpio_chip *gc, unsigned offset, int value)
>  	writeb(!!value << offset, chip->base + (1 << (offset + 2)));
>  }
>  
> +static int pl061_get_direction(struct gpio_chip *gc, unsigned offset)
> +{
> +	struct pl061_gpio *chip = container_of(gc, struct pl061_gpio, gc);
> +
> +	if (readb(chip->base + GPIODIR) & (1 << offset))
> +		return GPIOF_DIR_OUT;
> +
> +	return GPIOF_DIR_IN;
> +}
> +
>  static struct gpio_ops pl061_gpio_ops = {
> +	.get_direction = pl061_get_direction,
>  	.direction_input = pl061_direction_input,
>  	.direction_output = pl061_direction_output,
>  	.get = pl061_get_value,
> -- 
> 2.30.0
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

