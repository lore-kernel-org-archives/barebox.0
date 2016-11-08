Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c41F3-0004Nm-Ao
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 07:54:49 +0000
Date: Tue, 8 Nov 2016 08:54:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161108075427.qpvkmnhvtujlojzk@pengutronix.de>
References: <20161107090210.21176-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161107090210.21176-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: drop redundant start_barebox() declaration
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 07, 2016 at 12:02:10PM +0300, Antony Pavlov wrote:
> The start_barebox() function is defined in the <common.h> header file.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/mips/boot/main_entry.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
> index 015150bf..43a78c2 100644
> --- a/arch/mips/boot/main_entry.c
> +++ b/arch/mips/boot/main_entry.c
> @@ -25,7 +25,6 @@
>  #include <asm/mipsregs.h>
>  #include <asm/addrspace.h>
>  
> -extern void start_barebox(void);
>  extern void handle_reserved(void);
>  
>  void main_entry(void);
> -- 
> 2.9.3
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
