Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TPEZ1-0004yM-7S
 for barebox@lists.infradead.org; Fri, 19 Oct 2012 15:32:43 +0000
Date: Fri, 19 Oct 2012 17:32:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121019153241.GR27665@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
 <1350507817-7819-21-git-send-email-s.hauer@pengutronix.de>
 <20121018072959.GD22418@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121018072959.GD22418@game.jcrosoft.org>
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
Subject: Re: [PATCH 20/28] ARM pbl: Call uncompressed binary with arguments
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 18, 2012 at 09:29:59AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 23:03 Wed 17 Oct     , Sascha Hauer wrote:
> > This puts the code from barebox_uncompress inline into
> > the caller. Also we now call the uncompressed binary
> > with the memory and boarddata arguments, so everything
> > is ready for the uncompressed image to pick up the
> > values.
> can we use atags / dt and machine_id

Of course that's the goal to be able to call barebox like the kernel,
but this is not an interface to the outside world, it's purely barebox
internal. That's what the third argument is for, to pass data from the
entry on to barebox.

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
