Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZSi8T-00083U-AO
 for barebox@lists.infradead.org; Fri, 21 Aug 2015 08:57:17 +0000
Received: by lbcbn3 with SMTP id bn3so39392926lbc.2
 for <barebox@lists.infradead.org>; Fri, 21 Aug 2015 01:56:54 -0700 (PDT)
Date: Fri, 21 Aug 2015 12:04:48 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150821120448.b9303fc43382e0f871bd7fd1@gmail.com>
In-Reply-To: <1440084138-3116-1-git-send-email-pmamonov@gmail.com>
References: <1440084138-3116-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH] RFC: include/usb/ch9.h: pad usb_endpoint_descriptor
 with 1 byte
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, 20 Aug 2015 18:22:18 +0300
Peter Mamonov <pmamonov@gmail.com> wrote:

> This patch fixes "Ooops, address error on load or ifetch!",
> caused by "usb" command on MIPS architecture.
> =

> To reproduce the problem follow the following steps:
> =

> 1. Build barebox for MIPS target with -O0 optimization flag:
> =

> diff --git a/Makefile b/Makefile
> index 5a7fd5f..da9a8be 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -301,7 +301,7 @@ CPPFLAGS        :=3D -D__KERNEL__ -D__BAREBOX__ $(LIN=
UXINCLUDE) -fno-builtin -ffre
> =

>  CFLAGS          :=3D -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
>                     -Werror-implicit-function-declaration \
> -                   -fno-strict-aliasing -fno-common -Os -pipe
> +                   -fno-strict-aliasing -fno-common -O0 -pipe
>  AFLAGS          :=3D -D__ASSEMBLY__
> =

>  LDFLAGS_barebox        :=3D -Map barebox.map

It's better to add some indentation here because the patches with patches i=
n commit message make problem for 'git am'.

Also it's better to change the subject of the message. Use "[RFC]" instead =
of "[PATCH] RFC:".
Please see --subject-prefix git-format-patch option.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
