Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22c.google.com ([2a00:1450:4010:c07::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a4BuN-0002YU-QL
 for barebox@lists.infradead.org; Wed, 02 Dec 2015 18:13:40 +0000
Received: by lfdl133 with SMTP id l133so61354050lfd.2
 for <barebox@lists.infradead.org>; Wed, 02 Dec 2015 10:13:17 -0800 (PST)
Date: Wed, 2 Dec 2015 21:37:13 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20151202213713.5023ecefad709dc2d3e260a7@gmail.com>
In-Reply-To: <1449064131-12659-10-git-send-email-mpa@pengutronix.de>
References: <1449064131-12659-1-git-send-email-mpa@pengutronix.de>
 <1449064131-12659-10-git-send-email-mpa@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 9/9] fs: Add pstore filesystem
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed,  2 Dec 2015 14:48:51 +0100
Markus Pargmann <mpa@pengutronix.de> wrote:

> pstore is a persistent storage filesystem used for RAMOOPS. It is used
> to store console logs, panics, ftrace and other information in case of a
> crash/panic/oops/reboot.
> =

> pstore is implemented for barebox as a read-only filesystem at the
> moment. It may be extended later on. The idea is to provide a way to
> extract essential data from the last running kernel.
> =

> Most of the code is copied from the kernel. However this is only a
> lightweight implementation without real write support yet.
> =

> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  common/startup.c           |   5 +
>  fs/Kconfig                 |   2 +
>  fs/Makefile                |   1 +
>  fs/pstore/Kconfig          |  88 ++++++++
>  fs/pstore/Makefile         |  10 +
>  fs/pstore/fs.c             | 280 +++++++++++++++++++++++++
>  fs/pstore/internal.h       |  19 ++
>  fs/pstore/platform.c       | 138 ++++++++++++
>  fs/pstore/ram.c            | 507 +++++++++++++++++++++++++++++++++++++++=
++++++
>  fs/pstore/ram_core.c       | 426 +++++++++++++++++++++++++++++++++++++
>  include/linux/pstore.h     |  90 ++++++++
>  include/linux/pstore_ram.h |  87 ++++++++
>  12 files changed, 1653 insertions(+)
>  create mode 100644 fs/pstore/Kconfig
>  create mode 100644 fs/pstore/Makefile
>  create mode 100644 fs/pstore/fs.c
>  create mode 100644 fs/pstore/internal.h
>  create mode 100644 fs/pstore/platform.c
>  create mode 100644 fs/pstore/ram.c
>  create mode 100644 fs/pstore/ram_core.c
>  create mode 100644 include/linux/pstore.h
>  create mode 100644 include/linux/pstore_ram.h
> =

> diff --git a/common/startup.c b/common/startup.c
> index 4a303b297aaf..093a23ba08c9 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -60,6 +60,11 @@ static int mount_root(void)
>  		mount("none", "efivarfs", "/efivars", NULL);
>  	}
>  =

> +	if (IS_ENABLED(CONFIG_FS_PSTORE)) {
> +		mkdir("/pstore", 0);
> +		mount("none", "pstore", "/pstore", NULL);
> +	}
> +
>  	return 0;
>  }
>  fs_initcall(mount_root);
> diff --git a/fs/Kconfig b/fs/Kconfig
> index 9217bc81ea1e..5413a9295ccc 100644
> --- a/fs/Kconfig
> +++ b/fs/Kconfig
> @@ -89,4 +89,6 @@ config FS_SMHFS
>  	  located on a debugging host connected to the target running
>  	  Barebox
>  =

> +source fs/pstore/Kconfig
> +
>  endmenu
> diff --git a/fs/Makefile b/fs/Makefile
> index 46932057c1b7..590c068e6045 100644
> --- a/fs/Makefile
> +++ b/fs/Makefile
> @@ -14,3 +14,4 @@ obj-$(CONFIG_FS_UIMAGEFS)	+=3D uimagefs.o
>  obj-$(CONFIG_FS_EFI)	 +=3D efi.o
>  obj-$(CONFIG_FS_EFIVARFS) +=3D efivarfs.o
>  obj-$(CONFIG_FS_SMHFS) +=3D smhfs.o
> +obj-y			+=3D pstore/

Can we use =


   obj-$(CONFIG_FS_PSTORE) +=3D pstore/

?

> diff --git a/fs/pstore/Kconfig b/fs/pstore/Kconfig
> new file mode 100644
> index 000000000000..2455b5629cb1
> --- /dev/null
> +++ b/fs/pstore/Kconfig
> @@ -0,0 +1,88 @@
> +menuconfig FS_PSTORE
> +	bool
> +	prompt "pstore fs support"

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
