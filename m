Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P7C0Y-0001ak-Se
	for barebox@lists.infradead.org; Sat, 16 Oct 2010 19:01:33 +0000
Date: Sat, 16 Oct 2010 21:01:03 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20101016190102.GD6225@tarshish>
References: <1287065132-20372-1-git-send-email-eric@eukrea.com>
	<1287065132-20372-6-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1287065132-20372-6-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 06/10] eukrea_cpuimx25: update board support
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Thu, Oct 14, 2010 at 04:05:28PM +0200, Eric B=E9nard wrote:
> - support NAND external boot
> - enable only used clocks
> - LCD fix in /env/bin/init
> - I2C support
> - SDCard support
> - USB Host 1 support
> - DFU support on OTG port
> - update defconfig
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/boards/eukrea_cpuimx25/env/bin/init      |    2 +
>  arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |  104 +++++++++++++++=
++++-
>  arch/arm/boards/eukrea_cpuimx25/lowlevel.c        |   64 ++++++++++---
>  arch/arm/configs/eukrea_cpuimx25_defconfig        |   12 ++-
>  4 files changed, 162 insertions(+), 20 deletions(-)

[snip]

> diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c =

> b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
> index 7fd1031..c2eb398 100644
> --- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
> +++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c

[snip]

> +#ifdef CONFIG_USB
> +
> +#define MX35_H1_SIC_SHIFT	21
> +#define MX35_H1_SIC_MASK	(0x3 << MX35_H1_SIC_SHIFT)
> +#define MX35_H1_PM_BIT		(1 << 8)
> +#define MX35_H1_IPPUE_UP_BIT	(1 << 7)
> +#define MX35_H1_IPPUE_DOWN_BIT	(1 << 6)
> +#define MX35_H1_TLL_BIT		(1 << 5)
> +#define MX35_H1_USBTE_BIT	(1 << 4)
> +#define MXC_EHCI_INTERFACE_SINGLE_UNI	(2 << 0)

The exact same defines appear in patch no. 10 of this series. IMO these sho=
uld =

go into a shared header file.

baruch

-- =

                                                     ~. .~   Tk Open Systems
=3D}------------------------------------------------ooO--U--Ooo------------=
{=3D
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
