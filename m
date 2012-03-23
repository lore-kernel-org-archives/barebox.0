Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SB08R-0003lv-9O
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 08:46:16 +0000
Date: Fri, 23 Mar 2012 09:45:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120323084549.GL3852@pengutronix.de>
References: <1332415393-18394-1-git-send-email-christian.kapeller@cmotion.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1332415393-18394-1-git-send-email-christian.kapeller@cmotion.eu>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH V2 0/2] Add support for Karo TX51 module
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: barebox@lists.infradead.org

Hi Christian,

On Thu, Mar 22, 2012 at 12:23:11PM +0100, Christian Kapeller wrote:
> This patch introduces board support for the Karo TX51 i.mx51 sodimm module.
> 
> Supported features:
>  - nand
>  - ethernet
>  - mmc0, mmc1 (on stk5v3 development board)
>  - led (on stk5v3 development board)
> 
> What changed from patch V1:
>  - fixed ethernet initialization
>  - added mmc1 support
>  - update defconfig to include commands for supported devices
>  - updated env:
>     - don't add 'tx51_base' parameter to kernel cmdline
>     - update kernel image name to zImage_tx51, which comes with Karo BSP
> 
> What doesn't work:
>  - fec mac is read in reverse byte order.

I am still searching for our tx51 board to give it a try. Especially the
mac read in reverse order puzzles me.

Your patches are not lost, I have them on my radar.

Thanks
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
