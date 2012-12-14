Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tje5A-0003kK-C4
 for barebox@lists.infradead.org; Fri, 14 Dec 2012 22:50:20 +0000
Date: Fri, 14 Dec 2012 23:49:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121214224907.GA26326@pengutronix.de>
References: <20121213163758.GB26483@game.jcrosoft.org>
 <1355416810-26555-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355416810-26555-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/9] kfifo: introduce kfifo_dump_str to dump the fifo
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 13, 2012 at 05:40:02PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will allow to implement a dmesg mecanism in barebox
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/kfifo.h |    2 ++
>  lib/kfifo.c     |   21 +++++++++++++++++++++
>  2 files changed, 23 insertions(+)
> 
> diff --git a/include/kfifo.h b/include/kfifo.h
> index 25880f4..9dbbe0d 100644
> --- a/include/kfifo.h
> +++ b/include/kfifo.h
> @@ -74,5 +74,7 @@ static inline unsigned int kfifo_len(struct kfifo *fifo)
>  void kfifo_putc(struct kfifo *fifo, unsigned char c);
>  unsigned int kfifo_getc(struct kfifo *fifo, unsigned char *c);
>  
> +void kfifo_dump_str(struct kfifo *fifo, void (*dump)(unsigned char c));
> +
>  #endif
>  
> diff --git a/lib/kfifo.c b/lib/kfifo.c
> index afd3894..7892aed 100644
> --- a/lib/kfifo.c
> +++ b/lib/kfifo.c
> @@ -154,3 +154,24 @@ unsigned int kfifo_getc(struct kfifo *fifo, unsigned char *c)
>  	return 0;
>  }
>  
> +void kfifo_dump_str(struct kfifo *fifo, void (*dump)(unsigned char c))
> +{
> +	int i;
> +	unsigned char *c;
> +	unsigned int l;
> +	unsigned int len;
> +
> +	len = fifo->in - fifo->out;
> +
> +	/* first get the data from fifo->out until the end of the buffer */
> +	l = min(len, fifo->size - (fifo->out & (fifo->size - 1)));
> +	c = fifo->buffer + (fifo->out & (fifo->size - 1));
> +	for (i = 0; i < l; i++)
> +		dump(c[i]);
> +
> +	/* then get the rest (if any) from the beginning of the buffer */
> +	c = fifo->buffer;
> +	l = len - l;
> +	for (i = 0; i < l; i++)
> +		dump(c[i]);
> +}

This function works in the innards of the fifo implementation and
replaces these two lines of code:

	while (kfifo_getc(console_output_fifo, &ch) == 0)
		console_putc(CONSOLE_STDOUT, ch);

You do not provide a reason why we should do this, so: no.

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
