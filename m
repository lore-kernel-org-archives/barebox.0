Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0hAh-00065f-DM
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 07:06:14 +0000
References: <20190731102143.20503-1-a.fatoum@pengutronix.de>
 <20190731102143.20503-3-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c306a487-96b7-dee0-8ade-6e896967057d@pengutronix.de>
Date: Thu, 22 Aug 2019 09:06:09 +0200
MIME-Version: 1.0
In-Reply-To: <20190731102143.20503-3-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 3/3] console: fix out-of-bounds read in dputc(/dev/*,
 ...)
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>

Hello Sascha,

On 7/31/19 12:21 PM, Ahmad Fatoum wrote:
> Trying to output a single character via
> 	echo -a /dev/serial0-1
> currently results in garbage output after the newline, because console.c's
> fops_write discards the buffer length and passes the buffer to
> (struct cdev)::puts which only handles NUL-terminated strings.
> 
> Fix this by amending (struct cdev)::puts with a new nbytes parameter,
> which is correctly propagated.

Can this one be merged? It doesn;t depend on the other two patches.

> 
> Fixes: b4f55fcf35 ("console: expose consoles in devfs")
> Cc: Bastian Krause <bst@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Changes in v2:
> 	- fixed commit hash in Fixes:, by Bastian
> 	- fixed possible incomplete writes in __console_puts
> 	- rebased on top of two potential bug fixes
> ---
>  common/console.c            | 14 +++++++-------
>  common/ratp/ratp.c          | 10 ++++------
>  drivers/serial/efi-stdio.c  |  5 +++--
>  drivers/serial/serial_efi.c |  5 +++--
>  fs/pstore/platform.c        |  7 ++++---
>  include/console.h           |  2 +-
>  6 files changed, 22 insertions(+), 21 deletions(-)
> 
> diff --git a/common/console.c b/common/console.c
> index 52162df23b04..ce4122fa76f1 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -253,19 +253,19 @@ static void console_set_stdoutpath(struct console_device *cdev)
>  	free(str);
>  }
>  
> -static int __console_puts(struct console_device *cdev, const char *s)
> +static int __console_puts(struct console_device *cdev, const char *s,
> +			  size_t nbytes)
>  {
> -	int n = 0;
> +	size_t i;
>  
> -	while (*s) {
> +	for (i = 0; i < nbytes; i++) {
>  		if (*s == '\n')
>  			cdev->putc(cdev, '\r');
>  
>  		cdev->putc(cdev, *s);
> -		n++;
>  		s++;
>  	}
> -	return n;
> +	return i;
>  }
>  
>  static int fops_open(struct cdev *cdev, unsigned long flags)
> @@ -297,7 +297,7 @@ static ssize_t fops_write(struct cdev* dev, const void* buf, size_t count,
>  {
>  	struct console_device *priv = dev->priv;
>  
> -	priv->puts(priv, buf);
> +	priv->puts(priv, buf, count);
>  
>  	return 0;
>  }
> @@ -544,7 +544,7 @@ int console_puts(unsigned int ch, const char *str)
>  	if (initialized == CONSOLE_INIT_FULL) {
>  		for_each_console(cdev) {
>  			if (cdev->f_active & ch) {
> -				n = cdev->puts(cdev, str);
> +				n = cdev->puts(cdev, str, strlen(str));
>  			}
>  		}
>  		return n;
> diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
> index 8ac7dc98b6f8..8f989515e485 100644
> --- a/common/ratp/ratp.c
> +++ b/common/ratp/ratp.c
> @@ -259,19 +259,17 @@ static int ratp_console_tstc(struct console_device *cdev)
>  	return kfifo_len(ctx->console_recv_fifo) ? 1 : 0;
>  }
>  
> -static int ratp_console_puts(struct console_device *cdev, const char *s)
> +static int ratp_console_puts(struct console_device *cdev, const char *s,
> +			     size_t nbytes)
>  {
>  	struct ratp_ctx *ctx = container_of(cdev, struct ratp_ctx, ratp_console);
> -	int len = 0;
> -
> -	len = strlen(s);
>  
>  	if (ratp_busy(&ctx->ratp))
>  		return 0;
>  
> -	kfifo_put(ctx->console_transmit_fifo, s, len);
> +	kfifo_put(ctx->console_transmit_fifo, s, nbytes);
>  
> -	return len;
> +	return nbytes;
>  }
>  
>  static void ratp_console_putc(struct console_device *cdev, char c)
> diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
> index 0703f727e766..2ca89fa4f861 100644
> --- a/drivers/serial/efi-stdio.c
> +++ b/drivers/serial/efi-stdio.c
> @@ -243,12 +243,13 @@ static int efi_process_key(struct efi_console_priv *priv, const char *inp)
>  	return 1;
>  }
>  
> -static int efi_console_puts(struct console_device *cdev, const char *s)
> +static int efi_console_puts(struct console_device *cdev, const char *s,
> +			    size_t nbytes)
>  {
>  	struct efi_console_priv *priv = to_efi(cdev);
>  	int n = 0;
>  
> -	while (*s) {
> +	while (nbytes--) {
>  		if (*s == 27) {
>  			priv->efi_console_buffer[n] = 0;
>  			priv->out->output_string(priv->out,
> diff --git a/drivers/serial/serial_efi.c b/drivers/serial/serial_efi.c
> index f0a2b22c2bc2..667d51f622ec 100644
> --- a/drivers/serial/serial_efi.c
> +++ b/drivers/serial/serial_efi.c
> @@ -130,13 +130,14 @@ static void efi_serial_putc(struct console_device *cdev, char c)
>  	serial->write(serial, &buffersize, &c);
>  }
>  
> -static int efi_serial_puts(struct console_device *cdev, const char *s)
> +static int efi_serial_puts(struct console_device *cdev, const char *s,
> +			   size_t nbytes)
>  {
>  	struct efi_serial_port *uart = to_efi_serial_port(cdev);
>  	struct efi_serial_io_protocol *serial = uart->serial;
>  	uint32_t control;
>  	efi_status_t efiret;
> -	unsigned long buffersize = strlen(s) * sizeof(char);
> +	unsigned long buffersize = nbytes;
>  
>  	do {
>  		efiret = serial->getcontrol(serial, &control);
> diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
> index 755363c30999..601bfca6b025 100644
> --- a/fs/pstore/platform.c
> +++ b/fs/pstore/platform.c
> @@ -67,10 +67,11 @@ static void pstore_console_write(const char *s, unsigned c)
>  	}
>  }
>  
> -static int pstore_console_puts(struct console_device *cdev, const char *s)
> +static int pstore_console_puts(struct console_device *cdev, const char *s,
> +			       size_t nbytes)
>  {
> -	pstore_console_write(s, strlen(s));
> -	return strlen(s);
> +	pstore_console_write(s, nbytes);
> +	return nbytes;
>  }
>  
>  static void pstore_console_putc(struct console_device *cdev, char c)
> diff --git a/include/console.h b/include/console.h
> index 673921331db7..1d86a584a7f2 100644
> --- a/include/console.h
> +++ b/include/console.h
> @@ -42,7 +42,7 @@ struct console_device {
>  
>  	int (*tstc)(struct console_device *cdev);
>  	void (*putc)(struct console_device *cdev, char c);
> -	int (*puts)(struct console_device *cdev, const char *s);
> +	int (*puts)(struct console_device *cdev, const char *s, size_t nbytes);
>  	int  (*getc)(struct console_device *cdev);
>  	int (*setbrg)(struct console_device *cdev, int baudrate);
>  	void (*flush)(struct console_device *cdev);
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
