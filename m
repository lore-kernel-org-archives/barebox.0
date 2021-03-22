Delivery-date: Mon, 22 Mar 2021 06:05:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOCkp-0002y0-T9
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 06:05:27 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOCkn-0004Ad-Re
	for lore@pengutronix.de; Mon, 22 Mar 2021 06:05:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AC+LhX08Jj+aFijZrBLyZWdo40wBa5T7Xp7Q5+jOqHs=; b=YmKbBpcLEzNeuUfYBK2R57/aB
	t1aHBYcYabOroA85d3Bz1+bgaW7+tD4KTGAcu4cUs31lJxibdHqsi8P1Y+67o7AIiElSFeTrmNQDj
	kl7+2rAe8x42k9klljF6Yh5Y7RPLZoo5LCntjo4OgePF/hKunJ3NaQga526dZOXo/u8gaitadSiI5
	ho8l1rGvjw8ZXfs45/ReJwXPq5JoZSVnirQUq2Rj6YvZBslH21mYInvvTHkUoyaznjk/Ny2Uk5D0F
	If1x8tDAc+qgWV+5XQxynX0e5icidmpFLNtKTvJsNUX8gFx9BLbdNJ/nI+Um23mEjhJtL1K0Zrx2T
	h92oCraLw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOCjW-00AuTf-BV; Mon, 22 Mar 2021 05:04:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOCjN-00AuRe-SS
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 05:04:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOCjN-00043i-FA; Mon, 22 Mar 2021 06:03:57 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOCjN-0005Rg-4W; Mon, 22 Mar 2021 06:03:57 +0100
Date: Mon, 22 Mar 2021 06:03:57 +0100
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210322050357.GK23724@pengutronix.de>
References: <20210319162605.2898826-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319162605.2898826-1-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:03:48 up 32 days,  8:27, 49 users,  load average: 0.18, 0.21, 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_050358_401146_2D52536E 
X-CRM114-Status: GOOD (  24.05  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: macb: add tx clock rate for 10 MBit link
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 19, 2021 at 05:26:05PM +0100, Michael Tretter wrote:
> If the phy reports a 10 MBit link, which can happen during link
> negotiation, the macb prints a warning, because it does not know the
> clock rate for the TX clock.
> 
> Implement setting the TX clock rate for 10 MBit to avoid the warnings.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---

Applied, thanks

Sascha

>  drivers/net/macb.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index 188dbf2d8c15..14a0b45322bf 100644
> --- a/drivers/net/macb.c
> +++ b/drivers/net/macb.c
> @@ -269,6 +269,9 @@ static int macb_set_tx_clk(struct macb_device *macb, int speed)
>  	}
>  
>  	switch (speed) {
> +	case SPEED_10:
> +		rate = 2500000;
> +		break;
>  	case SPEED_100:
>  		rate = 25000000;
>  		break;
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

