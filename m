Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wz7ZT-0002SM-I6
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 16:58:23 +0000
Date: Mon, 23 Jun 2014 18:57:54 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20140623165754.GA27898@pengutronix.de>
References: <CAOpc7mFqu1ov94naTWtCiJMXxNk5RLa=mSL-eh3SwFXNoP1UGg@mail.gmail.com>
 <20140618195849.GL15686@pengutronix.de>
 <CAOpc7mFo8jdw24V=2wZW=dCMMbiBW87R7ZGKSqRR7SO4StB79g@mail.gmail.com>
 <20140623074308.GU15686@pengutronix.de>
 <CAOpc7mEtWpacJ1Q7nqBmYzHYEWdQBw7hrCgqLP-9bijpP9qsXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mEtWpacJ1Q7nqBmYzHYEWdQBw7hrCgqLP-9bijpP9qsXw@mail.gmail.com>
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

On Mon, Jun 23, 2014 at 10:42:55AM +0200, Holger Schurig wrote:
> > My preferred solution is to be fast enough in the bootloader
> > and show a splash screen under Linux only.
> 
> Hmm, I'd like to not do that. Splash screen from Linux usually means
> that I need an initrd. And an initrd is seldom needed on an embedded
> device (i.e. no complicated RAID or DM setup). And it just slows down
> the overall boot ...
> 
> But thanks for the info anyway.
> 
> Oh, one more question: do you have any idea if a simplefb would be
> fast enought for X11 ?

The idea is to have the splash ready in < 1 s after power-good, fully
from userspace, and all that with systemd + wayland.

We have some plans how to do that ... awaiting more customer projects
that have splash screen needs.

rsc
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
