Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIXST-0002a9-D8
 for barebox@lists.infradead.org; Mon, 11 Jan 2016 08:04:09 +0000
Date: Mon, 11 Jan 2016 09:03:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160111080346.GL13058@pengutronix.de>
References: <1452259447-32006-1-git-send-email-yegorslists@googlemail.com>
 <568FDF95.2080302@pengutronix.de>
 <CAGm1_ku4Q=diLnYF+d8vRUFPJcFCiGt1rrFvuik7xWC0JNLk1g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_ku4Q=diLnYF+d8vRUFPJcFCiGt1rrFvuik7xWC0JNLk1g@mail.gmail.com>
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
Subject: Re: [PATCH] FIT: make RSA signature verification configurable
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

Hi Yegor,

On Fri, Jan 08, 2016 at 05:43:56PM +0100, Yegor Yefremov wrote:
> On Fri, Jan 8, 2016 at 5:11 PM, Marc Kleine-Budde <mkl@pengutronix.de> wrote:
> > On 01/08/2016 02:24 PM, yegorslists@googlemail.com wrote:
> >> From: Yegor Yefremov <yegorslists@googlemail.com>
> >> diff --git a/common/image-fit.c b/common/image-fit.c
> >> index 296285b..96cc3e2 100644
> >> --- a/common/image-fit.c
> >> +++ b/common/image-fit.c
> >> @@ -40,6 +40,7 @@
> >>  #define CHECK_LEVEL_SIG 2
> >>  #define CHECK_LEVEL_MAX 3
> >>
> >> +#ifdef CONFIG_CMD_BOOTM_FITIMAGE_SIGNATURE
> >>  static uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int size)
> >
> > remove the ifdef.
> 
> What about compile warnings, i.e. function defined, but not used?

This won't happen when you use IS_ENABLED().

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
