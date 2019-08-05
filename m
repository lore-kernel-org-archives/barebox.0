Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZur-0008Py-Pw
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 10:08:35 +0000
Date: Mon, 5 Aug 2019 12:08:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190805100831.e6z4clrvhy2xzvo5@pengutronix.de>
References: <20190719105534.30276-1-bst@pengutronix.de>
 <20190719105534.30276-2-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719105534.30276-2-bst@pengutronix.de>
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
Subject: Re: [PATCH v2 2/3] common: machine_id: introduce machine id
 generation and pass id on
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 19, 2019 at 12:55:33PM +0200, Bastian Krause wrote:
> By default systemd generates a machine id on first boot and tries to
> persist it (see `man machine-id`). When the root file system is read-only
> systemd cannot persist the machine id. In case multiple redundant slots
> are used the machine id will vary. When not handled explicitly the
> machine id will also change during updates.
> 
> It is possible to pass a machine id to the kernel which will be used by
> systemd (systemd.machine_id=).
> 
> This adds functionality to pass device-specific information that will be
> hashed to generate a persistent unique machine id. The machine id will
> be finally added to the kernel parameters via the
> linux.bootargs.machine_id global variable.
> 
> Note: if multiple sources provide hashable device-specific information
> (via machine_id_set_hashable()) the information provided by the last call
> prior to the late initcall set_machine_id() is used to generate the
> machine id from. Thus when updating barebox the machine id might change.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
> Changes since (implicit) v1:
>   - depend on SHA1 instead of selecting DIGEST/DIGEST_SHA1_GENERIC
>   - add note about multiple sources providing hashables to kconfig
>   - add note about no hashable provided to kconfig
>   - remove warning about "no hashable info provided" along with pr_fmt
>   - make machine_id_set_hashable()'s hashable parameter const
>   - make a copy of the hashable provided rather than storing the pointer
>   - hash data instead of pointer address
>   - use basprintf() and dedicated variables for hex machine id/machine id
>     bootarg
>   - add static inline wrapper if CONFIG_MACHINE_ID is disabled
> ---
>  common/Kconfig       | 18 +++++++++++++
>  common/Makefile      |  1 +
>  common/machine_id.c  | 63 ++++++++++++++++++++++++++++++++++++++++++++
>  include/machine_id.h | 16 +++++++++++
>  4 files changed, 98 insertions(+)
>  create mode 100644 common/machine_id.c
>  create mode 100644 include/machine_id.h
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 8aad5baecd..7be2487a20 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -982,6 +982,24 @@ config RESET_SOURCE
>  	  of the reset and why the bootloader is currently running. It can be
>  	  useful for any kind of system recovery or repair.
>  
> +config MACHINE_ID
> +	bool "pass machine-id to kernel"
> +	depends on FLEXIBLE_BOOTARGS
> +	depends on SHA1
> +	help
> +	  Sets the linux.bootargs.machine_id global variable with a value of
> +	  systemd.machine_id=UID. The UID is a persistent device-specific
> +	  id. It is a hash over device-specific information provided by various
> +	  sources.
> +
> +	  Note: if multiple sources provide hashable device-specific information
> +	  (via machine_id_set_hashable()) the information provided by the last call
> +	  prior to the late initcall set_machine_id() is used to generate the
> +	  machine id from. Thus when updating barebox the machine id might change.
> +
> +	  Note: if no hashable information is available no machine id will be passed
> +	  to the kernel.

We'll need some additional runtime control knob whether this behaviour
should be used or not. Just enabling a Kconfig option shouldn't change the
behaviour of barebox. A boolean global.linux.provide_machine_id flag
should do it.

Also it would be nice to provide the machine-id to barebox aswell, maybe
in global.machine_id.

Overall we then get this:

- set global.machine_id during barebox startup (inicalls)
- User can overwrite it with nv.machine_id if necessary
- during booting of Linux global.linux.bootargs.machine_id is
  initialized with the value of global.machine_id if desired (based on
  global.linux.provide_machine_id)

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
