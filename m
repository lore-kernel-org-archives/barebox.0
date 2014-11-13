Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XotbZ-0005wH-2E
 for barebox@lists.infradead.org; Thu, 13 Nov 2014 12:34:29 +0000
Message-ID: <5464A53F.1030505@phytec.de>
Date: Thu, 13 Nov 2014 13:34:07 +0100
From: Jan Weitzel <j.weitzel@phytec.de>
MIME-Version: 1.0
References: <1415778114-41864-1-git-send-email-j.weitzel@phytec.de>
 <1415778114-41864-2-git-send-email-j.weitzel@phytec.de>
 <20141112082217.GJ30369@pengutronix.de> <54632760.9050205@phytec.de>
 <20141113073732.GN30369@pengutronix.de>
In-Reply-To: <20141113073732.GN30369@pengutronix.de>
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
Subject: Re: [PATCH 2/2] ARM: omap: Add bootsource serial to xload
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


Am 13.11.2014 um 08:37 schrieb Sascha Hauer:
> On Wed, Nov 12, 2014 at 10:24:48AM +0100, Jan Weitzel wrote:
>> Am 12.11.2014 um 09:22 schrieb Sascha Hauer:
>>> Hi Jan,
>>>
>>> On Wed, Nov 12, 2014 at 08:41:54AM +0100, Jan Weitzel wrote:
>>>> If booted from serial via xmodem, also get barebox.bin per xmodem
>>>> For first stage you need the .pblx file instead of MLO.
>>>>
>>>> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
>>>> ---
>>>>   arch/arm/mach-omap/Kconfig |  7 +++++++
>>>>   arch/arm/mach-omap/xload.c | 46 ++++++++++++++++++++++++++++++++++++++++++++++
>>>>   2 files changed, 53 insertions(+)
>>>>
>>>> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
>>>> index f9b5ec3..953dd8f 100644
>>>> --- a/arch/arm/mach-omap/Kconfig
>>>> +++ b/arch/arm/mach-omap/Kconfig
>>>> @@ -118,6 +118,13 @@ config OMAP4_USBBOOT
>>>>   	  You need the utility program omap4_usbboot to boot from USB.
>>>>   	  Please read omap4_usb_booting.txt for more information.
>>>> +config OMAP_SERIALBOOT
>>>> +	bool
>>>> +	default y
>>> No default y please. Better keep it disabled by default because the
>>> OMAP4 xload configs are quiet tight I think.
>> Is adding it to am335x_mlo_defconfig ok? Because of the size I added the
>> ARCH_AM33XX dependency.
> I overlooked this dependency. So the dependency is only because of the
> binary size and it's otherwise usable on Omap aswell? In this case I
> suggest to drop the dependency. And yes, ok to add it to the
> am335x_mlo_defconfig.

Only AM335x set BOOTSOURCE_SERIAL by now
Jan

>
> Sascha
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
