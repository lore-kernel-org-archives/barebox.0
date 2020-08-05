Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3IZN-0007F2-RC
 for barebox@lists.infradead.org; Wed, 05 Aug 2020 12:30:59 +0000
References: <CAKd8=GuMSvfaXiTvx4MSOnkLNvTuZg--deRufN6wDaPr8OxA1g@mail.gmail.com>
 <e29ef420-c914-72b4-5ef2-875d3f9844e7@pengutronix.de>
 <CAKd8=Gsyqhy-bzTdSQTfd8z6=JtkkhP1m00yoC=3uLRr4q1-xg@mail.gmail.com>
 <c726160f-1221-b26e-ccc1-0122f2ac7973@pengutronix.de>
 <CAKd8=GsMPPV+zmUFT1j+OnToOU4urCQ4kQR7yYsR-+CcOoNWDw@mail.gmail.com>
 <9dcd6282-745a-8509-cd30-867393188f2c@pengutronix.de>
 <CAKd8=GtMMXLRTE6qCzoDxxo-9qwFrQ6cyaW3SHE3ofisv0TRCQ@mail.gmail.com>
 <9097b4aa-05e4-2083-9a87-512b0f0cf2a2@pengutronix.de>
 <CAKd8=GvaxTV8AHwBaiTb-JG5yneeUX9SoW2=5j+QS9m=CG5reQ@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <74c8e732-2fda-6814-f306-426f66681517@pengutronix.de>
Date: Wed, 5 Aug 2020 14:30:55 +0200
MIME-Version: 1.0
In-Reply-To: <CAKd8=GvaxTV8AHwBaiTb-JG5yneeUX9SoW2=5j+QS9m=CG5reQ@mail.gmail.com>
Content-Language: en-US
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
Subject: Re: Getting serial console output on new imx7d tqma7 board UART4
To: Lars Pedersen <lapeddk@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

On 8/5/20 1:12 PM, Lars Pedersen wrote:
>> Text base is ignored, when you are relocatable. If you aren't relocatable,
>> you need a valid address as your text base. Why did you turn it off?
> 
> I didn't turn it off. It isn't selected by MACH_FREESCALE_MX7_SABRESD
> so it gets turned off if only this board is used. It is selected by 6
> other boards, which is the reason it works when compiling for all
> boards.

I don't think that's how it works. If it was =y and the select went
away because of CONFIG_MACH_CCMX51=n, it remains at =y. I just tested
it and that's the behavior I observed.


I am not sure what we could do better here. You can use barebox
as non-relocatable binary if you set CONFIG_TEXT_BASE to a sensible
value. You might want this if you are keen on reducing barebox size
further at cost of portability. So having a select here to ensure
it's always set won't work.

We can also not set a suitable CONFIG_TEXT_BASE at Kconfig level,
because, due to multi-image support, we may be building different
boards with different TEXT_BASEs...

We could have RELOCATABLE be default y as it's a more sensible default
though. Sascha, what do you think?

> 
>  Symbol: RELOCATABLE [=y]
>  Type  : bool
>  Defined at common/Kconfig:336
>    Prompt: generate relocatable barebox binary
>    Depends on: PPC || ARM [=y]
>    Location:
>  (2) -> General Settings
>  Selected by [y]:
>    - MACH_CCMX51 [=y] && ARCH_IMX [=y] && IMX_MULTI_BOARDS [=y]
>  Selected by [n]:
>    - ARCH_BCM283X [=n] && <choice>
>    - ARCH_TEGRA [=n] && <choice>
>    - ARCH_ZYNQMP [=n] && <choice>
>    - MACH_VEXPRESS [=n] && <choice>
>    - ARCH_ZYNQ7000 [=n] && ARCH_ZYNQ [=n]
> 
> 
>>
>> Cheers,
>> Ahmad
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
