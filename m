Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaQ81-0004Qf-3l
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 12:07:06 +0000
Date: Mon, 19 Nov 2012 13:07:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121119120701.GW10369@pengutronix.de>
References: <1353144361-9089-1-git-send-email-antonynpavlov@gmail.com>
 <1353144361-9089-4-git-send-email-antonynpavlov@gmail.com>
 <20121119103037.GR10369@pengutronix.de>
 <CAA4bVAEmibj5RkfNr8yRjaApEwABB-jaKQUP8SiZOzp4fhpezg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAEmibj5RkfNr8yRjaApEwABB-jaKQUP8SiZOzp4fhpezg@mail.gmail.com>
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
Subject: Re: [PATCH 3/3] ARM: start-pbl.c: unificate path to lib/decompress_*.c
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 19, 2012 at 03:34:02PM +0400, Antony Pavlov wrote:
> On 19 November 2012 14:30, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Sat, Nov 17, 2012 at 01:26:01PM +0400, Antony Pavlov wrote:
> >> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> >> ---
> >>  arch/arm/cpu/start-pbl.c |    2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
> >> index 79a3cdd..c5f9705 100644
> >> --- a/arch/arm/cpu/start-pbl.c
> >> +++ b/arch/arm/cpu/start-pbl.c
> >> @@ -66,7 +66,7 @@ extern void *input_data_end;
> >>  #endif
> >>
> >>  #ifdef CONFIG_IMAGE_COMPRESSION_GZIP
> >> -#include "../../../../lib/decompress_inflate.c"
> >> +#include "../../../lib/decompress_inflate.c"
> >
> > This is strange. Why did this work beforehand?
> 
> Look above in the arch/arm/cpu/start-pbl.c:
> 
> #ifdef CONFIG_IMAGE_COMPRESSION_LZO
> #include "../../../lib/decompress_unlzo.c"
> #endif
> 
> #ifdef CONFIG_IMAGE_COMPRESSION_GZIP
> #include "../../../../lib/decompress_inflate.c"
> #endif
> 
> The files decompress_inflate.c and decompress_unlzo.c are in the same
> directory. Why we use different prefixes to address them?

I understand the patch and why it's correct. I just wondered why it
works correctly without this patch.

ls arch/arm/cpu/../../../../lib/decompress_inflate.c
ls: cannot access arch/arm/cpu/../../../../lib/decompress_inflate.c: No such file or directory

This is correct, we only have to go three directories up. Still it
compiles fine.

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
