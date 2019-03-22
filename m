Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h78t0-0008IY-PY
 for barebox@lists.infradead.org; Fri, 22 Mar 2019 01:22:20 +0000
Received: by mail-qt1-x82a.google.com with SMTP id w5so790241qtb.11
 for <barebox@lists.infradead.org>; Thu, 21 Mar 2019 18:22:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_Pvub19JJgwwkZrNX7iz47f-jib5hiUgE+8Z=2cSf80=YygQ@mail.gmail.com>
 <20190321073332.b3725avve4p6ascg@pengutronix.de>
 <CAD_PvubAaFD=zJVrzpjq__F2Qre4XedjE8op_1GAQcf19jYOrg@mail.gmail.com>
 <201903211025.18488.jbe@pengutronix.de>
In-Reply-To: <201903211025.18488.jbe@pengutronix.de>
From: Lewis Zhou <lewisou@gmail.com>
Date: Fri, 22 Mar 2019 09:22:05 +0800
Message-ID: <CAD_Pvub3uCtObgJFMf8aN+=N8pm5kN=rEeC+XThHvmNZwfDWOA@mail.gmail.com>
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
Subject: Re: selected processor does not support `rev r7,r7'
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Juergen and Sascha

It seems CONFIG_ARCH_AM33XX and CONFIG_ARCH_OMAP are missing in the
include/generated/mach-types.h. Could that cause the problem?

lewis@lewis-ubuntu:~/OpenProj/barebox$ cat .config | grep ARCH
# CONFIG_ARCH_AT91 is not set
# CONFIG_ARCH_BCM283X is not set
# CONFIG_ARCH_CLPS711X is not set
# CONFIG_ARCH_DAVINCI is not set
# CONFIG_ARCH_DIGIC is not set
# CONFIG_ARCH_EP93XX is not set
# CONFIG_ARCH_HIGHBANK is not set
# CONFIG_ARCH_IMX is not set
# CONFIG_ARCH_MVEBU is not set
# CONFIG_ARCH_MXS is not set
# CONFIG_ARCH_NETX is not set
# CONFIG_ARCH_NOMADIK is not set
CONFIG_ARCH_OMAP=y
# CONFIG_ARCH_PXA is not set
# CONFIG_ARCH_ROCKCHIP is not set
# CONFIG_ARCH_SOCFPGA is not set
# CONFIG_ARCH_S3C24xx is not set
# CONFIG_ARCH_S5PCxx is not set
# CONFIG_ARCH_S3C64xx is not set
# CONFIG_ARCH_VERSATILE is not set
# CONFIG_ARCH_VEXPRESS is not set
# CONFIG_ARCH_TEGRA is not set
# CONFIG_ARCH_UEMD is not set
# CONFIG_ARCH_ZYNQ is not set
# CONFIG_ARCH_QEMU is not set
CONFIG_ARCH_AM33XX=y
CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"


Kind regards,
Lewis

On Thu, Mar 21, 2019 at 5:25 PM Juergen Borleis <jbe@pengutronix.de> wrote:
>
> Hi,
>
> On Thursday 21 March 2019 08:53:06 Lewis Zhou wrote:
> > [...]
> > {standard input}: Assembler messages:
> > {standard input}:123: Error: selected processor does not support `rev r7,r7' in Thumb mode
>
> This is an assembler and not a compiler error message.
>
> jb
> --
> Pengutronix e.K.                             | Juergen Borleis             |
> Industrial Linux Solutions                   | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
