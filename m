Delivery-date: Thu, 03 Feb 2022 11:16:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFZAB-004ala-Qh
	for lore@lore.pengutronix.de; Thu, 03 Feb 2022 11:16:27 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFZAA-0002aP-Fc
	for lore@pengutronix.de; Thu, 03 Feb 2022 11:16:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ehsmcs2LTpsR9ZWF9V0zqp+hW3oNSYsTgq67vrCSCUw=; b=Oq1I5ewBDTIZiNWcr/jw1eO4YO
	B5idqI2FCYQEoPQW3bVPd6Gh9RZ8FFSFzplimMqzCZ0fB/jni5gDPPkczz3bwyRHDTdVDTX3HIhJV
	Wn0Q7VcXwOO9yEOzHuSQx7c9RXiR8yCTI/gcSzpayhNJNy2s5g6+h9xT1BSWVp5/H7PEMOgtfzhvv
	lXVDUU6uhSx+/1gD/McF2zLpsfhPYWqHqAYoW6fsxYKSe6rvo29iesdP5K+5tuhCuqaRMKwim/hjL
	jltDhsyUb+qrfcuvcrbIfO5Cyp6Q6HEcVPNGEJUakl1EMS3G1T8AP/bPIieh0IFzM5lOiafgFnMG2
	Iei9xw9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFZ8s-000lOS-Ph; Thu, 03 Feb 2022 10:15:06 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFZ8i-000lMb-PE
 for barebox@lists.infradead.org; Thu, 03 Feb 2022 10:14:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nFZ8h-0002GN-A9; Thu, 03 Feb 2022 11:14:55 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nFZ8h-0000fn-1D; Thu, 03 Feb 2022 11:14:55 +0100
Date: Thu, 3 Feb 2022 11:14:55 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ore@pengutronix.de, uol@pengutronix.de
Message-ID: <20220203101455.GJ23490@pengutronix.de>
References: <20220202195524.30740-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220202195524.30740-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:14:41 up 54 days, 19:00, 81 users,  load average: 0.02, 0.10, 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_021456_860334_981E3AF0 
X-CRM114-Status: GOOD (  29.84  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] clk: imx6: fix PLL exception for i.MX6DQ revision
 1.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 02, 2022 at 08:55:24PM +0100, Ahmad Fatoum wrote:
> cpu_is_mx6* and imx_silicon_revision access static variables only
> initialized in imx_init(). Use the alternative functions instead, that
> will always consult the hardware to determine the version.
> This requires us to know beforehand that we run on an i.MX6, but this
> is a given when probing the imx6-ccm driver.
> 
> Other instances of this issue were removed in 37bc313add40 ("clk: imx6:
> fix use of cpu_is_mx6* before they are initialized"), but this instance
> was reintroduced as part of b534f79112f0 ("clk: imx6: Fix procedure to
> switch the parent of LDB_DI_CLK").
> 
> This change only affects i.MX6D/Q SoCs with exactly revision 1.0 and
> aligns their behavior to that of the Linux clock driver.
> 
> Fixes: b534f79112f0 ("clk: imx6: Fix procedure to switch the parent of LDB_DI_CLK")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/clk/imx/clk-imx6.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
> index 6935a8e85292..e3afcf7858bb 100644
> --- a/drivers/clk/imx/clk-imx6.c
> +++ b/drivers/clk/imx/clk-imx6.c
> @@ -60,8 +60,8 @@ static inline int cpu_mx6_is_plus(void)
>  
>  /* Audio/Video PLL post dividers don't work on i.MX6q revision 1.0 */
>  static inline int cpu_has_working_video_pll_post_div(void) {
> -	return !((cpu_is_mx6q() || cpu_is_mx6d()) &&
> -		 imx_silicon_revision() == IMX_CHIP_REV_1_0);
> +	return !((cpu_mx6_is_mx6q() || cpu_mx6_is_mx6d()) &&
> +		 __imx6_cpu_revision() == IMX_CHIP_REV_1_0);
>  }
>  
>  /* i.MX6 Quad/Dual/DualLite/Solo are all affected */
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

