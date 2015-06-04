Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z0Qxd-0000gv-UM
 for barebox@lists.infradead.org; Thu, 04 Jun 2015 08:57:14 +0000
Date: Thu, 4 Jun 2015 10:56:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150604085649.GW6325@pengutronix.de>
References: <1433320331-31720-1-git-send-email-antonynpavlov@gmail.com>
 <20150604070436.GU6325@pengutronix.de>
 <20150604103225.c7bbd5fb909a6e0f786fa745@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150604103225.c7bbd5fb909a6e0f786fa745@gmail.com>
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
Subject: Re: [PATCH] PPC: asm/bitops.h: drp unused ext2* and minix* stuff
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 04, 2015 at 10:32:25AM +0300, Antony Pavlov wrote:
> On Thu, 4 Jun 2015 09:04:36 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Wed, Jun 03, 2015 at 11:32:11AM +0300, Antony Pavlov wrote:
> > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > ---
> > >  arch/ppc/include/asm/bitops.h | 63 -------------------------------------------
> > >  1 file changed, 63 deletions(-)
> > 
> > Applied, thanks
> 
> Sascha, please change "drp" -> "drop" in the patch's subject line.
> I have supplied RESEND version of the patch just for this purpose.

Ok, I took that one instead.

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
