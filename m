Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x22a.google.com ([2607:f8b0:400d:c09::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCNgX-0002gI-Cl
 for barebox@lists.infradead.org; Mon, 13 Jun 2016 08:57:30 +0000
Received: by mail-qk0-x22a.google.com with SMTP id c73so41315964qkg.2
 for <barebox@lists.infradead.org>; Mon, 13 Jun 2016 01:57:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160613085502.GJ31666@pengutronix.de>
References: <1464619430-23873-1-git-send-email-yegorslists@googlemail.com>
 <20160601070826.GJ31666@pengutronix.de>
 <CAGm1_ksTsK43q11j8Kw3SYQ_HNAtGDQbgUJE_T9hQsuavJBkuw@mail.gmail.com>
 <20160613085502.GJ31666@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Mon, 13 Jun 2016 10:56:48 +0200
Message-ID: <CAGm1_kui_zomKNCAO++cD7osQTtWA22V05bhRHh7YXsgBr-T1g@mail.gmail.com>
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
Subject: Re: [PATCH v2] Add support for Baltos systems
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Jun 13, 2016 at 10:55 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Jun 13, 2016 at 09:44:24AM +0200, Yegor Yefremov wrote:
>> On Wed, Jun 1, 2016 at 9:08 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> > On Mon, May 30, 2016 at 04:43:50PM +0200, yegorslists@googlemail.com wrote:
>> >> From: Yegor Yefremov <yegorslists@googlemail.com>
>> >>
>> >> OnRISC Baltos devices are based on a am335x SoC and can be booted
>> >> either from MMC or NAND.
>> >>
>> >> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
>> >> ---
>> >> Changes:
>> >>         v2: - remove typedef
>> >>             - rework invalid EEPROM content handling
>> >>             - add mmc0 as boot device for MMC boot source
>> >>
>> >> +static int baltos_mem_init(void)
>> >> +{
>> >> +     uint32_t sdram_size;
>> >> +
>> >> +     if (!of_machine_is_compatible("vscom,onrisc"))
>> >> +             return 0;
>> >> +
>> >> +     sdram_size = SZ_256M;
>> >> +
>> >> +     arm_add_mem_device("ram0", 0x80000000, sdram_size);
>> >> +
>> >> +     return 0;
>> >> +}
>> >> +mem_initcall(baltos_mem_init);
>> >
>> > This shouldn't be necessary. See arch/arm/mach-omap/am33xx_scrm.c, here
>> > the correct amount of memory should be registered.
>>
>> ACK
>>
>> >> +ENTRY_FUNCTION(start_am33xx_baltos_sdram, r0, r1, r2)
>> >> +{
>> >> +     uint32_t sdram_size;
>> >> +     void *fdt;
>> >> +
>> >> +     sdram_size = SZ_256M;
>> >> +     fdt = __dtb_am335x_baltos_minimal_start;
>> >> +
>> >> +     fdt -= get_runtime_offset();
>> >> +
>> >> +     barebox_arm_entry(0x80000000, sdram_size, fdt);
>> >
>> > am335x_barebox_entry() calculates the SDRAM size automatically for you.
>> >
>> > Doing this has the advantage that you can configure your SDRAM as you
>> > like without having to bother that all other locations where the SDRAM
>> > size is needed are correct.
>>
>> This is not working for me. As soon as barebox.bin starts I can see only
>>
>> barebox 2016.05.0 #3 Mon Jun 13 09:32:01 CEST 2016
>>
>> Board: OnRISC Baltos
>>
>> I don't know why, but am335x_sdram_size() always finds 0x20000000 i.e.
>> 512MB on both 256MB modules and 512MB.
>
> Could it be that you use the 512MB settings for both variants and in the
> 256MB case you simply only use half of it? In this case
> am335x_sdram_size() cannot work properly. You either have to fix the
> settings in the controller after you detected that you have 256MB or you
> have to stick to the current static setup. There's also get_ram_size()
> that tests the given address space for mirrors and returns the real ram
> size.

OK. Then I'll remove mem_init from board.c and stick to the static setup.

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
