Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6w9j-0002MJ-Ud
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 08:00:52 +0000
Date: Thu, 10 Dec 2015 09:00:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151210080029.GE11966@pengutronix.de>
References: <1449698135.26955.58.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449698135.26955.58.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 1/2] partitions: UUID was missing from partitions by name
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Wed, Dec 09, 2015 at 09:55:29PM +0000, Trent Piepho wrote:
> The partition code registers one or two cdevs for each partition.  The
> 2nd one is used if the partition has a name.  The block of code for
> each cdev is duplicated twice, and the 2nd copy is missing the bit
> that copies the partition uuid and the dos partition type to the cdev.
> 
> Refactor the register cdev out to a new function that is called twice.
> This way each cdev is done correctly.

Nice. Besides of fixing a bug this makes intention of the code is much
clearer. Thanks, applied.

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
