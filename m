Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4l81-0005YM-7y
 for barebox@lists.infradead.org; Mon, 02 Sep 2019 12:08:14 +0000
Date: Mon, 2 Sep 2019 14:08:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190902120810.kbzeqpxqacn7f57k@pengutronix.de>
References: <7954aa66b7cd4e0583b8f96e6ee3292b@eckelmann.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7954aa66b7cd4e0583b8f96e6ee3292b@eckelmann.de>
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
Subject: Re: barebox bug, sh [ -c /dev/nand0.var.ubi.blablablub ] returns
 |true| even if there is no "blablablub" partition on "var" volume
To: "Mainz, Roland" <R.Mainz@eckelmann.de>
Cc: "customers.eckelmann@pengutronix.de" <customers.eckelmann@pengutronix.de>, "Arne Wichmann (arne.wichmann@thinventions.de)" <arne.wichmann@thinventions.de>, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Roland,

On Mon, Sep 02, 2019 at 09:40:26AM +0000, Mainz, Roland wrote:
> 
> Hi!
> 
> ----
> 
> Quick&dirty bug report:
> 
> - Version: barebox 2018.05.0-20190221-1-EAG_3.00-gf70df96 #1 Mon Sep 2 09:03:05 CEST 2019
> - Hardware: Eckelmann/EAG Quantron
> 
> barebox:/ ls -l /dev/nand0.var.ubi.blablablub                                               
> ls: /dev/nand0.var.ubi.blablablub: No such file or directory
> barebox:/ ls -l /dev/nand0.var.ubi.blablablub                        
> ls: /dev/nand0.var.ubi.blablablub: No such file or directory
> barebox:/ if [ -c /dev/nand0.var.ubi.blablablub ] ; then echo wrong ; else echo "right" ; fi
> wrong
> barebox:/ if [ -f /dev/nand0.var.ubi.blablablub ] ; then echo wrong ; else echo "right" ; fi
> right

barebox doesn't implement -c for test. You'll have to use -e or -f to
test for existence.
Arguably we should throw an error for this unsupported option rather
than doing something undefined.

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
