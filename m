Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-da0-x232.google.com ([2607:f8b0:400e:c00::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDqOn-0007yS-Q4
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 06:03:22 +0000
Received: by mail-da0-f50.google.com with SMTP id h15so156142dan.37
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2013 22:03:19 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1362652402-2985-3-git-send-email-dev@lynxeye.de>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362652402-2985-1-git-send-email-dev@lynxeye.de>
 <1362652402-2985-3-git-send-email-dev@lynxeye.de>
Date: Fri, 8 Mar 2013 10:03:19 +0400
Message-ID: <CAA4bVAEbWYWVstete_AYB_3oKRu5Rv6eAc_+91j8xwNtGNfkrQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 2/5] tegra: switch to ARMv7 cpu type
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

Hi!

This commit breaks usb ethernet card on my board.

toshiba ac100> / usb
USB: scanning bus for devices...
Bus 001 Device 003: ID 0bdb:190a F3307
Bus 001 Device 004: ID 0bda:58f2 USB Camera
Bus 001 Device 005: ID 2001:3c05 DUB-E100
mdio_bus: miibus0: probed
eth0: got preset MAC address: 1C:7E:E5:0F:E1:14
Bus 001 Device 002: ID 0424:2513
Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
5 USB Device(s) found
toshiba ac100> / dhcp
100Mbps full duplex link detected
dhcp failed: error 1
dhcp: error 1
toshiba ac100>

The next branch with Sascha's 'usb: ehci: initialize ehci_data' patch
works fine.

On 7 March 2013 14:33, Lucas Stach <dev@lynxeye.de> wrote:
> Main barebox is running on the A9 cluster. Use the correct ISA.
>
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 7ac134e..5dbf74d 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -125,7 +125,7 @@ config ARCH_VEXPRESS
>
>  config ARCH_TEGRA
>         bool "Nvidia Tegra-based boards"
> -       select CPU_ARM926T
> +       select CPU_V7
>         select HAS_DEBUG_LL
>
>  endchoice
> --
> 1.8.1.2
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
