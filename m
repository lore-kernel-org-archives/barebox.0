Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f43.google.com ([209.85.160.43])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UE0tM-0003dF-U8
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 17:15:39 +0000
Received: by mail-pb0-f43.google.com with SMTP id md12so1369242pbc.2
 for <barebox@lists.infradead.org>; Fri, 08 Mar 2013 09:15:35 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20130308143203.GF1906@pengutronix.de>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362652402-2985-1-git-send-email-dev@lynxeye.de>
 <1362652402-2985-3-git-send-email-dev@lynxeye.de>
 <CAA4bVAEbWYWVstete_AYB_3oKRu5Rv6eAc_+91j8xwNtGNfkrQ@mail.gmail.com>
 <20130308143203.GF1906@pengutronix.de>
Date: Fri, 8 Mar 2013 21:15:35 +0400
Message-ID: <CAA4bVAEfHGg5ZEh3RL2fLXmUJ=Wb=jQp2n7KHcF3jsNe+PqQUQ@mail.gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 8 March 2013 18:32, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Antony,
>
> On Fri, Mar 08, 2013 at 10:03:19AM +0400, Antony Pavlov wrote:
>> Hi!
>>
>> This commit breaks usb ethernet card on my board.
>>
>> toshiba ac100> / usb
>> USB: scanning bus for devices...
>> Bus 001 Device 003: ID 0bdb:190a F3307
>> Bus 001 Device 004: ID 0bda:58f2 USB Camera
>> Bus 001 Device 005: ID 2001:3c05 DUB-E100
>> mdio_bus: miibus0: probed
>> eth0: got preset MAC address: 1C:7E:E5:0F:E1:14
>> Bus 001 Device 002: ID 0424:2513
>> Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
>> 5 USB Device(s) found
>> toshiba ac100> / dhcp
>> 100Mbps full duplex link detected
>> dhcp failed: error 1
>> dhcp: error 1
>> toshiba ac100>
>
> Could you try the following?
>

Alas! This patch did't help.

> diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
> index 9d9b854..c631815 100644
> --- a/arch/arm/include/asm/barebox-arm-head.h
> +++ b/arch/arm/include/asm/barebox-arm-head.h
> @@ -22,7 +22,7 @@ static inline void arm_cpu_lowlevel_init(void)
>
>  #if __LINUX_ARM_ARCH__ >= 6
>         r |= CR_U;
> -       r &= CR_A;
> +       r &= ~CR_A;
>  #else
>         r |= CR_A;
>  #endif
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
