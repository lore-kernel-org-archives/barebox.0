Delivery-date: Mon, 31 May 2021 09:22:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncFf-0002zZ-7v
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:22:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncFe-0005CF-6b
	for lore@pengutronix.de; Mon, 31 May 2021 09:22:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3eiAOgPxb04JqOtCI9a8tWk6i5fYGvlSxK4qpEnfIGI=; b=QNjPr35Qo8qW16M917AYpAM7qD
	9HO95ecu4gwsEWDMEXvopBDuqthdDISsQqN5+Zl+7x5kYaVdSLjbRRrARSwjX2LlZM+oYLcDrYdQ6
	M7T+2N4PEJARGR7yqEC+h/KRSDBffn5Z7mK+Yt2j4WR0P67bV582PpJbOukz5X+q23iTJ7UXNf3m8
	h5gi0mx2qKsu5DNt+CHN9U0MCf+Fw/eAHb55No8ZOgOipUwwJywtNyldRwtamKkMd6tNhSe7cL+Qt
	F1253m0aqCkVhi2z0sl1bjyZBVgqhtwQVZpq4NgiCqWuFDfJQs3ofVBo/9P2bFVwpic3+WHJhOCN7
	3QMOxoCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncES-00BAGx-Ef; Mon, 31 May 2021 07:21:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncEN-00BAG3-FJ
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:21:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lncEL-0004zL-Tu; Mon, 31 May 2021 09:20:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lncEL-0003Ys-Kc; Mon, 31 May 2021 09:20:57 +0200
Date: Mon, 31 May 2021 09:20:57 +0200
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210531072057.GF5211@pengutronix.de>
References: <20210528133041.1109923-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210528133041.1109923-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:20:44 up 102 days, 10:44, 123 users,  load average: 0.41, 0.47,
 0.36
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_002059_534194_A7B01873 
X-CRM114-Status: GOOD (  22.09  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/4] drivers: mci: imx-esdhc-common.c: Add missing
 dev_dbg define for pbl case
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 28, 2021 at 03:30:38PM +0200, Lucas Stach wrote:
> From: David Jander <david@protonic.nl>
> 
> Signed-off-by: David Jander <david@protonic.nl>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/mci/imx-esdhc-common.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
> index c9d589468f6c..7ee0674b997f 100644
> --- a/drivers/mci/imx-esdhc-common.c
> +++ b/drivers/mci/imx-esdhc-common.c
> @@ -156,7 +156,9 @@ static void __udelay(int us)
>  
>  #define udelay(n)	__udelay(n)
>  #undef  dev_err
> +#undef  dev_dbg
>  #define dev_err(d, ...)	pr_err(__VA_ARGS__)
> +#define dev_dbg(d, ...)	pr_debug(__VA_ARGS__)
>  
>  #endif
>  
> -- 
> 2.29.2
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

