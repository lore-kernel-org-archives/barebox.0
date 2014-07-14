Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X6fMr-0001YC-CR
 for barebox@lists.infradead.org; Mon, 14 Jul 2014 12:28:29 +0000
Received: by mail-lb0-f173.google.com with SMTP id n15so837342lbi.18
 for <barebox@lists.infradead.org>; Mon, 14 Jul 2014 05:28:05 -0700 (PDT)
Date: Mon, 14 Jul 2014 16:40:27 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140714164027.d71c9bf11c04bb35cd5e5522@gmail.com>
In-Reply-To: <1405335380-17996-3-git-send-email-antonynpavlov@gmail.com>
References: <1405335380-17996-1-git-send-email-antonynpavlov@gmail.com>
 <1405335380-17996-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC v2 2/5] add rtc support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, 14 Jul 2014 14:56:17 +0400
Antony Pavlov <antonynpavlov@gmail.com> wrote:

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/Kconfig       |  1 +
>  drivers/Makefile      |  1 +
>  drivers/rtc/Kconfig   | 16 +++++++++++++++
>  drivers/rtc/Makefile  |  6 ++++++
>  drivers/rtc/class.c   | 53 +++++++++++++++++++++++++++++++++++++++++++++=
++++
>  drivers/rtc/rtc-lib.c | 55 +++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  include/linux/rtc.h   | 45 +++++++++++++++++++++++++++++++++++++++++
>  include/rtc.h         |  2 ++
>  8 files changed, 179 insertions(+)
> =

> diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
> new file mode 100644
> index 0000000..f148266
> --- /dev/null
> +++ b/drivers/rtc/Kconfig
> @@ -0,0 +1,16 @@
> +#
> +# RTC class/drivers configuration
> +#
> +
> +config RTC_LIB
> +	bool
> +
> +menuconfig RTC_CLASS
> +        bool "Real Time Clock"
> +        default n
> +        depends on !S390 && !UML

Sorry, I have to drop this line.

> +        select RTC_LIB
> +        help

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
