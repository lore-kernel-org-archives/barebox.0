Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X02ep-0000nN-0X
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 05:55:39 +0000
Date: Thu, 26 Jun 2014 07:55:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626055516.GV15686@pengutronix.de>
References: <CAOpc7mFqu1ov94naTWtCiJMXxNk5RLa=mSL-eh3SwFXNoP1UGg@mail.gmail.com>
 <20140618195849.GL15686@pengutronix.de>
 <CAOpc7mFo8jdw24V=2wZW=dCMMbiBW87R7ZGKSqRR7SO4StB79g@mail.gmail.com>
 <20140623074308.GU15686@pengutronix.de>
 <CAOpc7mEtWpacJ1Q7nqBmYzHYEWdQBw7hrCgqLP-9bijpP9qsXw@mail.gmail.com>
 <20140623165754.GA27898@pengutronix.de>
 <CAOpc7mHHo9Fk4qzW9prc=oX2sBVvQBPL2CyH5q2uRqHgEH4gfg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mHHo9Fk4qzW9prc=oX2sBVvQBPL2CyH5q2uRqHgEH4gfg@mail.gmail.com>
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
Subject: Re: i.MX6 frame buffer inside barebox?
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Jun 25, 2014 at 03:46:28PM +0200, Holger Schurig wrote:
> I just noticed that simplefb wouldn't work with i.MX6 anyway, even if
> I adapt it.
> 
> When I setup the framebuffer from barebox and display a splash and
> then boot into Linux, then my framebuffer vanishes. Even when I don't
> have simplefb or ipu enabled.
> 
> I think (!) the reason is the clock framework.The clocks for the IPU
> are turned off, and so I don't see anything anymore (this is, however,
> a wild assumption, I haven't checked it yet).

You're probably right. You could check that with passing
'clk_ignore_unused' to the kernel.
Indeed I remember that we tweaked the clocks in a project we used
simplefb in.

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
