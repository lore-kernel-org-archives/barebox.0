Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zo50D-0004Kv-Rl
 for barebox@lists.infradead.org; Mon, 19 Oct 2015 07:37:06 +0000
Date: Mon, 19 Oct 2015 09:36:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151019073643.GI14476@pengutronix.de>
References: <1445232837-22317-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445232837-22317-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: Add support for semihosting
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Sun, Oct 18, 2015 at 10:33:57PM -0700, Andrey Smirnov wrote:
> Add semihosting API implementation and implement a filesystem driver
> to access debugging host filesystem using it.

Neat. I didn't know semihosting can be used for file transfer.

> +File I/O over ARM semihosting support
> +=====================================
> +
> +barebox can communicate with debug programms attached via SWD/JTAG by
> +means of ARM semihosting protocol.
> +
> +Not all of the I/O primitives neccessary to implement a full
> +filesystem are exposed in ARM semihosting API and because of that some
> +aspects of filesystem funcionality are missing. Implementation does
> +not have support for listing directories. This means a
> +:ref:`command_ls` to a SMHFS-mounted path will show an empty
> +directory. Nevertheless, the files are there.

Is adding ls support a matter of implementing it? Does the semihosting
protocol support ls?

> +
> +Example::
> +
> +  mount -t smhfs /dev/null /mnt/smhfs

Are actions on the host required to do that? Maybe some example for
using this with openocd would be useful.

> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 304b6e6..1bccca3 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -326,6 +326,15 @@ config ARM_UNWIND
>  	  the performance is not affected. Currently, this feature
>  	  only works with EABI compilers. If unsure say Y.
> 
> +config ARM_SEMIHOSTING
> +	bool "enable ARM semihosting support"
> +	help
> +	  This option enables ARM semihosting support in barebox. ARM
> +	  semihosting is a communication discipline that allows code
> +	  running on target ARM cpu perform system calls and access
> +	  the data on the host computer connected to the target via
> +	  debugging channel (JTAG, SWD). If unsure say N
> +
>  endmenu
> 

> +static int smhfs_remove(struct device_d __always_unused *dev,
> +			const char *pathname)
> +{
> +	/* Get rid of leading '/' */
> +	pathname = &pathname[1];
> +
> +	if (semihosting_remove(pathname) != 0)
> +		return semihosting_errno();

Are the errnos semihosting returns compatible with the barebox errnos?

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
