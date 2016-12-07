Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEiNC-0004tT-JP
 for barebox@lists.infradead.org; Wed, 07 Dec 2016 19:59:27 +0000
Date: Wed, 7 Dec 2016 20:59:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161207195904.xajaxegfpqawmwcm@pengutronix.de>
References: <20161205094033.31569-1-antonynpavlov@gmail.com>
 <20161205094033.31569-7-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161205094033.31569-7-antonynpavlov@gmail.com>
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
Subject: Re: [RFC v2 6/8] bootm: add kexec ELF support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 05, 2016 at 12:40:31PM +0300, Antony Pavlov wrote:
> Also introduce reboot() for starting already loaded
> via kexec ELF segments.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/linux/reboot.h      | 14 ++++++++++++++
>  lib/kexec/Makefile          |  1 +
>  lib/kexec/kexec-bootm-elf.c | 37 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 52 insertions(+)
> 
> diff --git a/include/linux/reboot.h b/include/linux/reboot.h
> new file mode 100644
> index 0000000..454ed33
> --- /dev/null
> +++ b/include/linux/reboot.h
> @@ -0,0 +1,14 @@
> +#ifndef _LINUX_REBOOT_H
> +#define _LINUX_REBOOT_H
> +
> +/*
> + * Commands accepted by the _reboot() system call.
> + *
> + * KEXEC       Restart system using a previously loaded Linux kernel
> + */
> +
> +#define	LINUX_REBOOT_CMD_KEXEC		0x45584543
> +
> +extern int reboot(int cmd);
> +
> +#endif /* _LINUX_REBOOT_H */
> diff --git a/lib/kexec/Makefile b/lib/kexec/Makefile
> index 8febef1..2f3dc1d 100644
> --- a/lib/kexec/Makefile
> +++ b/lib/kexec/Makefile
> @@ -1,3 +1,4 @@
>  obj-y	+= kexec.o
>  obj-y	+= kexec-elf.o
>  obj-y	+= kexec-elf-exec.o
> +obj-y	+= kexec-bootm-elf.o
> diff --git a/lib/kexec/kexec-bootm-elf.c b/lib/kexec/kexec-bootm-elf.c
> new file mode 100644
> index 0000000..ceef6c7
> --- /dev/null
> +++ b/lib/kexec/kexec-bootm-elf.c
> @@ -0,0 +1,37 @@
> +#include <bootm.h>
> +#include <init.h>
> +#include <binfmt.h>
> +#include <errno.h>
> +#include <linux/reboot.h>
> +#include <environment.h>
> +
> +#include "kexec.h"
> +
> +static int do_bootm_elf(struct image_data *data)
> +{
> +	kexec_load_file(data->os_file, 0);
> +	setenv("global.bootm.image", data->os_file);
> +	reboot(LINUX_REBOOT_CMD_KEXEC);
> +
> +	return -ERESTARTSYS;
> +}
> +
> +static struct image_handler elf_handler = {
> +	.name = "ELF",
> +	.bootm = do_bootm_elf,
> +	.filetype = filetype_elf,
> +};
> +
> +static struct binfmt_hook binfmt_elf_hook = {
> +	.type = filetype_elf,
> +	.exec = "bootm",
> +};
> +
> +static int elf_register_image_handler(void)
> +{
> +	register_image_handler(&elf_handler);
> +	binfmt_register(&binfmt_elf_hook);
> +
> +	return 0;
> +}
> +late_initcall(elf_register_image_handler);

The code needed to actually start a kexec kernel is architecture
specific, so the registration of the ELF handler should be done by this
architecture specific code. Then you also don't need this awkward reboot()
stuff. I'm thinking of a

int bootm_register_kexec_handler(int (*do_bootm)(struct image_data *data));

to be called by MIPS or malta specific code.

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
