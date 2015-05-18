Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YuKBT-0002B4-Tp
 for barebox@lists.infradead.org; Mon, 18 May 2015 12:30:17 +0000
Date: Mon, 18 May 2015 14:29:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150518122950.GT6325@pengutronix.de>
References: <1431694967-2416-1-git-send-email-yamada.masahiro@socionext.com>
 <20150517184704.9b64228117f4a3addf0f4f12@gmail.com>
 <CAK7LNATTasdDYvzHxu=F8Jcmgh8v3nAQOvrJsrmN0moDDLh6Gw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNATTasdDYvzHxu=F8Jcmgh8v3nAQOvrJsrmN0moDDLh6Gw@mail.gmail.com>
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
Subject: Re: [PATCH v2] include: introduce include/linux/io.h as a wrapper of
 asm/io.h
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Mon, May 18, 2015 at 10:48:30AM +0900, Masahiro Yamada wrote:
> 2015-05-18 0:47 GMT+09:00 Antony Pavlov <antonynpavlov@gmail.com>:
> > On Fri, 15 May 2015 22:02:47 +0900
> > Masahiro Yamada <yamada.masahiro@socionext.com> wrote:
> >
> >> In the latest Linux coding style, <linux/io.h> should be included
> >> rather than <asm/io.h>.  To follow this standard also in barebox,
> >> add include/linux/io.h.  Currently, it just includes <asm/io.h>.
> >
> > Hmmm. Barebox already has include/io.h for the same purpose.
> > And include/io.h is actively used:
> >
> > ~/barebox.git$ git grep "include <io.h>" | wc -l
> > 474
> >
> 
> We can replace all of them with sed easily.

I'm with Antony here. I think we can afford our own version of <io.h>.

> 
> Moreover, cpu_read{b,w,l} and cpu_write{b,w,l} turned out unnecessary after all.
> Most of C sources use __raw_*.

Agreed, these could be removed.

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
