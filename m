Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgU3o-0002Z0-Cz
 for barebox@lists.infradead.org; Wed, 22 Feb 2017 10:22:14 +0000
Date: Wed, 22 Feb 2017 11:21:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170222102149.anazwahf4adk2zai@pengutronix.de>
References: <20170221144751.27760-1-yegorslists@googlemail.com>
 <0CEC428C-E1EE-48A7-85CF-6FC90A22F47C@jcrosoft.com>
 <CAGm1_ku+mmxKRgdEGzQrTi37+8nmnM5MX+Cn2VQBGfxd-bjqog@mail.gmail.com>
 <20170222100350.anjucafhspmwsa2c@pengutronix.de>
 <CAGm1_ktrPpdx3_OGqHfdD2mwCaf9_d=V3y4xXJhX6NYpz5YkEA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_ktrPpdx3_OGqHfdD2mwCaf9_d=V3y4xXJhX6NYpz5YkEA@mail.gmail.com>
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
Subject: Re: [PATCH] lib: xz: add support for bcj filters
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: Falco Hyfing <hyfinglists@gmail.com>, barebox <barebox@lists.infradead.org>

On Wed, Feb 22, 2017 at 11:10:36AM +0100, Yegor Yefremov wrote:
> On Wed, Feb 22, 2017 at 11:03 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Wed, Feb 22, 2017 at 09:15:36AM +0100, Yegor Yefremov wrote:
> >> On Wed, Feb 22, 2017 at 5:29 AM, Jean-Christophe PLAGNIOL-VILLARD
> >> <plagnioj@jcrosoft.com> wrote:
> >> >
> >> >> On Feb 21, 2017, at 10:47 PM, yegorslists@googlemail.com wrote:
> >> >>
> >> >> From: Yegor Yefremov <yegorslists@googlemail.com>
> >> >>
> >> >> Add missing configuration options for various bcj filters. Without
> >> >> these options the lib/xz/xz_dec_bcj.c file will be compiled, but all
> >> >> filters will be disabled.
> >> >>
> >> >> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> >> >> ---
> >> >> lib/Kconfig | 28 ++++++++++++++++++++++++++++
> >> >> 1 file changed, 28 insertions(+)
> >> >>
> >> >> diff --git a/lib/Kconfig b/lib/Kconfig
> >> >> index f9f25bdef..83dd8e0a4 100644
> >> >> --- a/lib/Kconfig
> >> >> +++ b/lib/Kconfig
> >> >> @@ -22,6 +22,34 @@ config XZ_DECOMPRESS
> >> >>       bool "include xz uncompression support"
> >> >>       select UNCOMPRESS
> >> >>
> >> >> +if XZ_DECOMPRESS
> >> >> +
> >> >> +config XZ_DEC_X86
> >> >> +        bool "x86 BCJ filter decoder"
> >> >> +        default y
> >> > this need to be ARCH dependant
> >>
> >> Why? In Linux kernel it is not arch dependent, because AFAIK it
> >> describes only compression particularities. This way you can extract
> >> sqaushfs images on your ARM machine, that were compressed on SPARK
> >> etc.
> >
> > So xz uses the Sparc bcj filter even when compressing ARM binaries? That
> > doesn't sound very mature to me.
> 
> This is just an xz command line option. So it is completely in the
> user responsibility.

I see. What's the default for this option? The architecture xz is
running on?

Otherwise we could do a:

config XZ_DEC_ARM
        bool "ARM BCJ filter decoder"
        default y if ARCH_ARM

On the other hand I'm not sure if the potential image size gain for
disabling the unused bcj filters is even worth thinking about the
problem...

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
