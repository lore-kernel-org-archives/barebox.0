Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adeAH-0008F5-Cp
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 13:28:38 +0000
Date: Wed, 9 Mar 2016 14:28:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160309132814.GA31470@pengutronix.de>
References: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
 <1457357426-9868-6-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1457357426-9868-6-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 05/15] MIPS: add initial R4000-style cache support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Hi Antony,

On Mon, Mar 07, 2016 at 04:30:16PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  arch/mips/include/asm/cacheops.h |  7 ++++++
>  arch/mips/include/asm/io.h       |  3 +++
>  arch/mips/lib/c-r4k.c            | 48 ++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 58 insertions(+)
> 
> index ff68677..4fe046a 100644
> --- a/arch/mips/lib/c-r4k.c
> +++ b/arch/mips/lib/c-r4k.c
> @@ -10,10 +10,58 @@
>  #include <common.h>
>  #include <asm/io.h>
>  #include <asm/mipsregs.h>
> +#include <asm/cache.h>

This breaks bisectibility. asm/cache.h is introduced with the next.
patch. I tried swapping the patches but got merge conflicts. Shall I
squash both patches or do you have another preferred solution?

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
