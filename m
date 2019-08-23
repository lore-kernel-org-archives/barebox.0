Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14f6-0007MX-Tl
 for barebox@lists.infradead.org; Fri, 23 Aug 2019 08:11:10 +0000
Date: Fri, 23 Aug 2019 10:11:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190823081105.znj2f4r7jjx3npfn@pengutronix.de>
References: <20190822125158.10296-1-s.hauer@pengutronix.de>
 <20190822125158.10296-3-s.hauer@pengutronix.de>
 <CAHQ1cqHb2EtQ_CCFW7PYOyR-yZ86Fx0605gSwsx_fxUojYffKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHb2EtQ_CCFW7PYOyR-yZ86Fx0605gSwsx_fxUojYffKw@mail.gmail.com>
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
Subject: Re: [PATCH 2/8] ARM: aarch64: Fix get_runtime_offset after relocation
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Aug 22, 2019 at 01:14:23PM -0700, Andrey Smirnov wrote:
> On Thu, Aug 22, 2019 at 5:52 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > get_runtime_offset shall return the offset between the address we are
> > running at and the address we are linked at. This value obviously
> > changes when we relocate the binary. cf3b09737b tried to avoid using
> > R_AARCH64_RELATIVE relocations, but in fact this is exactly what the
> > function needs to work. Consider barebox starting at 0x10000000
> > when we are linked at 0x0 then get_runtime_offset() should return
> > 0x10000000 before relocate_to_current_adr(), but afterwards it should
> > return 0x0.
> >
> > This patch brings back the previously removed "a" flag. Since gcc5
> > doesn't put the values of R_AARCH64_RELATIVE fixup'd relocations
> > into the binary but zeroes instead, we help ourselves by basing
> > get_runtime_offset on an address which actually is zero. With
> > CONFIG_RELOCATABLE=y the binary is always linked to 0x0, so _text
> > is initially zero.
> >
> 
> This paragraph might be worth putting in the comment as well to
> document some cleverness that is still required to deal with GCC5.

Makes sence. Added this:

/*
 * With older gcc versions (gcc5) function pointers will not be filled
 * into the binary during compile time and instead rely on relocation
 * during runtime. In the binary we'll always have 0x0 here. We deliberately
 * use _text here since that is 0x0 and is correct without relocation.
 */

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
