Delivery-date: Mon, 23 Aug 2021 16:12:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIAh9-0000Mv-Pm
	for lore@lore.pengutronix.de; Mon, 23 Aug 2021 16:12:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIAh5-0003R0-AW
	for lore@pengutronix.de; Mon, 23 Aug 2021 16:12:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YbbGRvnR7ViKykk6xcEAwk/2I5ibDXObGXv4+EErF5A=; b=gHWUIC7fDK/myHaEONF+Q/MlLq
	y2S0t0EMurhSThWm+88MBxRYawkk+xa0vbNBy05P1TUhFMF2hrT5IJ39NOHRS3QEpU4ESFE0yN5dR
	AXoOFu2qhpBmN9AWLc7dwyWw0USSidk7NVzHwr6XlAwwkxuClbBdf/b3zP/t50xmaCm+98WbF1rrL
	a0q5Ndd2mPqq3VuJvgkdrEX2JWBdBIIuB6wmAwtGLWWYon8MfE0mFmKaqofe4F38W6/PZsXF5vuLl
	m51r5kPbstVB4CxDNMexpJ+/vvjA7krFJdN3XSe2I8h/sr//BMXZONO+P8Z35iZctqANJOWl5bNxC
	KFMi9wdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIAfN-00HBu8-Du; Mon, 23 Aug 2021 14:11:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIAfG-00HBth-FU
 for barebox@lists.infradead.org; Mon, 23 Aug 2021 14:11:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mIAfE-00031m-UL; Mon, 23 Aug 2021 16:11:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mIAfE-0007zu-Fs; Mon, 23 Aug 2021 16:11:00 +0200
Date: Mon, 23 Aug 2021 16:11:00 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20210823141100.GB31210@pengutronix.de>
References: <20210705160457.7346-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210705160457.7346-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:10:04 up 186 days, 17:33, 113 users,  load average: 0.35, 0.20,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_071102_561955_3BE14548 
X-CRM114-Status: GOOD (  29.66  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] arm: rockchip-rk3568-evb: add hardware id detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 05, 2021 at 06:04:57PM +0200, Michael Riesch wrote:
> The RK3568 EVB uses a voltage divider to determine the hardware ID of
> the board. At the moment, the voltage levels for seven EVB variants are
> defined. This commit adds a late_initcall to the board code that reads
> out the voltage and populates the hardware ID as environment variable.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
> v2:
> - add compatible check
> - return early in case the voltage cannot be read
> - populate hardware ID as environment variable
> 
>  arch/arm/boards/rockchip-rk3568-evb/board.c | 56 +++++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
> index 57c24ed3c..f8b257e57 100644
> --- a/arch/arm/boards/rockchip-rk3568-evb/board.c
> +++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
> @@ -2,7 +2,13 @@
>  #include <common.h>
>  #include <init.h>
>  #include <mach/bbu.h>
> +#include <aiodev.h>
>  #include <bootsource.h>
> +#include <environment.h>
> +#include <globalvar.h>
> +#include <magicvar.h>
> +
> +static bool machine_is_rk3568_evb = false;
>  
>  static int rk3568_evb_probe(struct device_d *dev)
>  {
> @@ -11,6 +17,7 @@ static int rk3568_evb_probe(struct device_d *dev)
>  
>  	barebox_set_model("Rockchip RK3568 EVB");
>  	barebox_set_hostname("rk3568-evb");
> +	machine_is_rk3568_evb = true;
>  
>  	if (bootsource == BOOTSOURCE_MMC && instance == 1)
>  		of_device_enable_path("/chosen/environment-sd");
> @@ -34,3 +41,52 @@ static struct driver_d rk3568_evb_board_driver = {
>  	.of_compatible = rk3568_evb_of_match,
>  };
>  coredevice_platform_driver(rk3568_evb_board_driver);
> +
> +static int rk3568_evb_detect_hwid(void)
> +{
> +	int ret;
> +	int evb_hwid_voltage;
> +	struct aiochannel *evb_hwid_chan;
> +	char *evb_hwid;
> +
> +	if (!machine_is_rk3568_evb)
> +		return 0;
> +
> +	evb_hwid_chan = aiochannel_by_name("aiodev0.in_value1_mV");

This fails to link when CONFIG_AIODEV is disabled. I added an early
return at the top of this function to fix that.

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

