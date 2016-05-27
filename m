Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x230.google.com ([2607:f8b0:400d:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6ICI-000793-DW
 for barebox@lists.infradead.org; Fri, 27 May 2016 13:53:06 +0000
Received: by mail-qg0-x230.google.com with SMTP id f92so51054693qgf.0
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 06:52:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160526144431.GH31666@pengutronix.de>
References: <CAGm1_ktMpwYPfhz2_baRt-nX+ACArVX8ESfgjY1_NzZqurnjiA@mail.gmail.com>
 <20160526144431.GH31666@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Fri, 27 May 2016 15:52:25 +0200
Message-ID: <CAGm1_ktieRoDW5nx5NN9GLU5px=34RCTzdWGBs7xhuVMdqfr5g@mail.gmail.com>
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
Subject: Re: am335x questions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Thu, May 26, 2016 at 4:44 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Yegor,
>
> On Thu, May 26, 2016 at 03:41:46PM +0200, Yegor Yefremov wrote:
>> I'm porting an am335x based board. We have systems either with 256MB
>> or 512MB RAM. Currently I'm using following code:
>>
>> ENTRY_FUNCTION(start_am33xx_baltos_sdram, r0, r1, r2)
>> {
>>         uint32_t sdram_size;
>>         void *fdt;
>>
>>         sdram_size = SZ_256M;
>>         fdt = __dtb_am335x_baltos_minimal_start;
>>
>>         fdt -= get_runtime_offset();
>>
>>         barebox_arm_entry(0x80000000, sdram_size, fdt);
>> }
>>
>> This way I always have 256MB "detected" regardless of the used
>> hardware. Is it possible to let Barebox autodetect RAM size like it is
>> done in U-Boot?
>
> Try am335x_barebox_entry() instead of barebox_arm_entry(), it will
> read back the configured SDRAM size from the SDRAM controller. Make sure
> you don't have a /memory node in your device tree conflicting with the
> real amount of RAM (i.e. when you have a board with 512MiB and your
> device tree contains a /memory node with 256MiB then you will have
> conflicts during startup, most likely barebox will bail out in the MMU
> startup). Just delete the /memory node from the device tree, barebox
> will create it automatically later.
>
> For a full runtime SDRAM size detection you could call
> am335x_sdram_init() with different setups and call get_ram_size()
> afterwards. I'm not aware of other tricks on AM335x. How does U-Boot do
> it?

I haven't looked at U-Boot solution closely as detection was working
from the very beginning. I'll look at am335x_barebox_entry().

>>
>> Another question concerns booting medium. Whether I start from NAND or
>> MMC I always want to be able to boot from MMC too. Now, if I boot
>> Barebox from NAND I can see following in devinfo output:
>>
>>  `-- 48060000.mmc
>>          `-- mmc0
>>
>> How can I make system enumerate MMC partition, so that I can mount
>> them? "detect mmc0" doesn't help.
>
> "detect mmc0" should generally work. If it doesn't my guess is that the
> pinmux is not configured correctly. When you boot from MMC then the ROM
> configures the pinmux and the SD card works in barebox aswell. When you
> boot from Nand then the pinmux is missing. Just a guess, could be clocks
> aswell or something else.

You're right. Missing pinmux was the problem.

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
