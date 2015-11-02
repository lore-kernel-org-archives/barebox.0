Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zt9cO-0007Vl-J7
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 07:33:29 +0000
Date: Mon, 2 Nov 2015 08:33:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151102073306.GH25308@pengutronix.de>
References: <1446261143-11472-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446261143-11472-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v3 1/2] arm/cpu/start.c: Distil some common code in
 __start().
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 30, 2015 at 08:12:22PM -0700, Andrey Smirnov wrote:
> Both barebox_boarddata and barebox_boot_dtb perform essentially the
> same function -- hold a pointer to a chunk of private data. Since only
> one variable is ever used at any given time we may as well merge those
> two variable into one. This also allows us to share more code between
> two boot paths (board data vs. device tree)
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Applied with a small change.

> ---
> 
> Changes since v2:
> 
> 	- Restored original function semantics for
>           barebox_arm_machine() and barebox_arm_boot_dtb()
> 
> 	- Removed now unnecessary swith statement and auxiliary
>           function that was needed to support its usage
> 
> 
>  arch/arm/cpu/start.c | 65 +++++++++++++++++++++++++++++++---------------------
>  1 file changed, 39 insertions(+), 26 deletions(-)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 8e5097b..bfe08cc 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -32,25 +32,37 @@
>  #include "mmu-early.h"
> 
>  unsigned long arm_stack_top;
> -static void *barebox_boarddata;
> +static void *barebox_private_data;

I renamed this back to barebox_boarddata since it's data that comes
from the board code.

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
