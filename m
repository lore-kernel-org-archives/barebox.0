Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cicQ6-00053k-Ig
 for barebox@lists.infradead.org; Tue, 28 Feb 2017 07:42:04 +0000
Date: Tue, 28 Feb 2017 08:41:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170228074140.2rkw736rymblrncr@pengutronix.de>
References: <20170227095453.5tznukther5d3o46@pengutronix.de>
 <20170227155616.4004-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170227155616.4004-1-bst@pengutronix.de>
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
Subject: Re: [PATCH v2] console: replace set_active by open/close
To: Bastian Stender <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 27, 2017 at 04:56:16PM +0100, Bastian Stender wrote:
> Opening and closing consoles should be independent from setting them
> active. This way it is possible to open e.g. a framebuffer console and
> display text on it without showing stdout/stderr.
> 
> Signed-off-by: Bastian Stender <bst@pengutronix.de>
> ---
>  common/console.c          | 31 +++++++++++++++++++++++++++++--
>  drivers/video/fbconsole.c | 28 ++++++++++++++++++----------
>  include/console.h         |  9 ++++++++-
>  net/netconsole.c          | 27 +++++++++++++++++----------
>  4 files changed, 72 insertions(+), 23 deletions(-)
> 
> diff --git a/common/console.c b/common/console.c
> index 74ccfcfc3e..3ff32b8327 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -59,6 +59,26 @@ static struct kfifo __console_output_fifo;
>  static struct kfifo *console_input_fifo = &__console_input_fifo;
>  static struct kfifo *console_output_fifo = &__console_output_fifo;
>  
> +int console_open(struct console_device *cdev)
> +{
> +	if (cdev->open && !(cdev-> flags & FLAG_CONSOLE_OPEN)) {
> +		cdev->flags |= FLAG_CONSOLE_OPEN;
> +		return cdev->open(cdev);
> +	}

What if cdev->open() fails? In this case the flag is still set, but the
console is not opened. Also please set the FLAG_CONSOLE_OPEN independent
of the presence of the cdev->open() hook.

> diff --git a/include/console.h b/include/console.h
> index 4b2f134a4c..85e15cad67 100644
> --- a/include/console.h
> +++ b/include/console.h
> @@ -28,6 +28,8 @@
>  #define CONSOLE_STDOUT          (1 << 1)
>  #define CONSOLE_STDERR          (1 << 2)
>  
> +#define FLAG_CONSOLE_OPEN       (1 << 0)
> +
>  enum console_mode {
>  	CONSOLE_MODE_NORMAL,
>  	CONSOLE_MODE_RS485,
> @@ -44,7 +46,8 @@ struct console_device {
>  	int (*setbrg)(struct console_device *cdev, int baudrate);
>  	void (*flush)(struct console_device *cdev);
>  	int (*set_mode)(struct console_device *cdev, enum console_mode mode);
> -	int (*set_active)(struct console_device *cdev, unsigned active);
> +	int (*open)(struct console_device *cdev);
> +	int (*close)(struct console_device *cdev);
>  
>  	char *devname;
>  	int devid;
> @@ -54,6 +57,8 @@ struct console_device {
>  	unsigned char f_active;
>  	char active[4];
>  
> +	unsigned flags;
> +

Flags often have the problem that you do not know which flag define
belong to which flag field in which structure. One thing we can do is
to add the flag #defines directly above the struct member they belong to
in the source code.
In this case here we should use a counter rather than flags. Consider
two users opening the console at the same time. Now when one of the
users closes the console, it must still remain opened for the other
user.

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
