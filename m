Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYxuF-0005c8-3d
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 11:46:51 +0000
Date: Thu, 15 Nov 2012 12:46:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121115114649.GC10369@pengutronix.de>
References: <alpine.LSU.2.00.1211121220380.14365@redbean.intranet.gw-instruments.de>
 <1352973435-11618-1-git-send-email-christian.kapeller@cmotion.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1352973435-11618-1-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: Re: [TX53: boot fixes 0/2] Make TX53 bootable again
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: =?iso-8859-15?Q?G=FCnter?= Gebhardt <guenter.gebhardt@freenet.de>, barebox@lists.infradead.org, g@pengutronix.de, Peter Wippich <pewi@gw-instruments.de>

On Thu, Nov 15, 2012 at 10:57:13AM +0100, Christian Kapeller wrote:
> Currently KaRo TX53-8030 soc module support is present in next branch, but
> compiling the default config tx53stk5_defconfig results in an unbootable image.
> 
> This series 
>  * makes the TX53-8030 board boot again [1/2]
>  * fixes compilation of the TX53 board with PBL_IMAGE=n and DO_LOWLEVEL_RESET=n [2/2]

Applied. Thanks for fixing this.

Sascha

> 
> Christian Kapeller (2):
>   tx53: Fix unbootable TX53-8030.
>   tx53: remove reset() when not doing lowlevel init.
> 
>  arch/arm/boards/karo-tx53/dcd-data-xx30.h |    1 -
>  arch/arm/boards/karo-tx53/lowlevel.c      |    3 +++
>  2 files changed, 3 insertions(+), 1 deletions(-)
> 
> -- 
> 1.7.5.4
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
