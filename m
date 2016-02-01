Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQAcz-0006ob-0M
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 09:18:34 +0000
Date: Mon, 1 Feb 2016 10:18:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160201091810.GO13058@pengutronix.de>
References: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
 <1454064243-26558-14-git-send-email-s.hauer@pengutronix.de>
 <20160129180437.GA2401@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160129180437.GA2401@ravnborg.org>
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
Subject: Re: [PATCH 13/23] scripts: imx: move macro definitions to common
 header file
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Jan 29, 2016 at 07:04:38PM +0100, Sam Ravnborg wrote:
> On Fri, Jan 29, 2016 at 11:43:53AM +0100, Sascha Hauer wrote:
> > ARRAY_SIZE and offsetof are used by both imx-usb-loader and imx-image.
> > Move their definitions to the common header file.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  scripts/imx/imx-image.c      | 2 --
> >  scripts/imx/imx-usb-loader.c | 5 -----
> >  scripts/imx/imx.h            | 5 +++++
> >  3 files changed, 5 insertions(+), 7 deletions(-)
> > 
> > diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
> > index e986545..1d23e11 100644
> > --- a/scripts/imx/imx.h
> > +++ b/scripts/imx/imx.h
> > @@ -1,3 +1,8 @@
> > +#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
> This macro is already defined in include/linux/kernel.h,
> so it would be better to use this version.

It's defined in the barebox version of this file, but not in
/usr/include/linux/kernel.h which would be used for compiling programs
for the host. Adding a -I$(srctree)/include to the host compiler options
is also something we don't want.
What other options do we have to avoid duplicating these over and over
again? Maybe adding a scripts/include directory which contains such
useful defines? I just found tools/include in the Linux Kernel which
already has a collection of such defines. Maybe this is a good starting
point.

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
