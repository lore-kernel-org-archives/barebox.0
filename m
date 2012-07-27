Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sufwq-0007wr-FS
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 08:31:00 +0000
Date: Fri, 27 Jul 2012 10:30:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120727083058.GB30009@pengutronix.de>
References: <1342686830-30950-1-git-send-email-J.Kilb@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342686830-30950-1-git-send-email-J.Kilb@phytec.de>
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
Subject: Re: [PATCH] Add /dev/urandom device.
To: Juergen Kilb <J.Kilb@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 19, 2012 at 10:33:49AM +0200, Juergen Kilb wrote:
> Nice for testing purposes.

Can we have an extra file with an extra config option for this? I agree
this is nice for debugging, but no need to bloat every build with it.

Sascha

> 
> Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
> ---
>  commands/stddev.c |   39 +++++++++++++++++++++++++++++++++++++++
>  1 files changed, 39 insertions(+), 0 deletions(-)
> 
> diff --git a/commands/stddev.c b/commands/stddev.c
> index 098aea8..b807df6 100644
> --- a/commands/stddev.c
> +++ b/commands/stddev.c
> @@ -20,7 +20,9 @@
>   */
>  
>  #include <common.h>
> +#include <clock.h>
>  #include <init.h>
> +#include <stdlib.h>
>  
>  static ssize_t zero_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
>  {
> @@ -104,3 +106,40 @@ static int null_init(void)
>  }
>  
>  device_initcall(null_init);
> +
> +static ssize_t urandom_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
> +{
> +	size_t i;
> +	unsigned int *buffer;
> +
> +	buffer = (unsigned int *) buf;
> +
> +	for (i = 0; i < (count / sizeof(size_t)); i++)
> +		buffer[i] = rand() | rand() << 16;
> +
> +	return count;
> +}
> +
> +static struct file_operations urandomops = {
> +	.read  = urandom_read,
> +	.lseek = dev_lseek_default,
> +};
> +
> +static int urandom_init(void)
> +{
> +	struct cdev *cdev;
> +
> +	cdev = xzalloc(sizeof(*cdev));
> +
> +	cdev->name = "urandom";
> +	cdev->size = ~0;
> +	cdev->ops = &urandomops;
> +
> +	devfs_create(cdev);
> +
> +	srand(get_time_ns());
> +
> +	return 0;
> +}
> +
> +device_initcall(urandom_init);
> -- 
> 1.7.0.4
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
