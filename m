Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHUvl-00046N-4v
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 16:00:30 +0000
References: <CAGm1_ktP_E_44J-CuM=Dy7JdLXXturWm9jC9MmYN9aq=ngNvxQ@mail.gmail.com>
 <20200326063614.GO27288@pengutronix.de>
 <CAGm1_ksknAi_3Srwrzv96y16AQEbmW-7-LOdFFmAnecdwQSG0g@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <fe2b4025-ffac-f420-d8c0-4bdcb297b71e@pengutronix.de>
Date: Thu, 26 Mar 2020 17:00:21 +0100
MIME-Version: 1.0
In-Reply-To: <CAGm1_ksknAi_3Srwrzv96y16AQEbmW-7-LOdFFmAnecdwQSG0g@mail.gmail.com>
Content-Language: en-US
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
Subject: Re: Cross-compiling target tools
To: Yegor Yefremov <yegorslists@googlemail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

Hi,

On 3/26/20 4:31 PM, Yegor Yefremov wrote:
> On Thu, Mar 26, 2020 at 7:36 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> With these changes I get the tools bareboxenv-target etc. cross-compiled:
> 
> diff --git a/scripts/compiler.h b/scripts/compiler.h
> index 0891c3bfa..74cd98074 100644
> --- a/scripts/compiler.h
> +++ b/scripts/compiler.h
> @@ -113,7 +113,7 @@ typedef uint32_t __u32;
>         (void) (&_min1 == &_min2);              \
>         _min1 < _min2 ? _min1 : _min2; })
> 
> -inline void *xmalloc(size_t size)
> +void *xmalloc(size_t size)

This has been static inline instead for 2 years now[1]. Please check out a current
barebox revision. 

[1]: 359966df3721 ("scripts/compiler.h: inline functions in headers must be static")

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
