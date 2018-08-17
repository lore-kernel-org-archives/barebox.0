Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fqYFD-0003jX-Qh
 for barebox@lists.infradead.org; Fri, 17 Aug 2018 06:28:25 +0000
Date: Fri, 17 Aug 2018 08:28:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180817062809.ulqnrzll7kuucvt6@pengutronix.de>
References: <20180815112409.25725-1-marc@cpdesign.com.au>
 <20180815112409.25725-4-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180815112409.25725-4-marc@cpdesign.com.au>
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
Subject: Re: [PATCH 3/3] ARM: dts: change am335x-bone-common.dtsi to include
 kernel variant directly
To: marc@cpdesign.com.au
Cc: barebox@lists.infradead.org

Hi Marc,

On Wed, Aug 15, 2018 at 09:24:09PM +1000, marc@cpdesign.com.au wrote:
> From: Marc Reilly <marc@cpdesign.com.au>
> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  dts/src/arm/am335x-bone-common.dtsi | 414 +-----------------------------------
>  1 file changed, 1 insertion(+), 413 deletions(-)
> 
> diff --git a/dts/src/arm/am335x-bone-common.dtsi b/dts/src/arm/am335x-bone-common.dtsi
> index f9e8667f5..8711802f5 100644
> --- a/dts/src/arm/am335x-bone-common.dtsi
> +++ b/dts/src/arm/am335x-bone-common.dtsi
> @@ -6,416 +6,4 @@
>   * published by the Free Software Foundation.
>   */
>  
> -/ {

Something is gone wrong here. You removed the contents of the upstream
dts file, not the one in arch/arm/dts/

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
