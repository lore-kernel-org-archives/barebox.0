Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ktO-00035u-Qt
 for barebox@lists.infradead.org; Thu, 05 Mar 2020 07:26:05 +0000
Date: Thu, 5 Mar 2020 08:25:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200305072554.GN3335@pengutronix.de>
References: <20200228204823.28415-1-dg@emlix.com>
 <20200228204823.28415-2-dg@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228204823.28415-2-dg@emlix.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] fastboot: split generic code from USB gadget
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: barebox@lists.infradead.org, Edmund Henniges <eh@emlix.com>

On Fri, Feb 28, 2020 at 09:48:21PM +0100, Daniel Gl=F6ckner wrote:
> From: Edmund Henniges <eh@emlix.com>
> =

> The fastboot specification describes other protocols beyond USB. Allow
> these to reuse the generic parts of the existing fastboot code when they
> are implemented.
> =

> Most of the changes in common/fastboot.c are due to the renaming of struct
> f_fastboot *f_fb to struct fastboot *fb.
> =

> Signed-off-by: Edmund Henniges <eh@emlix.com>
> Signed-off-by: Daniel Gl=F6ckner <dg@emlix.com>
> ---
>  common/Kconfig                  |  35 ++
>  common/Makefile                 |   1 +
>  common/fastboot.c               | 955 +++++++++++++++++++++++++++++++
>  drivers/usb/gadget/Kconfig      |   3 +-
>  drivers/usb/gadget/f_fastboot.c | 968 ++------------------------------
>  drivers/usb/gadget/multi.c      |   5 +-
>  include/fastboot.h              |  66 +++
>  include/usb/fastboot.h          |  34 +-
>  include/usb/gadget-multi.h      |   2 +-
>  9 files changed, 1105 insertions(+), 964 deletions(-)
>  create mode 100644 common/fastboot.c
>  create mode 100644 include/fastboot.h
> =

> diff --git a/common/Kconfig b/common/Kconfig
> index 02ef3631e..bed7e49db 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -114,6 +114,9 @@ config USBGADGET_START
>  config BOOT
>  	bool
>  =

> +config FASTBOOT_BASE
> +	bool
> +
>  menu "General Settings"
>  =

>  config LOCALVERSION
> @@ -1013,6 +1016,38 @@ config PBL_OPTEE
>  =

>  endmenu
>  =

> +config FASTBOOT_SPARSE
> +	bool
> +	depends on FASTBOOT_BASE
> +	select IMAGE_SPARSE
> +	prompt "Enable Fastboot sparse image support"
> +	help
> +	  Sparse images are a way for the fastboot protocol to write
> +	  images that are bigger than the available memory. If unsure,
> +	  say yes here.
> +
> +config FASTBOOT_BUF
> +	bool
> +	depends on FASTBOOT_BASE
> +	prompt "Download files to temporary buffer instead of file"
> +	help
> +	  With this option enabled the fastboot code will download files to a
> +	  temporary buffer instead of a temporary file. Normally you want to
> +	  use a file as this also works when your memory is fragmented. However,
> +	  in some special cases, when the file consumer also better copes with
> +	  a buffer, then using a buffer might be better.
> +
> +	  Say no here unless you know what you are doing.
> +
> +config FASTBOOT_CMD_OEM
> +	bool
> +	depends on FASTBOOT_BASE
> +	prompt "Enable OEM commands"
> +	help
> +	  This option enables the fastboot "oem" group of commands. They allow =
to
> +	  executing arbitrary barebox commands and may be disabled in secure
> +	  environments.

I think these entries deserve an extra menu. Looking at the menu we now
have entries like "Download files to temporary buffer instead of file"
without giving any context that this is a fastboot option.

Does it make sense to add the fastboot USB and fastboot net options to
that menu as well? That way all fastboot options would be together and
not split into three different areas in the menu hierarchy.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
