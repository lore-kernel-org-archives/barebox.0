Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOElQ-0001ly-U5
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 21:33:25 +0000
Date: Tue, 16 Oct 2012 23:33:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121016213322.GE27665@pengutronix.de>
References: <1350417296-26963-1-git-send-email-franck.jullien@gmail.com>
 <1350417296-26963-3-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350417296-26963-3-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 2/2] openrisc: generic board cleanup
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 16, 2012 at 09:54:56PM +0200, Franck Jullien wrote:
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  arch/openrisc/boards/generic/config.h  |    7 +++----
>  arch/openrisc/boards/generic/generic.c |    2 +-
>  2 files changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/openrisc/boards/generic/config.h b/arch/openrisc/boards/generic/config.h
> index 88d2929..95260cd 100644
> --- a/arch/openrisc/boards/generic/config.h
> +++ b/arch/openrisc/boards/generic/config.h
> @@ -1,16 +1,15 @@
>  #ifndef _GENERIC_NAMES_H_
>  #define _GENERIC_NAMES_H_
>  
> -#define CONFIG_SYS_CLK_FREQ		20000000
> +#define CONFIG_SYS_CLK_FREQ		50000000
>  
> -#define OPENRISC_TIMER_FREQ		20000000
> +#define OPENRISC_TIMER_FREQ		CONFIG_SYS_CLK_FREQ

The timer frequency changes from 20MHz to 50MHz. Is this intended?

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
