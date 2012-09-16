Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TD9XI-00048h-4u
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 07:45:01 +0000
Date: Sun, 16 Sep 2012 09:44:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120916074457.GB6180@pengutronix.de>
References: <CAJfOKBxhsR6yQ0RSUgxYUayepN46g12fdUmerfS+4rnyvtRD3g@mail.gmail.com>
 <20120916073419.GD25990@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120916073419.GD25990@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox <barebox@lists.infradead.org>

On Sun, Sep 16, 2012 at 09:34:19AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:19 Sun 16 Sep     , Franck Jullien wrote:
> > Hi,
> > 
> > In order to fix fat detection, I need to patch ff.c and filetype.c.
> > However, ff.c is already patched in next (I need to modify the version
> > already in next).
> > Should I generate my patches against next or master ?
> redo the patch as it more a v2 that an increment one

Probing a FAT with MBR is a new feature, being able to automatically
detect it is a new feature aswell, so I see no reason to merge both
patches.

> 
> Sacah will replace it

Who's that guy?

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
