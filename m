Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khExj-0001bx-BN
 for barebox@lists.infradead.org; Mon, 23 Nov 2020 16:45:13 +0000
Date: Mon, 23 Nov 2020 17:45:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201123164509.GJ24489@pengutronix.de>
References: <20201118182216.22363-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201118182216.22363-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] bootm: adapt help text and naming for
 bootm.provide_machine_id
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>

On Wed, Nov 18, 2020 at 07:22:16PM +0100, Ahmad Fatoum wrote:
> The Kconfig help text as well the function name
> machine_id_set_bootarg() suggest that enabling the Kconfig option is
> sufficient to have barebox pass the machine id to the kernel.
> 
> This is not the case, so change the naming/documentation to make this
> clearer.
> 
> Cc: Bastian Krause <bst@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/Kconfig      | 19 ++++++++++---------
>  common/bootm.c      |  2 +-
>  common/machine_id.c |  4 ++--
>  3 files changed, 13 insertions(+), 12 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 9b73aa84549c..ffdce2f96c59 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -989,19 +989,20 @@ config RESET_SOURCE
>  	  useful for any kind of system recovery or repair.
>  
>  config MACHINE_ID
> -	bool "pass machine-id to kernel"
> +	bool "compute unique machine-id"
>  	depends on FLEXIBLE_BOOTARGS
>  	depends on SHA1
>  	help
> -	  Sets the linux.bootargs.machine_id global variable with a value of
> -	  systemd.machine_id=UID. The UID is a persistent device-specific
> -	  id. It is a hash over device-specific information provided by various
> -	  sources.
> +	  Compute a persistent machine-specific id and store it to $global.machine_id.
> +	  The id is a hash of device-specific information added via
> +	  machine_id_set_hashable(). If multiple sources are available, the
> +	  information provided by the last call prior to the late initcall
> +	  set_machine_id() is used to generate the machine id from. Thus when
> +	  updating barebox the machine id might change.
>  
> -	  Note: if multiple sources provide hashable device-specific information
> -	  (via machine_id_set_hashable()) the information provided by the last call
> -	  prior to the late initcall set_machine_id() is used to generate the
> -	  machine id from. Thus when updating barebox the machine id might change.
> +	  global.bootm.provide_machine_id may be used to automatically set
> +	  the linux.bootargs.machine_id global variable with a value of
> +	  systemd.machine_id=${global.machine_id}
>  
>  	  Note: if no hashable information is available no machine id will be passed
>  	  to the kernel.
> diff --git a/common/bootm.c b/common/bootm.c
> index f70ef10100b0..59efc610997f 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -856,4 +856,4 @@ BAREBOX_MAGICVAR(global.bootm.verify, "bootm default verify level");
>  BAREBOX_MAGICVAR(global.bootm.verbose, "bootm default verbosity level (0=quiet)");
>  BAREBOX_MAGICVAR(global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from (default, device can be overridden via global.bootm.root_dev)");
>  BAREBOX_MAGICVAR(global.bootm.root_dev, "bootm default root device (overrides default device in global.bootm.appendroot)");
> -BAREBOX_MAGICVAR(global.bootm.provide_machine_id, "If true, add systemd.machine_id= with value of global.machine_id to Kernel");
> +BAREBOX_MAGICVAR(global.bootm.provide_machine_id, "If true, append systemd.machine_id=$global.machine_id to Kernel command line");
> diff --git a/common/machine_id.c b/common/machine_id.c
> index c1309ccafdd2..6480806cd287 100644
> --- a/common/machine_id.c
> +++ b/common/machine_id.c
> @@ -24,7 +24,7 @@ void machine_id_set_hashable(const void *hashable, size_t len)
>  	__machine_id_hashable_length = len;
>  }
>  
> -static int machine_id_set_bootarg(void)
> +static int machine_id_set_globalvar(void)
>  {
>  	struct digest *digest = NULL;
>  	unsigned char machine_id[SHA1_DIGEST_SIZE];
> @@ -64,6 +64,6 @@ out:
>  	return ret;
>  
>  }
> -late_initcall(machine_id_set_bootarg);
> +late_initcall(machine_id_set_globalvar);
>  
>  BAREBOX_MAGICVAR(global.machine_id, "Persistent device-specific, hexadecimal, 32-character id");
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
