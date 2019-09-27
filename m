Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDk4p-0004eD-S5
 for barebox@lists.infradead.org; Fri, 27 Sep 2019 06:50:06 +0000
Date: Fri, 27 Sep 2019 08:50:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190927065001.hhnlvojb7bqb7rt4@pengutronix.de>
References: <20190923161508.9163-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923161508.9163-1-a.fatoum@pengutronix.de>
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
Subject: Re: [RFC PATCH] ARM: layerscape: zero-index DEBUG_LAYERSCAPE_UART_PORT
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 23, 2019 at 06:15:08PM +0200, Ahmad Fatoum wrote:
> The layerscape features four UART ports termed UART{1-4} in the
> reference manual.
> In the upstream device tree they have the phandles &duart{0-3}.
> 
> Currently, barebox follows the numbering used in the reference manual
> for the DEBUG_LL port, because that's what the <soc/fsl/immap_lsch2.h>
> header does as well.
> 
> It's arguable however that the DEBUG_LL port should be 0-indexed,
> because users are most likely to look in the board device tree for the
> chosen stdout-path and that one's phandle is zero-indexed.
> 
> One notable example of a target with one-indexed DEBUG_LL port is the
> i.MX, but there the uart port phandles are one-indexed, so there's no
> discrepancy between DEBUG_LL and /chosen/stdout-path like it's the
> case with the Layerscape.
> 
> Fix the discrepancy by zero-indexing the layerscape UART.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> I guess it can be argued that either way is the correct one.

Indeed ;)

> But I'd say from the viewpoint of a barebox developer, changing it to
> zero indexed makes the most sense.

If you could argue that it was inconsistent before and you make it
consistent now, then I would say go for it. Unfortunately it's
inconsistent now and still inconsistent with your patch, so changing
it IMO doesn't improve anything.

>  	help
>  	  Select the UART port number used for early debugging here. Port
> -	  numbers start counting from 1.
> +	  numbers start counting from 0.

Actually I don't care much, so I may be convinced. What I do care about
though is that it's documented, and fortunately in this case it is ;)

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
