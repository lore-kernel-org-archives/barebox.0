Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEGyW-00067F-Bl
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 10:26:01 +0000
Date: Sat, 9 Mar 2013 11:25:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130309102558.GJ1906@pengutronix.de>
References: <20130307215402.GA32347@game.jcrosoft.org>
 <1362743983-11462-1-git-send-email-plagnioj@jcrosoft.com>
 <1362743983-11462-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362743983-11462-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 03/11] intoduce dmesg to print the barebox printk to
 dmesg ring buffer
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 08, 2013 at 12:59:35PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> the size can be configured vai DMESG_KFIFO_OSIZE
> 
> +int vprintk(const char *fmt, va_list args)
> +{
> +	uint i, fi;
> +	char printbuffer[CFG_PBSIZE];
> +	char *s = printbuffer;
> +	int level;
> +
> +	/* For this to work, printbuffer must be larger than
> +	 * anything we ever want to print.
> +	 */
> +	fi = i = vsprintf(printbuffer, fmt, args);
> +
> +	level = printk_get_level(printbuffer);
> +	if (level) {
> +		s += 2;
> +		fi -= 2;
> +		kfifo_putc(dmesg_output_fifo, '<');
> +		kfifo_putc(dmesg_output_fifo, level);
> +		kfifo_putc(dmesg_output_fifo, '>');
> +	}
> +
> +	/* Print the string */
> +	if (level <= printk_level + '0')
> +		puts(s);
> +
> +	kfifo_put(dmesg_output_fifo, s, fi);

When the buffer is full this drops the current message instead of the
oldest.

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
