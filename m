Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UigxQ-0002Cc-MZ
 for barebox@lists.infradead.org; Sat, 01 Jun 2013 08:14:37 +0000
Received: by mail-la0-f53.google.com with SMTP id ea20so2075398lab.12
 for <barebox@lists.infradead.org>; Sat, 01 Jun 2013 01:14:14 -0700 (PDT)
Date: Sat, 1 Jun 2013 12:13:11 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130601121311.0128e813920fb934370e8caf@gmail.com>
In-Reply-To: <CAJBvFxM9zECHftuSLWfLaiN+ZiVRZQjx0zTggUD3KVRttRBTtg@mail.gmail.com>
References: <CAJBvFxM9zECHftuSLWfLaiN+ZiVRZQjx0zTggUD3KVRttRBTtg@mail.gmail.com>
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
Subject: Re: bootm command support for x86
To: Masaki Muranaka <monaka@monami-ya.jp>
Cc: barebox@lists.infradead.org

On Sat, 1 Jun 2013 10:51:03 +0900
Masaki Muranaka <monaka@monami-ya.jp> wrote:

Can you use 'git format-patch' to prepare your patches and 'git send-email'=
 to send them, please?

> It enables to build bootm command on generic_x86.
> I'm not sure but I guess we don't need defined(__I386__) check.
> I kept it for now.
> =

> diff --git a/include/image.h b/include/image.h
> index 219419b..0c8a4b1 100644
> --- a/include/image.h
> +++ b/include/image.h
> @@ -89,7 +89,7 @@
>  #define IH_ARCH IH_ARCH_PPC
>  #elif defined(__ARM__)
>  #define IH_ARCH IH_ARCH_ARM
> -#elif defined(__I386__) || defined(__x86_64__)
> +#elif defined(__I386__) || defined(__x86_64__) || defined(__i386__)
>  #define IH_ARCH IH_ARCH_I386
>  #elif defined(__mips__)
>  #define IH_ARCH IH_ARCH_MIPS
> =

> =

> --
> --
> Masaki Muranaka
> Monami-ya LLC, Japan.
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
