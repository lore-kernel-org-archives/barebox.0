Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ramxa-0001ig-J1
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 11:25:19 +0000
Date: Wed, 14 Dec 2011 12:25:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111214112504.GF27267@pengutronix.de>
References: <1323789718-2459-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323789718-2459-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] poller_call: move from getc to is_timeout
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Dec 13, 2011 at 04:21:58PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow to always call poller_call even durring timeout
> and still the case in getc
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/clock.c   |    4 ++++
>  common/console.c |    2 --
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/common/clock.c b/common/clock.c
> index 79c06c8..6e92348 100644
> --- a/common/clock.c
> +++ b/common/clock.c
> @@ -27,6 +27,7 @@
>  #include <common.h>
>  #include <asm-generic/div64.h>
>  #include <clock.h>
> +#include <poller.h>
>  
>  static struct clocksource *current_clock;
>  static uint64_t time_ns;
> @@ -139,6 +140,9 @@ uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant)
>  
>  int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
>  {
> +	if (time_offset_ns > MSECOND)
> +		poller_call();

Why this additional test? It effectively disables poller_call() being
called from getc() since getc calls is_timeout with 100us.

> +
>  	if ((int64_t)(start_ns + time_offset_ns - get_time_ns()) < 0)
>  		return 1;
>  	else
> diff --git a/common/console.c b/common/console.c
> index cab8689..88c4010 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -225,8 +225,6 @@ int getc(void)
>  	 */
>  	start = get_time_ns();
>  	while (1) {
> -		poller_call();
> -
>  		if (tstc_raw()) {
>  			kfifo_putc(console_input_buffer, getc_raw());
>  
> -- 
> 1.7.7
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
