Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eqFld-0002we-Pp
 for barebox@lists.infradead.org; Mon, 26 Feb 2018 10:12:23 +0000
Received: by mail-lf0-x243.google.com with SMTP id r80so21346292lfe.13
 for <barebox@lists.infradead.org>; Mon, 26 Feb 2018 02:12:10 -0800 (PST)
Date: Mon, 26 Feb 2018 13:12:02 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20180226101201.k7ync5dx3yaynslg@localhost.localdomain>
References: <20180226082349.31568-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180226082349.31568-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] Pass barebox version to kernel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi, Sasha,

On Mon, Feb 26, 2018 at 09:23:49AM +0100, Sascha Hauer wrote:
> When userspace is interested in the barebox version it has currently no
> way of reliably reading it. Add it to the kernel command line as it's an
> established way to pass information from the bootloader to the kernel.
> If CONFIG_FLEXIBLE_BOOTARGS is enabled then the barebox version is
> passed in the "bootloader.version=" variable.

Some time ago we solved a similar problem: a number of parameters including 
barebox version, MAC address (which may be random due to the lack of a NIC 
EEPROM) and some vendor specific parameters are passed to the kernel via DTB.  
A dedicated command was implemented which can either patch the existing DTB or 
generate an overlay DTB.  In the latter case the overlay DTB is passed to the 
kernel with the help of a new `bootm` option. Of course the latter approach 
requires support on the kernel side.

Are you interested in adopting this code into barebox?

Regards,
Peter

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/globalvar.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/common/globalvar.c b/common/globalvar.c
> index b9bfce7dac..eff4cbc72e 100644
> --- a/common/globalvar.c
> +++ b/common/globalvar.c
> @@ -571,6 +571,8 @@ int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
>  	return 0;
>  }
>  
> +static char *kernel_arg_bootloader_version;
> +
>  static int globalvar_init(void)
>  {
>  	register_device(&global_device);
> @@ -580,6 +582,13 @@ static int globalvar_init(void)
>  
>  	globalvar_add_simple("version", UTS_RELEASE);
>  
> +	if (IS_ENABLED(CONFIG_FLEXIBLE_BOOTARGS)) {
> +		kernel_arg_bootloader_version = basprintf("bootloader.version=barebox-%s",
> +					       UTS_RELEASE);
> +		globalvar_add_simple_string("linux.bootargs.bootloader.version",
> +					    &kernel_arg_bootloader_version);
> +	}
> +
>  	return 0;
>  }
>  pure_initcall(globalvar_init);
> -- 
> 2.16.1
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
