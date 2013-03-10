Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEgAr-0006eC-5T
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 13:20:26 +0000
Received: from mail639.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A691DFF8BB3
 for <barebox@lists.infradead.org>; Sun, 10 Mar 2013 14:31:40 +0100 (CET)
Date: Sun, 10 Mar 2013 14:16:01 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130310131601.GA11170@game.jcrosoft.org>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
 <1362871182-25726-5-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362871182-25726-5-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 4/9] omap_uart: add low level port serial initialization
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On 00:19 Sun 10 Mar     , Vicente Bergas wrote:
>  some sort of UART setup has to be done in order to use PUTC_LL
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  arch/arm/mach-omap/include/mach/debug_ll.h | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
> index eea6eb3..9740848 100644
> --- a/arch/arm/mach-omap/include/mach/debug_ll.h
> +++ b/arch/arm/mach-omap/include/mach/debug_ll.h
> @@ -45,9 +45,30 @@
>  #endif
>  
>  #define LSR_THRE	0x20	/* Xmit holding register empty */
> +#define LCR_BKSE	0x80	/* Bank select enable */
>  #define LSR		(5 << 2)
>  #define THR		(0 << 2)
> +#define DLL		(0 << 2)
> +#define IER		(1 << 2)
> +#define DLM		(1 << 2)
> +#define FCR		(2 << 2)
> +#define LCR		(3 << 2)
> +#define MCR		(4 << 2)
> +#define MDR		(8 << 2)
>  
> +static inline void INIT_LL(void)
where this come from?
> +{
> +	writeb(0x00, UART_BASE + LCR);
> +	writeb(0x00, UART_BASE + IER);
> +	writeb(0x07, UART_BASE + MDR);
> +	writeb(LCR_BKSE, UART_BASE + LCR);
> +	writeb(26, UART_BASE + DLL); /* 115200 */
> +	writeb(0, UART_BASE + DLM);
> +	writeb(0x03, UART_BASE + LCR);
> +	writeb(0x03, UART_BASE + MCR);
> +	writeb(0x07, UART_BASE + FCR);
> +	writeb(0x00, UART_BASE + MDR);
> +}
>  static inline void PUTC_LL(char c)
>  {
>  	/* Wait until there is space in the FIFO */
> -- 
> 1.8.1.5
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
