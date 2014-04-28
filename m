Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Weeke-0001kE-Hy
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 06:09:17 +0000
Date: Mon, 28 Apr 2014 08:08:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140428060852.GL5858@pengutronix.de>
References: <1398370966-30241-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398370966-30241-1-git-send-email-dev@lynxeye.de>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: nitrogen6x: remove VPU/IPU QoS from DCD
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Thu, Apr 24, 2014 at 10:22:46PM +0200, Lucas Stach wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> Not needed anymore, as barebox sets this up itself now.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks

Sascha

> ---
>  .../boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg     | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
> index 60a39fe..b6c7580 100644
> --- a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
> +++ b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
> @@ -99,8 +99,3 @@ wm 32 0x020c4074 0x3ff00000
>  wm 32 0x020c4078 0x00fff300
>  wm 32 0x020c407c 0x0f0000c3
>  wm 32 0x020c4080 0x000003ff
> -/* enable AXI cache for VDOA/VPU/IPU */
> -wm 32 0x020e0010 0xf00000cf
> -/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7 */
> -wm 32 0x020e0018 0x007f007f
> -wm 32 0x020e001c 0x007f007f
> -- 
> 1.9.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
