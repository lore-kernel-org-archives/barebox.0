Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZ556-0008TD-Um
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 19:26:34 +0000
Date: Thu, 15 Nov 2012 20:26:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121115192630.GJ10369@pengutronix.de>
References: <alpine.DEB.2.02.1211150924030.1247@oneiric>
 <20121115161615.GI10369@pengutronix.de>
 <alpine.DEB.2.02.1211151128470.5359@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1211151128470.5359@oneiric>
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
Subject: Re: how easy to add extra config for NAND-less beagle?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Thu, Nov 15, 2012 at 11:39:58AM -0500, Robert P. J. Day wrote:
> 
>   yup, i'm testing that shortly, but my question was more along the
> lines of, rather than having to disable all NAND-related
> functionality *manually*, how easy/worthwhile would it be to create an
> additional make target that reflects a beagle *without* NAND flash?
> 
>   one significant difference between a classic beagle and a current xM
> is the total lack of NAND flash, and that's not a minor difference.
> it means you can remove all barebox functionality related to that --
> NAND routines and support, MTD stuff, JFFS2(?) support, and so on.
> this could be automated by creating a couple new configs, say:
> 
>   make dm3730_beaglexm_xload_defconfig
>   make dm3730_beaglexm_defconfig
> 
> so that the result really matches the underlying board.
> 
>   is this worth doing?  it would seem to be fairly easy, i can whip
> something up and test it.

I don't think this is worth it. We should rather keep the number of
defconfigs low. Splitting them means we have to maintain them and
keep them in sync. Also it means to increase the time needed to compile
all defconfigs (which I do routinely, currently on every commit).

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
