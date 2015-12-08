Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x229.google.com ([2a00:1450:4010:c07::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6FFg-00010w-6v
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 10:12:11 +0000
Received: by lffu14 with SMTP id u14so9459398lff.1
 for <barebox@lists.infradead.org>; Tue, 08 Dec 2015 02:11:46 -0800 (PST)
Date: Tue, 8 Dec 2015 13:35:52 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20151208133552.eded730b31053a53a7115a53@gmail.com>
In-Reply-To: <1449567572-21758-10-git-send-email-mpa@pengutronix.de>
References: <1449567572-21758-1-git-send-email-mpa@pengutronix.de>
 <1449567572-21758-10-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH v2 9/9] fs: Add pstore filesystem
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue,  8 Dec 2015 10:39:32 +0100
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
> =

> Notes:
>     Changes in v2:
>     - Moved the config symbol from the pstore Makefile to the upper level=
 Makefile
> =

>  common/startup.c           |   5 +
>  fs/Kconfig                 |   2 +
>  fs/Makefile                |   1 +
>  fs/pstore/Kconfig          |  86 ++++++++
>  fs/pstore/Makefile         |   9 +
>  fs/pstore/fs.c             | 280 +++++++++++++++++++++++++
>  fs/pstore/internal.h       |  19 ++
>  fs/pstore/platform.c       | 138 ++++++++++++
>  fs/pstore/ram.c            | 507 +++++++++++++++++++++++++++++++++++++++=
++++++
>  fs/pstore/ram_core.c       | 426 +++++++++++++++++++++++++++++++++++++
>  include/linux/pstore.h     |  90 ++++++++
>  include/linux/pstore_ram.h |  87 ++++++++
>  12 files changed, 1650 insertions(+)
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

> --- /dev/null
> +++ b/fs/pstore/fs.c
> @@ -0,0 +1,280 @@
> +/*
> + * Persistent Storage Barebox filesystem layer
> + * Copyright =A9 2015 Pengutronix, Markus Pargmann <mpa@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <fs.h>
> +#include <errno.h>
> +#include <fcntl.h>
> +#include <fs.h>
> +#include <malloc.h>
> +#include <init.h>
> +#include <linux/stat.h>
> +#include <linux/err.h>
> +#include <linux/pstore.h>
> +#include <libbb.h>
> +#include <rtc.h>
> +#include <libfile.h>
> +#include <linux/pstore.h>

<linux/psstore.h> and <fs.h> are included twice.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
