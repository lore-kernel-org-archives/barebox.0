Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo5.mail-out.ovh.net ([178.33.45.10]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TkV7K-0007cO-3B
 for barebox@lists.infradead.org; Mon, 17 Dec 2012 07:28:03 +0000
Received: from mail188.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id C887F108019A
 for <barebox@lists.infradead.org>; Mon, 17 Dec 2012 08:36:38 +0100 (CET)
Date: Mon, 17 Dec 2012 08:26:17 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121217072617.GE26483@game.jcrosoft.org>
References: <20121213163758.GB26483@game.jcrosoft.org>
 <1355416810-26555-1-git-send-email-plagnioj@jcrosoft.com>
 <1355416810-26555-4-git-send-email-plagnioj@jcrosoft.com>
 <20121214230707.GB26326@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121214230707.GB26326@pengutronix.de>
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
Subject: Re: [PATCH 4/9] introduce printk support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 00:07 Sat 15 Dec     , Sascha Hauer wrote:
> On Thu, Dec 13, 2012 at 05:40:05PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > this will allow to fill the output buffer
> > 
> > and now have 2 output mode pr_xxx for drivers and printf for application
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  common/console.c                |   47 +++++++++++++++++++++++++++++++++++++++
> >  include/common.h                |   28 ++++++++++++++---------
> >  include/linux/barebox-wrapper.h |    2 --
> >  3 files changed, 65 insertions(+), 12 deletions(-)
> > 
> > diff --git a/common/console.c b/common/console.c
> > index 2d2d20a..d8fe5b6 100644
> > --- a/common/console.c
> > +++ b/common/console.c
> > @@ -435,6 +435,7 @@ int ctrlc (void)
> >  EXPORT_SYMBOL(ctrlc);
> >  #endif /* ARCH_HAS_CTRC */
> >  
> > +#ifdef CONFIG_CMD_DMESG
> >  #include <command.h>
> >  #include <complete.h>
> >  
> > @@ -454,3 +455,49 @@ BAREBOX_CMD_START(dmesg)
> >  	BAREBOX_CMD_HELP(cmd_dmesg_help)
> >  	BAREBOX_CMD_COMPLETE(empty_complete)
> >  BAREBOX_CMD_END
> > +
> > +int vprintk (const char *fmt, va_list args)
> > +{
> > +	uint i;
> > +	char printbuffer[CFG_PBSIZE];
> > +	char *s = printbuffer;
> > +
> > +	/* For this to work, printbuffer must be larger than
> > +	 * anything we ever want to print.
> > +	 */
> > +	i = vsprintf (printbuffer, fmt, args);
> > +
> > +	/* Print the string */
> > +	puts (printbuffer);
> 
> So when the console is not initialized the characters end up in the
> console_output_fifo which is emptied when the first console is
> initialized. This means it's lost from the dmesg buffer afterwards.

that's why I change this  to just dump instead

Best Regards,
J.
> 
> > +
> > +	if (initialized < CONSOLE_INIT_FULL)
> > +		return i;
> > +
> > +	while (*s) {
> > +		if (*s == '\n')
> > +			kfifo_putc(console_output_fifo, '\r');
> > +		kfifo_putc(console_output_fifo, *s);
> > +		s++;
> > +	}
> 
> You shouldn't use the same buffer for printk messages, use a different
> one instead.
> 
> > +
> > +	return i;
> > +}
> > +EXPORT_SYMBOL(vprintk);
> > +
> > +int printk (const char *fmt, ...)
> > +{
> > +	va_list args;
> > +	uint i;
> > +
> > +	va_start (args, fmt);
> > +
> > +	i = vprintk(fmt, args);
> > +	/* For this to work, printbuffer must be larger than
> > +	 * anything we ever want to print.
> > +	 */
> 
> This comment seems inappropriate here.
> 
> > +	va_end (args);
> > +
> > +	return i;
> > +}
> > +EXPORT_SYMBOL(printk);
> > +#endif
> > diff --git a/include/common.h b/include/common.h
> > index 6256879..168bfd1 100644
> > --- a/include/common.h
> > +++ b/include/common.h
> > @@ -48,22 +48,30 @@
> >  #error "None of __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
> >  #endif
> >  
> > -#define pr_info(fmt, arg...)	printf(fmt, ##arg)
> > -#define pr_notice(fmt, arg...)	printf(fmt, ##arg)
> > -#define pr_err(fmt, arg...)	printf(fmt, ##arg)
> > -#define pr_warning(fmt, arg...)	printf(fmt, ##arg)
> > -#define pr_crit(fmt, arg...)	printf(fmt, ##arg)
> > -#define pr_alert(fmt, arg...)	printf(fmt, ##arg)
> > -#define pr_emerg(fmt, arg...)	printf(fmt, ##arg)
> > +#ifdef CONFIG_CMD_DMESG
> > +int	printk(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
> > +int	vprintk(const char *fmt, va_list args);
> > +#else
> > +#define printk			printf
> > +#define vprintk			vprintf
> > +#endif
> > +
> > +#define pr_info(fmt, arg...)	printk(fmt, ##arg)
> > +#define pr_notice(fmt, arg...)	printk(fmt, ##arg)
> > +#define pr_err(fmt, arg...)	printk(fmt, ##arg)
> > +#define pr_warning(fmt, arg...)	printk(fmt, ##arg)
> > +#define pr_crit(fmt, arg...)	printk(fmt, ##arg)
> > +#define pr_alert(fmt, arg...)	printk(fmt, ##arg)
> > +#define pr_emerg(fmt, arg...)	printk(fmt, ##arg)
> >  
> >  #ifdef DEBUG
> > -#define pr_debug(fmt, arg...)	printf(fmt, ##arg)
> > +#define pr_debug(fmt, arg...)	printk(fmt, ##arg)
> > +#define debug(fmt, arg...)	printf(fmt, ##arg)
> 
> 'debug' is used in a huge amount of drivers, this would have to be fixed
> when the two functions get a different meaning.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
