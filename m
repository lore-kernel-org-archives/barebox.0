Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TD9F4-0003rv-T0
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 07:26:11 +0000
Date: Sun, 16 Sep 2012 09:26:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120916072609.GA6180@pengutronix.de>
References: <CAJfOKBxhsR6yQ0RSUgxYUayepN46g12fdUmerfS+4rnyvtRD3g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJfOKBxhsR6yQ0RSUgxYUayepN46g12fdUmerfS+4rnyvtRD3g@mail.gmail.com>
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
Subject: Re: Patch a file in the next branch
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Sun, Sep 16, 2012 at 09:19:18AM +0200, Franck Jullien wrote:
> Hi,
> 
> In order to fix fat detection, I need to patch ff.c and filetype.c.
> However, ff.c is already patched in next (I need to modify the version
> already in next).
> Should I generate my patches against next or master ?

As long as you don't logically depend on a patch in next, please work on
master. I'll resolve the merge conflicts if any.

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
