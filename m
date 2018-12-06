Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUoUb-0000Bt-Hq
 for barebox@lists.infradead.org; Thu, 06 Dec 2018 07:54:46 +0000
Date: Thu, 6 Dec 2018 08:54:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181206075427.s35o3vn4dzdfyfdc@pengutronix.de>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
 <20181129113048.31857-5-s.trumtrar@pengutronix.de>
 <CAK7LNAS5eO1yRQRQGPcH-PKS2f_-9Oruhb5Pp+O6-ztwJZHw4A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNAS5eO1yRQRQGPcH-PKS2f_-9Oruhb5Pp+O6-ztwJZHw4A@mail.gmail.com>
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
Subject: Re: [PATCH 04/15] scripts/Kbuild.include: replace KBUILD_CPPFLAGS
 with CPPFLAGS
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Wed, Dec 05, 2018 at 09:22:29PM +0900, Masahiro Yamada wrote:
> On Thu, Nov 29, 2018 at 8:31 PM Steffen Trumtrar
> <s.trumtrar@pengutronix.de> wrote:
> >
> > The barebox Makefiles do not use KBUILD_CPPFLAGS but CPPFLAGS as variable name.
> >
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> 
> 
> This might be a step backward.
> 
> 
> In old days, Linux also used well-known CPPFLAGS.
> 
> Then Linux renamed CPPFLAGS -> KBUILD_CFLAGS

I'm with you here. Steffen, why was this change necessary?

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
