Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLR1d-0004PE-K2
 for barebox@lists.infradead.org; Mon, 06 Apr 2020 12:38:50 +0000
Received: by mail-lj1-x244.google.com with SMTP id i20so14461971ljn.6
 for <barebox@lists.infradead.org>; Mon, 06 Apr 2020 05:38:49 -0700 (PDT)
Date: Mon, 6 Apr 2020 15:38:45 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20200406153845.0aa8ff006f40897eecd1c9ed@gmail.com>
In-Reply-To: <20200406122313.1476-1-antonynpavlov@gmail.com>
References: <20200406122313.1476-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] uimage: add define for RISC-V architecture
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon,  6 Apr 2020 15:23:13 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

Hi Sascha,

It looks like barebox IN_ARCH_* constants in image.h and the same constants=
 from U-Boot's image.h
are differ.

> --- a/include/image.h
> +++ b/include/image.h
> @@ -75,6 +75,7 @@
>  #define IH_ARCH_NDS32		20	/* ANDES Technology - NDS32  */
>  #define IH_ARCH_OPENRISC	21	/* OpenRISC 1000  */
>  #define IH_ARCH_ARM64		22	/* ARM64	*/
> +#define IH_ARCH_RISCV		23	/* RISC-V	*/
>  =

>  #if defined(__PPC__)
>  #define IH_ARCH IH_ARCH_PPC

Does it matters?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
