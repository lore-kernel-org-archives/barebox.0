Delivery-date: Tue, 12 Apr 2022 10:00:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neBSB-00GxqW-L3
	for lore@lore.pengutronix.de; Tue, 12 Apr 2022 10:00:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neBS8-0003aA-H5
	for lore@pengutronix.de; Tue, 12 Apr 2022 10:00:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mJHEeZgDkUVn3HULRx9wa2r1PuypujYUFxFg5VCQKTo=; b=qPBy+j66BdTRJSqulc+vRgb3Qh
	DM3dmdNoz3CILyfKoy79GZuqNc6JhJKVS3L1bIkcDiSmy7s+w1lvXkDrVK3d2j+gGo8mR5gBEwmEG
	TWN5oJ7o3dCV4cBv8M2AB1QD1bqn1dblAsYt2K+SCY3n22p5WowAd67+RI1BukycpXTq3oUdYHjp7
	dDuCD2f5KzUNNGbA/aBG6TEpZTK1JOddoe+yGdSDOT9GJ5gS6j6XgjjIs1qHaohBANaHqZ3VN1ewL
	DuQwKJK+F1cZG9R7v5K/7Yz1ouNlWyydh+8lTvdwvhoxHfyB1b5XY5nakTJv6ic/kdHSmR1jlPKji
	s2lcs1PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neBQE-00COIU-Ls; Tue, 12 Apr 2022 07:58:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neBJC-00CKqX-25
 for barebox@bombadil.infradead.org; Tue, 12 Apr 2022 07:51:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=dVn7TwgIIfH5RdTYw6X1Lty2T2BBsRMcEU4+q/RI1hY=; b=AoUGoxBvxdkMZH+EQf23rk4Q1E
 tjGIVpXTbPYeUBIRUz2NGCLjgnj6Fwgi07IDxV+3pqz05mJSM5+8IMhQJ8Xubd+qRT/GRWhQ8AtKa
 VrHpzymTTrqWdcNRCEMQx0Y5uE3Tkwl9/LSQL4FPFQoXSgA3XMTmd8JtoZIDcKgs9wLxkEyZN9cG5
 1Y/b4AIJbvax2wXaVz2AqcQYch7J2NIfXYMUNd3eOenuL0pkbG8YF/HW3UptP3j1IgtmJvF873rVV
 RxLUAVvYi2YcjWrcp++aJAbORaDrqhPF/5nHJscbMVCvsI21fIaQLn4j03mwvm/Q5OAPiNwq3rSB5
 eAdkEPAw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neBJ6-004Fgq-L4
 for barebox@lists.infradead.org; Tue, 12 Apr 2022 07:51:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neBJ6-0002Am-6T; Tue, 12 Apr 2022 09:51:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neBJ5-0007Q1-Tz; Tue, 12 Apr 2022 09:51:23 +0200
Date: Tue, 12 Apr 2022 09:51:23 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220412075123.GT4012@pengutronix.de>
References: <20220408131709.663461-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220408131709.663461-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:51:15 up 12 days, 20:20, 65 users,  load average: 0.29, 0.21, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_085125_124910_BC8F55A7 
X-CRM114-Status: GOOD (  21.16  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] video: ipuv3: combine two subsequent info prints into one
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 08, 2022 at 03:17:10PM +0200, Ahmad Fatoum wrote:
> Makes the logging more tidy that way.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/video/imx-ipu-v3/ipufb.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
> index 0b5391643450..09a8d22ca155 100644
> --- a/drivers/video/imx-ipu-v3/ipufb.c
> +++ b/drivers/video/imx-ipu-v3/ipufb.c
> @@ -111,10 +111,8 @@ static int ipu_crtc_mode_set(struct ipufb_info *fbi,
>  	struct ipu_di_mode di_mode = {};
>  	u32 bus_format = 0;
>  
> -	dev_info(fbi->dev, "%s: mode->xres: %d\n", __func__,
> -			mode->xres);
> -	dev_info(fbi->dev, "%s: mode->yres: %d\n", __func__,
> -			mode->yres);
> +	dev_info(fbi->dev, "%s: mode->xres: %d mode->yres: %d\n", __func__,
> +		 mode->xres, mode->yres);
>  
>  	vpl_ioctl(&fbi->vpl, 2 + fbi->dino, IMX_IPU_VPL_DI_MODE, &di_mode);
>  	vpl_ioctl(&fbi->vpl, 2 + fbi->dino, VPL_GET_BUS_FORMAT, &bus_format);
> -- 
> 2.30.2
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

