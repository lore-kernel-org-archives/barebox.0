Delivery-date: Tue, 06 May 2025 09:52:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCD5t-002jCb-14
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 09:52:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCD5s-0001ek-JA
	for lore@pengutronix.de; Tue, 06 May 2025 09:52:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EMjATeq93UVe/nkRJbyLjmT8BJSqa8Ulo3ro6kTiTdY=; b=dTUqQcQSjYZNkmJ2PahY29bm8R
	haQMxUauArKbt9sC7jZArtPOK/yqtf6l5biIg1aWfM99onYFYXmpWU71mJLOMiRVsnNCc3RYUx3MH
	NvCGzVgOkE/qe/OK15LEnF/h4+T4ckL+oqqE+FLOqWIRHNgqhlP2lBMINZT9QAs62cFHMPEy5yZn9
	3iTiW8/uA7IPru9PoBbXIfLLB/Z+xqOo+SID1aftfaUiYh6/YKAopxQqf8STwyJNXbJmTSloGdjDr
	uRiAlvc7OB4MnJn2pjLWrHky+3hnAjpZaMPX0/zGKdljX1fCJXlbDrHXy1yJG3rVMGD/Su/u+ynMu
	ITTCvo1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCD5Q-0000000B1i7-49Cu;
	Tue, 06 May 2025 07:51:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCD5O-0000000B1gh-0EyB
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 07:51:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uCD5M-0001V9-OM; Tue, 06 May 2025 09:51:28 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uCD5M-001MIQ-1p;
	Tue, 06 May 2025 09:51:28 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uCD5M-006SnJ-1R;
	Tue, 06 May 2025 09:51:28 +0200
Date: Tue, 6 May 2025 09:51:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aBm_gAU4ITMANfwK@pengutronix.de>
References: <20250427134453.637482-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250427134453.637482-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_005130_100039_8F4E4D74 
X-CRM114-Status: GOOD (  25.23  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] video: IPUv3-LDB: fix LVDS serial clock
 configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sun, Apr 27, 2025 at 03:44:53PM +0200, Ahmad Fatoum wrote:
> The precision improvement in Commit af3d99396a8b ("clk: imx: improve
> precision of AV PLL to 1 Hz") broke the LVDS boot splash on the
> imx6q-skov-reve-mi1010ait-1cp1 board, because recalculating the clock
> rates broke the 7-fold relation between 7MHz pixel clock and the serial
> clock.
> 
> Before:
> 
> pll5_video (rate 980041992
>     pll5_post_div (rate 490020996
>         pll5_video_div (rate 490020996
>             ldb_di0_sel (rate 490020996		   <-- 49MHz / 7 = 7 MHz
>                 ldb_di0_div_3_5 (rate 140005998                        |
>                     ldb_di0_podf (rate 70002999                        ≈
>                         ipu1_di0_sel (rate 70002999                    |
>                             ipu1_di0 (rate 70002999                    v
>                                 2400000.ipu@2400000.of_di0_pixel (rate 70002992
> 
> After:
> 
> pll5_video (rate 980042001
>     pll5_post_div (rate 980042001
>         pll5_video_div (rate 980042001
>             ldb_di0_sel (rate 980042001		  <-- 98MHz / 7 = 14 MHz
>                 ldb_di0_div_3_5 (rate 280012000                        |
>                     ldb_di0_podf (rate 140006000                       ≉
>                         ipu1_di0_sel (rate 140006000                   |
>                             ipu1_di0 (rate 140006000                   v
>                                 2400000.ipu@2400000.of_di0_pixel (rate 70002992
> 
> By adding an explicit clk_set_rate to the 7-fold frequency before
> setting the pixel clock, we restore the ratio again:
> 
> pll5_video (rate 980042000
>         pll5_post_div (rate 980042000
>             pll5_video_div (rate 490021000
>                 ldb_di0_sel (rate 490021000              <-- 49MHz / 7 = 7 MHz
>                     ldb_di0_div_3_5 (rate 140006000                      |
>                         ldb_di0_podf (rate 70003000                      ≈
>                             ipu1_di0_sel (rate 70003000                  |
>                                 ipu1_di0 (rate 70003000                  v
>                                     2400000.ipu@2400000.of_di0_pixel (rate 70002992
> 
> Fixes: af3d99396a8b ("clk: imx: improve precision of AV PLL to 1 Hz")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> 
> Philipp, I wasn't completely sure about whether the dual frequency
> calculation is correct, can you take a look?
> ---
>  drivers/video/imx-ipu-v3/imx-ldb.c | 25 ++++++++++++++++++-------
>  1 file changed, 18 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
> index ae7d3548267a..8b9f6d00f6cb 100644
> --- a/drivers/video/imx-ipu-v3/imx-ldb.c
> +++ b/drivers/video/imx-ipu-v3/imx-ldb.c
> @@ -138,9 +138,10 @@ static int imx_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, struct fb_videomo
>  	return 0;
>  }
>  
> -static int imx6q_set_clock(struct imx_ldb *ldb, int ipuno, int dino, int chno, unsigned long pixclk)
> +static int imx6q_set_clock(struct imx_ldb *ldb, int ipuno, int dino, int chno,
> +			   unsigned long serial_clk, unsigned long di_clk)
>  {
> -	struct clk *diclk, *ldbclk;
> +	struct clk *diclk, *ldbclk, *ldbdiclk;
>  	char *clkname;
>  	int ret;
>  
> @@ -160,14 +161,24 @@ static int imx6q_set_clock(struct imx_ldb *ldb, int ipuno, int dino, int chno, u
>  		return PTR_ERR(ldbclk);
>  	}
>  
> +	clkname = basprintf("ldb_di%d_sel", chno);
> +	ldbdiclk = clk_lookup(clkname);
> +	free(clkname);
> +	if (IS_ERR(ldbdiclk)) {
> +		dev_err(ldb->dev, "failed to get ldb di clk: %pe\n", ldbdiclk);
> +		return PTR_ERR(ldbdiclk);
> +	}
> +
>  	ret = clk_set_parent(diclk, ldbclk);
>  	if (ret) {
>  		dev_err(ldb->dev, "failed to set display clock parent: %pe\n", ERR_PTR(ret));
>  		return ret;
>  	}
>  
> -	clk_set_rate(clk_get_parent(ldbclk), pixclk);
> -	clk_set_rate(ldbclk, pixclk);
> +	clk_set_rate(ldbdiclk, serial_clk);
> +
> +	clk_set_rate(clk_get_parent(ldbclk), di_clk);
> +	clk_set_rate(ldbclk, di_clk);
>  
>  	return 0;
>  }
> @@ -189,10 +200,10 @@ static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
>  		pixclk *= 2;
>  
>  	if (dual) {
> -		imx6q_set_clock(ldb, ipuno, dino, 0, pixclk);
> -		imx6q_set_clock(ldb, ipuno, dino, 1, pixclk);
> +		imx6q_set_clock(ldb, ipuno, dino, 0, pixclk * 7, pixclk);
> +		imx6q_set_clock(ldb, ipuno, dino, 1, pixclk * 7, pixclk);

I think in dual channel mode we have to maintain a 1:3.5 setting instead
of 1:7.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


