Delivery-date: Wed, 15 Nov 2023 14:06:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3FbX-00CXgN-2S
	for lore@lore.pengutronix.de;
	Wed, 15 Nov 2023 14:06:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3FbX-0000ou-Pq
	for lore@pengutronix.de; Wed, 15 Nov 2023 14:06:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6o7tH9ikW5rigm9qTsSae3kIQueeRP6FJ2c6SqnG+xk=; b=2YK6aWlB/T9oKD7nVRjDnJQ5b+
	FFpTBWpPlo+n8RSuGlFEgCo/BDge9jHz4v21GxO1IbiGOQsU4DnAxblPwU96ayvKWi+tKYp+q/OLs
	z0qV5nze6SNbwwauRchNXDubpmNy2lzl40ODpyiFGtLtlFONlRWTn7IrFnHUeTwO0VPrgF95pQJUI
	la0IORDiOyI0OEXcyKN6Os4KydNpC5xkmdiQzJTQ2uDvbX26OkkIoT6cROkQdW+4gZWTqn11d0t4q
	WaO1zFMpZJNWyP6707cVCkhqLaL9RlvnKFyv+16clj32FxZdPisVqJAc8kEfTZ1XmamJGvYYaoYqR
	2po7Dn1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3FZz-000pPS-2w;
	Wed, 15 Nov 2023 13:05:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3FZw-000pOd-2P
	for barebox@lists.infradead.org;
	Wed, 15 Nov 2023 13:05:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r3FZs-0000Gz-81; Wed, 15 Nov 2023 14:05:08 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r3FZr-009E9c-Rt; Wed, 15 Nov 2023 14:05:07 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r3FZr-002C03-PX; Wed, 15 Nov 2023 14:05:07 +0100
Date: Wed, 15 Nov 2023 14:05:07 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231115130507.GA3359458@pengutronix.de>
References: <20231114133007.3662931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231114133007.3662931-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_050512_785197_94FE38CB 
X-CRM114-Status: GOOD (  18.68  )
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
Subject: Re: [PATCH 1/8] mci: correct ENH_ATTRIBUTE_EN_MASK bit mask
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Nov 14, 2023 at 02:30:00PM +0100, Marco Felsch wrote:
> From: LI Qingwu <Qing-wu.Li@leica-geosystems.com.cn>
> 
> Extended CSD register PARTITIONING_SUPPORT ENH_ATTRIBUTE_EN is bit 1
> instead of 0
> 
> Signed-off-by: LI Qingwu <Qing-wu.Li@leica-geosystems.com.cn>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  include/mci.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/mci.h b/include/mci.h
> index 3e93f378e4a3..616c7c3cae5c 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -305,7 +305,7 @@
>  #define EXT_CSD_ENH_USR_MASK		(1 << 0)
>  
>  /* register PARTITIONING_SUPPORT [160] */
> -#define EXT_CSD_ENH_ATTRIBUTE_EN_MASK	(1 << 0)
> +#define EXT_CSD_ENH_ATTRIBUTE_EN_MASK	(1 << 1)
>  
>  /* register BUS_WIDTH [183], field Bus Mode Selection [4:0] */
>  #define EXT_CSD_BUS_WIDTH_1	0	/* Card is in 1 bit mode */
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


