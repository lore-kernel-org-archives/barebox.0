Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x230.google.com ([2a00:1450:400c:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WypfV-0005se-Qo
 for barebox@lists.infradead.org; Sun, 22 Jun 2014 21:51:22 +0000
Received: by mail-wg0-f48.google.com with SMTP id n12so5740312wgh.31
 for <barebox@lists.infradead.org>; Sun, 22 Jun 2014 14:50:59 -0700 (PDT)
Message-ID: <53A74FC0.7080206@gmail.com>
Date: Sun, 22 Jun 2014 23:50:56 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1403469255-9019-1-git-send-email-alex.aring@gmail.com>
 <1403469255-9019-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1403469255-9019-2-git-send-email-alex.aring@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 2/2] dns325: initial support for D-Link DNS-325
To: Alexander Aring <alex.aring@gmail.com>, barebox@lists.infradead.org

On 06/22/2014 10:34 PM, Alexander Aring wrote:
> This patch add a basic support for the D-Link DNS-325.
> 
> Currently only booting via uart with kwboot is supported. The barebox
> kwboot utility doesn't work at the moment. Use kwboot utility from u-boot
> instead.

Why does kwboot does not work? There is an issue with early Kirkwood's
BootROM and UART boot mode. Just try over and over again. I also recall
modifying the timeouts may help.

> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
[...]
> diff --git a/arch/arm/boards/dlink-dns325/dlink-dns325.dox b/arch/arm/boards/dlink-dns325/dlink-dns325.dox
> new file mode 100644
> index 0000000..414b2e7
> --- /dev/null
> +++ b/arch/arm/boards/dlink-dns325/dlink-dns325.dox
> @@ -0,0 +1,37 @@
> +/** @page dlink-dns325 D-Link DNS-325 NAS
> +
> +The NAS has
> +@li Kirkwood 88F6281-A1 SoC
> +@li 256 MB SDRAM
> +@li 128 MB NAND type SAMSUNG 946 K9F1G08U0B PCB0
> +@li 2 SATA interfaces
> +@li RS232 serial interface
> +@li 1 USB interface
> +@li 1 Gigabit Ethernet interface
> +@li 1 Temp Sensor G751-2f
> +@li 1 MCU Holtek HT48C06E for Power Managment
> +@li LEDs & buttons
> +
> +The NAS doesn't support NAND right now.
> +Only boot via uart with kwboot is supported.

Is it the NAS that doesn't support NAND or is it missing driver support
for barebox instead?

> +The kwboot utility of barebox doesn't work right now.
> +Instead use the u-boot kwboot utility:

See above, we should fix kwboot instead.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
