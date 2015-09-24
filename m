Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZfAPV-00016p-8B
 for barebox@lists.infradead.org; Thu, 24 Sep 2015 17:34:21 +0000
Date: Thu, 24 Sep 2015 19:33:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150924173358.GD7858@pengutronix.de>
References: <1441366031-856-1-git-send-email-yamada.masahiro@socionext.com>
 <20150907052449.GV18700@pengutronix.de>
 <CAK7LNASuti=BS38cL2QDbS9bdvjYh4=Ya3m_adj3STyuckeM9A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNASuti=BS38cL2QDbS9bdvjYh4=Ya3m_adj3STyuckeM9A@mail.gmail.com>
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
Subject: Re: [PATCH] console: use int rather than uint in printf() and friends
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

Hi,

On Thu, Sep 24, 2015 at 06:39:01PM +0900, Masahiro Yamada wrote:
> Hi Sascha,
> 
> 2015-09-07 14:24 GMT+09:00 Sascha Hauer <s.hauer@pengutronix.de>:
> > On Fri, Sep 04, 2015 at 08:27:11PM +0900, Masahiro Yamada wrote:
> >> These functions and vsprintf() return int type.
> >> No reason to use uint type.
> >>
> >> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> >> ---
> >
> > Applied, thanks
> >
> > Sascha
> >
> 
> Looks like it was applied to  for-next/mci and for-next/misc.
> 
> Perhaps, one of them is enough?

Oops, indeed. I removed it from for-next/mci.

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
