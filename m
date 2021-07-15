Delivery-date: Thu, 15 Jul 2021 14:37:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m40cF-0006tm-1Z
	for lore@lore.pengutronix.de; Thu, 15 Jul 2021 14:37:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m40cE-0004BP-4g
	for lore@pengutronix.de; Thu, 15 Jul 2021 14:37:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qf7ChUknT5OKewmSg1b9yxcIzamFrCHZWEoAPdPRZ5Q=; b=m7TaXd1FTAYzAF
	ajqBu8Ji2YtTX0qWfNNRtSFdl1QN4PgAxHLjnz230IN9QYb9dJzIqbjibJeLiZo2RqPWb17qn5/nZ
	wZ6D2sYnNeyP+uwYEwynCZ/xcQetCSNWH+0Vxkmj5tc0dLDB9gSZ9f5GFk85XQfM74pPHikkYYf2C
	RXSlYLLgUxIwD46iRh1KKsLYCHULgFIUq3AfyOjsWxYIKptx0bJiBK6crjMrPdAq/msrksVu41b2t
	qZ1jkyCZ9ZOdS13inp8fBCO6dy9j45uw14L3cmOyJ0/gifhQhSL13aeSaDlLlqoLUYOBP6Zmz1vvV
	0u+nIBXBS9w67SDcM+Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m40az-000qa4-U6; Thu, 15 Jul 2021 12:36:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m40au-000qYU-Kl
 for barebox@lists.infradead.org; Thu, 15 Jul 2021 12:36:02 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1m40at-0003tH-Fq; Thu, 15 Jul 2021 14:35:59 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1m40at-0007iJ-6k; Thu, 15 Jul 2021 14:35:59 +0200
Date: Thu, 15 Jul 2021 14:35:59 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org, david@protonic.nl
Message-ID: <20210715123559.dulvjhqnklxkviyz@pengutronix.de>
References: <20210715123418.26339-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210715123418.26339-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:35:16 up 225 days,  2:41, 15 users,  load average: 0.10, 0.08,
 0.06
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_053600_721491_B392BD62 
X-CRM114-Status: GOOD (  24.58  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] ARM: protonic-imx6: do not expose RFID not to the
 kernel dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Ooops.. to many "not"s.

On Thu, Jul 15, 2021 at 02:34:18PM +0200, Oleksij Rempel wrote:
> RFID not is not used and should not be used by kernel, so remove the
> fixup.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/protonic-imx6/board.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
> index a718d54df4..6eb31a4bc4 100644
> --- a/arch/arm/boards/protonic-imx6/board.c
> +++ b/arch/arm/boards/protonic-imx6/board.c
> @@ -794,12 +794,6 @@ static int prt_imx6_probe(struct device_d *dev)
>  	if (ret)
>  		goto free_priv;
>  
> -	ret = of_register_fixup(prt_imx6_of_fixup, priv);
> -	if (ret) {
> -		dev_err(dev, "Failed to register fixup\n");
> -		goto free_priv;
> -	}
> -
>  	prt_priv = priv;
>  
>  	return 0;
> -- 
> 2.30.2
> 
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

