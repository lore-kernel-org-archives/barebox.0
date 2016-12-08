Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEt42-00037V-8q
 for barebox@lists.infradead.org; Thu, 08 Dec 2016 07:24:23 +0000
Received: by mail-wm0-x243.google.com with SMTP id a20so1618815wme.2
 for <barebox@lists.infradead.org>; Wed, 07 Dec 2016 23:24:01 -0800 (PST)
Date: Thu, 8 Dec 2016 10:29:32 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20161208102932.a862c037d3aa21699a0d4123@gmail.com>
In-Reply-To: <20161207195904.xajaxegfpqawmwcm@pengutronix.de>
References: <20161205094033.31569-1-antonynpavlov@gmail.com>
 <20161205094033.31569-7-antonynpavlov@gmail.com>
 <20161207195904.xajaxegfpqawmwcm@pengutronix.de>
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
Subject: Re: [RFC v2 6/8] bootm: add kexec ELF support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 7 Dec 2016 20:59:04 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Dec 05, 2016 at 12:40:31PM +0300, Antony Pavlov wrote:
> > Also introduce reboot() for starting already loaded
> > via kexec ELF segments.
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  include/linux/reboot.h      | 14 ++++++++++++++
> >  lib/kexec/Makefile          |  1 +
> >  lib/kexec/kexec-bootm-elf.c | 37 +++++++++++++++++++++++++++++++++++++
> >  3 files changed, 52 insertions(+)
> > =

> > diff --git a/include/linux/reboot.h b/include/linux/reboot.h
> > new file mode 100644
> > index 0000000..454ed33
> > --- /dev/null
> > +++ b/include/linux/reboot.h
> > @@ -0,0 +1,14 @@
> > +#ifndef _LINUX_REBOOT_H
> > +#define _LINUX_REBOOT_H
> > +
> > +/*
> > + * Commands accepted by the _reboot() system call.
> > + *
> > + * KEXEC       Restart system using a previously loaded Linux kernel
> > + */
> > +
> > +#define	LINUX_REBOOT_CMD_KEXEC		0x45584543
> > +
> > +extern int reboot(int cmd);
> > +
> > +#endif /* _LINUX_REBOOT_H */
> > diff --git a/lib/kexec/Makefile b/lib/kexec/Makefile
> > index 8febef1..2f3dc1d 100644
> > --- a/lib/kexec/Makefile
> > +++ b/lib/kexec/Makefile
> > @@ -1,3 +1,4 @@
> >  obj-y	+=3D kexec.o
> >  obj-y	+=3D kexec-elf.o
> >  obj-y	+=3D kexec-elf-exec.o
> > +obj-y	+=3D kexec-bootm-elf.o
> > diff --git a/lib/kexec/kexec-bootm-elf.c b/lib/kexec/kexec-bootm-elf.c
> > new file mode 100644
> > index 0000000..ceef6c7
> > --- /dev/null
> > +++ b/lib/kexec/kexec-bootm-elf.c
> > @@ -0,0 +1,37 @@
> > +#include <bootm.h>
> > +#include <init.h>
> > +#include <binfmt.h>
> > +#include <errno.h>
> > +#include <linux/reboot.h>
> > +#include <environment.h>
> > +
> > +#include "kexec.h"
> > +
> > +static int do_bootm_elf(struct image_data *data)
> > +{
> > +	kexec_load_file(data->os_file, 0);
> > +	setenv("global.bootm.image", data->os_file);
> > +	reboot(LINUX_REBOOT_CMD_KEXEC);
> > +
> > +	return -ERESTARTSYS;
> > +}
> > +
> > +static struct image_handler elf_handler =3D {
> > +	.name =3D "ELF",
> > +	.bootm =3D do_bootm_elf,
> > +	.filetype =3D filetype_elf,
> > +};
> > +
> > +static struct binfmt_hook binfmt_elf_hook =3D {
> > +	.type =3D filetype_elf,
> > +	.exec =3D "bootm",
> > +};
> > +
> > +static int elf_register_image_handler(void)
> > +{
> > +	register_image_handler(&elf_handler);
> > +	binfmt_register(&binfmt_elf_hook);
> > +
> > +	return 0;
> > +}
> > +late_initcall(elf_register_image_handler);
> =

> The code needed to actually start a kexec kernel is architecture
> specific, so the registration of the ELF handler should be done by this
> architecture specific code. Then you also don't need this awkward reboot()
> stuff. I'm thinking of a
> =

> int bootm_register_kexec_handler(int (*do_bootm)(struct image_data *data)=
);
> =

> to be called by MIPS or malta specific code.
> =


Moreover current RFC v2 kexec patchseries contains too many redundant code
(e.g. kexec uses it's own filetype-like infrastructure).

I agree. Current barebox kexec infrastructure is used only for MIPS so I ca=
n move
some code from lib/ to arch/mips. =


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
