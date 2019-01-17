Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk3D6-0006n3-7b
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 08:39:37 +0000
Date: Thu, 17 Jan 2019 09:39:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190117083934.lyxauy2ikumgnwop@pengutronix.de>
References: <20190116091727.20447-1-s.hauer@pengutronix.de>
 <20190116110152.GA2508@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190116110152.GA2508@ravnborg.org>
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
Subject: Re: [PATCH] images: Drop unnecessary fix_size
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jan 16, 2019 at 12:01:52PM +0100, Sam Ravnborg wrote:
> Hi Sascha.
> 
> On Wed, Jan 16, 2019 at 10:17:27AM +0100, Sascha Hauer wrote:
> > Now that we compile the compressed binary into the decompressor we
> > no longer need fix_size but can use the linker to fill in the image
> > size into the binary.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/lib/pbl.lds.S | 2 +-
> >  images/Makefile        | 3 +--
> >  2 files changed, 2 insertions(+), 3 deletions(-)
> 
> This patch drops the sole user of fix_size.
> Should it be ditched from barebox or do we keep it just-in-case?

I kept it around intentionally in case we need it later. I think we can
remove it in a few releases though.

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
