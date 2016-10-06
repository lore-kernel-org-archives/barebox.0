Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ua0-x22c.google.com ([2607:f8b0:400c:c08::22c])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bs94k-0004sP-4T
 for barebox@lists.infradead.org; Thu, 06 Oct 2016 13:51:10 +0000
Received: by mail-ua0-x22c.google.com with SMTP id p25so17991979uaa.1
 for <barebox@lists.infradead.org>; Thu, 06 Oct 2016 06:50:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <57f65594.d4491c0a.37103.324dSMTPIN_ADDED_BROKEN@mx.google.com>
References: <CAGm1_ku0Vh=SC0omVMUZof3DBJhvFRPsgxg1BDEn4GGTpez9_g@mail.gmail.com>
 <57f65594.d4491c0a.37103.324dSMTPIN_ADDED_BROKEN@mx.google.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Thu, 6 Oct 2016 15:50:24 +0200
Message-ID: <CAGm1_ktk+pAF1+XLTdDa40TJesuxZk+518NCKeMhG72w1P6R7g@mail.gmail.com>
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
Subject: Re: am335x: memory configuration
To: Jan Remmet <J.Remmet@phytec.de>
Cc: barebox <barebox@lists.infradead.org>

Hi Jan,

On Thu, Oct 6, 2016 at 3:45 PM, Jan Remmet <J.Remmet@phytec.de> wrote:
> On Thu, Oct 06, 2016 at 11:08:07AM +0200, Yegor Yefremov wrote:
>> I've submitted a patch [1] to support our Baltos systems back in the
>> May. There was an issue with dynamically detecting RAM size as the
>> systems can have either 256MB or 512MB modules.
>>
>> So far u-boot was able to detect the RAM size dynamically. In order to
>> do so it uses following code in arch/arm/cpu/armv7/am33xx/emif4.c:
>>
>> int dram_init(void)
>> {
>>
>> #ifndef CONFIG_SKIP_LOWLEVEL_INIT
>>         sdram_init();
>> #endif
>>
>>         /* dram_init must store complete ramsize in gd->ram_size */
>>         gd->ram_size = get_ram_size(
>>                         (void *)CONFIG_SYS_SDRAM_BASE,
>>                         CONFIG_MAX_RAM_BANK_SIZE);
>>         return 0;
>> }
>>
>> void dram_init_banksize(void)
>> {
>>         gd->bd->bi_dram[0].start = CONFIG_SYS_SDRAM_BASE;
>>         gd->bd->bi_dram[0].size = gd->ram_size;
>> }
>>
>> This peace of code will be excuted in u-boot.img (not in MLO).
>>
>> In Barebox we have get_ram_size(), that provides real RAM size and
>> am335x_sdram_size(), that returns RAM controller settings. So far DDR
>> controler will be configured for 512MB regardless of the module. Hence
>> the return value from am335x_sdram_size() cannot be used for crating
>> ram0 node.
> On our am335x boards we use MLOs with individual RAM timings and EMIF config
> values. So am335x_sdram_size works fine in barebox.bin.
> Maybe get_ram_size works if the timing settings are equal?

I've solved the problem the way Sascha proposed earlier (see the third
version of my patch sent today).

In MLO I setup memory controller to 512MB, then I check the real
amount via  get_ram_size() and if I have 256MB I just reinitialize the
memory controller with values for 256Mb i.e. rows 14 instead of 15.
With this done one can use am335x_sdram_size() in other parts of
berebox.

Thanks for the feedback.

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
