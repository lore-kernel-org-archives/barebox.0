Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PznCI-0002uJ-Oi
	for barebox@lists.infradead.org; Wed, 16 Mar 2011 09:39:19 +0000
Date: Wed, 16 Mar 2011 10:39:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110316093916.GP29521@pengutronix.de>
References: <n>
 <1299710787-11990-3-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1299710787-11990-3-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 2/2] Add Nios2 generic board support
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

Hi Julien,

On Wed, Mar 09, 2011 at 11:46:27PM +0100, Franck JULLIEN wrote:
> ---
>  nios2/boards/generic/Makefile      |    2 +
>  nios2/boards/generic/barebox.lds.S |  126 +++++++++++
>  nios2/boards/generic/config.h      |   64 ++++++
>  nios2/boards/generic/env/config    |   20 ++
>  nios2/boards/generic/generic.c     |   74 +++++++
>  nios2/boards/generic/nios_sopc.h   |  406 ++++++++++++++++++++++++++++++++++++
>  6 files changed, 692 insertions(+), 0 deletions(-)
>  create mode 100644 nios2/boards/generic/Makefile
>  create mode 100644 nios2/boards/generic/barebox.lds.S
>  create mode 100644 nios2/boards/generic/config.h
>  create mode 100644 nios2/boards/generic/env/config
>  create mode 100644 nios2/boards/generic/generic.c
>  create mode 100644 nios2/boards/generic/nios_sopc.h
> 
> diff --git a/nios2/boards/generic/Makefile b/nios2/boards/generic/Makefile
> new file mode 100644
> index 0000000..28dd481
> --- /dev/null
> +++ b/nios2/boards/generic/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += generic.o
> +extra-y += barebox.lds
> diff --git a/nios2/boards/generic/barebox.lds.S b/nios2/boards/generic/barebox.lds.S

This linker script looks fairly generic. Can we start with a generic
nios2 linker script instead of adding it to the board?

> diff --git a/nios2/boards/generic/env/config b/nios2/boards/generic/env/config
> new file mode 100644
> index 0000000..3ba4eb4
> --- /dev/null
> +++ b/nios2/boards/generic/env/config
> @@ -0,0 +1,20 @@
> +#!/bin/sh
> +
> +# can be either 'net' or 'flash'
> +kernel=flash
> +root=flash
> +
> +# use 'dhcp' todo dhcp in barebox and in kernel
> +ip=none
> +
> +eth0.ipaddr=192.168.1.69
> +eth0.netmask=255.255.255.0
> +eth0.gateway=192.168.0.1
> +eth0.serverip=192.168.1.117
> +eth0.ethaddr=00:50:C0:C8:10:12

You shouldn't add any ip or MAC addresses to the default environment.
You (or someone else) will end up with funny network errors if you
do.

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
