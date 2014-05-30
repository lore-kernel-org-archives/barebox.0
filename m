Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22b.google.com ([2607:f8b0:4002:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqG0e-0002UD-Vt
 for barebox@lists.infradead.org; Fri, 30 May 2014 06:09:45 +0000
Received: by mail-yk0-f171.google.com with SMTP id 142so1148980ykq.2
 for <barebox@lists.infradead.org>; Thu, 29 May 2014 23:09:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1400788130-24202-3-git-send-email-antonynpavlov@gmail.com>
References: <1400788130-24202-1-git-send-email-antonynpavlov@gmail.com>
 <1400788130-24202-3-git-send-email-antonynpavlov@gmail.com>
Date: Fri, 30 May 2014 08:09:21 +0200
Message-ID: <CAOpc7mG1WzFvhzctPULHeaZV10uBbVxK1f0kn9qAAiFXkBxc_w@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: [PATCH v2 2/7] ARM: uemd: add DEBUG_LL support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

2014-05-22 21:48 GMT+02:00 Antony Pavlov <antonynpavlov@gmail.com>:
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -203,6 +203,7 @@ config ARCH_UEMD
>         select OFDEVICE
>         select OFTREE
>         select CLOCKSOURCE_UEMD
> +       select HAS_DEBUG_LL

Why not putting this into the _defconfig?

(On my device, it's neither in defconfig nor in Kconfig, I only had it
on in the initial "bring it to live" period. Afterwards I turned it
off)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
