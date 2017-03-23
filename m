Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cr7mJ-0002DF-Do
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 18:48:09 +0000
Date: Thu, 23 Mar 2017 19:47:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170323184742.k2wspb2n3li75kvu@pengutronix.de>
References: <aa01e3d6-5a0b-9c65-4af9-21f0fac12f4c@eurekelettronica.it>
 <1490282153.29056.39.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1490282153.29056.39.camel@pengutronix.de>
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
Subject: Re: Information regarding iMX6 QuadPlus and iMX6 DualLite
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org, gianluca <gianlucarenzi@eurekelettronica.it>

Hi,

On Thu, Mar 23, 2017 at 04:15:53PM +0100, Lucas Stach wrote:
> Hi,
> 
> Am Donnerstag, den 23.03.2017, 16:04 +0100 schrieb gianluca:
> > But I do not found any switch between choosing one Soc or another.
> > Where is done the startup entry?
> 
> If you want a single binary, you need build a 2 stage barebox. First
> stage needs to be loaded into SRAM, then you can look at which board you
> are running and do the specific DRAM setup. Then you can load the bigger
> 2nd stage into DRAM, where you again need to look at the board you are
> running at and select the correct devicetree for barebox to use.

For an example how this can be done look at the wandboard support:
arch/arm/boards/technexion-wandboard/lowlevel.c
The wandboard doesn't have QuadPLus support, but the principle is the
same. It comes with different device trees and DRAMs. Both are selected
depending on the SoC type.

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
