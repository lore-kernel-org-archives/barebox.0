Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x234.google.com ([2a00:1450:4008:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9Egk-0007M0-5x
 for barebox@lists.infradead.org; Tue, 13 Aug 2013 13:31:07 +0000
Received: by mail-bk0-f52.google.com with SMTP id e11so2625246bkh.25
 for <barebox@lists.infradead.org>; Tue, 13 Aug 2013 06:30:42 -0700 (PDT)
Message-ID: <520A34FE.2020008@gmail.com>
Date: Tue, 13 Aug 2013 15:30:38 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
 <1376378772-25649-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376378772-25649-4-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/6] ARM: mvebu: introduce multi image support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 08/13/13 09:26, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   arch/arm/boards/solidrun-cubox/Makefile     |  1 +
>   arch/arm/boards/solidrun-cubox/lowlevel.c   | 37 +++++++++++++++++++++++++++++
>   arch/arm/configs/solidrun_cubox_defconfig   |  6 ++++-
>   arch/arm/dts/Makefile                       |  1 +
>   arch/arm/mach-mvebu/Kconfig                 |  1 +
>   arch/arm/mach-mvebu/Makefile                |  2 +-
>   arch/arm/mach-mvebu/common.c                |  4 ++--
>   arch/arm/mach-mvebu/include/mach/lowlevel.h |  2 +-
>   arch/arm/mach-mvebu/lowlevel.c              |  2 +-
>   images/.gitignore                           |  2 ++
>   images/Makefile                             |  4 +++-
>   images/Makefile.mvebu                       | 26 ++++++++++++++++++++
>   scripts/Makefile.lib                        |  3 +++
>   13 files changed, 84 insertions(+), 7 deletions(-)
>   create mode 100644 arch/arm/boards/solidrun-cubox/lowlevel.c
>   create mode 100644 images/Makefile.mvebu
[...]
> diff --git a/arch/arm/boards/solidrun-cubox/lowlevel.c b/arch/arm/boards/solidrun-cubox/lowlevel.c
> new file mode 100644
> index 0000000..fdf5a7e
> --- /dev/null
> +++ b/arch/arm/boards/solidrun-cubox/lowlevel.c
> @@ -0,0 +1,37 @@
[...]
> +ENTRY_FUNCTION(start_solidrun_cubox)(void)
> +{
> +	uint32_t fdt;
> +
> +	__barebox_arm_head();
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = (uint32_t)__dtb_dove_cubox_start - get_runtime_offset();
> +
> +	mvebu_barebox_entry(fdt);
> +}
[...]
 > diff --git a/arch/arm/mach-mvebu/lowlevel.c 
b/arch/arm/mach-mvebu/lowlevel.c
 > index 3f64c4a..11810cc 100644
 > --- a/arch/arm/mach-mvebu/lowlevel.c
 > +++ b/arch/arm/mach-mvebu/lowlevel.c
 > @@ -24,5 +24,5 @@
 >   void __naked barebox_arm_reset_vector(void)
 >   {
 >   	arm_cpu_lowlevel_init();
 > -	mvebu_barebox_entry();
 > +	mvebu_barebox_entry(0);
 >   }

Sascha,

thanks for the patch set, I'll give it a go soon.

I understand that this is just a first step, but you are adding extra
lowlevel init to boards/solidrun-cubox/lowlevel.c but in the end it
should be part of mach-mvebu/lowlevel.c instead?

I have a some MVEBU boards with Dove and Armada 370 available and
could extend the patches to have a single lowlevel init again.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
