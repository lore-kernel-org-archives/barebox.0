Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yu0hP-00016d-IE
 for barebox@lists.infradead.org; Sun, 17 May 2015 15:41:56 +0000
Received: by lagr1 with SMTP id r1so104778004lag.0
 for <barebox@lists.infradead.org>; Sun, 17 May 2015 08:41:32 -0700 (PDT)
Date: Sun, 17 May 2015 18:47:04 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150517184704.9b64228117f4a3addf0f4f12@gmail.com>
In-Reply-To: <1431694967-2416-1-git-send-email-yamada.masahiro@socionext.com>
References: <1431694967-2416-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH v2] include: introduce include/linux/io.h as a wrapper
 of asm/io.h
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Fri, 15 May 2015 22:02:47 +0900
Masahiro Yamada <yamada.masahiro@socionext.com> wrote:

> In the latest Linux coding style, <linux/io.h> should be included
> rather than <asm/io.h>.  To follow this standard also in barebox,
> add include/linux/io.h.  Currently, it just includes <asm/io.h>.

Hmmm. Barebox already has include/io.h for the same purpose.
And include/io.h is actively used:

~/barebox.git$ git grep "include <io.h>" | wc -l
474



> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> =

> Changes in v2:
>   - Fix a type s/introcude/introduce/
> =

>  include/linux/io.h | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>  create mode 100644 include/linux/io.h
> =

> diff --git a/include/linux/io.h b/include/linux/io.h
> new file mode 100644
> index 0000000..548b245
> --- /dev/null
> +++ b/include/linux/io.h
> @@ -0,0 +1,23 @@
> +/*
> + * Copyright 2006 PathScale, Inc.  All Rights Reserved.
> + *
> + * This file is free software; you can redistribute it and/or modify
> + * it under the terms of version 2 of the GNU General Public License
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software Foundatio=
n,
> + * Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
> + */
> +
> +#ifndef _LINUX_IO_H
> +#define _LINUX_IO_H
> +
> +#include <asm/io.h>
> +
> +#endif /* _LINUX_IO_H */
> -- =

> 1.9.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
