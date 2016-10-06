Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bs90B-0002v5-15
 for barebox@lists.infradead.org; Thu, 06 Oct 2016 13:46:27 +0000
Date: Thu, 6 Oct 2016 15:45:45 +0200
From: Jan Remmet <J.Remmet@phytec.de>
Message-ID: <20161006134545.GA7434@lws-weitzel2@phytec.de>
References: <CAGm1_ku0Vh=SC0omVMUZof3DBJhvFRPsgxg1BDEn4GGTpez9_g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGm1_ku0Vh=SC0omVMUZof3DBJhvFRPsgxg1BDEn4GGTpez9_g@mail.gmail.com>
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: Jan Remmet <J.Remmet@phytec.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: am335x: memory configuration
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Oct 06, 2016 at 11:08:07AM +0200, Yegor Yefremov wrote:
> I've submitted a patch [1] to support our Baltos systems back in the
> May. There was an issue with dynamically detecting RAM size as the
> systems can have either 256MB or 512MB modules.
> 
> So far u-boot was able to detect the RAM size dynamically. In order to
> do so it uses following code in arch/arm/cpu/armv7/am33xx/emif4.c:
> 
> int dram_init(void)
> {
> 
> #ifndef CONFIG_SKIP_LOWLEVEL_INIT
>         sdram_init();
> #endif
> 
>         /* dram_init must store complete ramsize in gd->ram_size */
>         gd->ram_size = get_ram_size(
>                         (void *)CONFIG_SYS_SDRAM_BASE,
>                         CONFIG_MAX_RAM_BANK_SIZE);
>         return 0;
> }
> 
> void dram_init_banksize(void)
> {
>         gd->bd->bi_dram[0].start = CONFIG_SYS_SDRAM_BASE;
>         gd->bd->bi_dram[0].size = gd->ram_size;
> }
> 
> This peace of code will be excuted in u-boot.img (not in MLO).
> 
> In Barebox we have get_ram_size(), that provides real RAM size and
> am335x_sdram_size(), that returns RAM controller settings. So far DDR
> controler will be configured for 512MB regardless of the module. Hence
> the return value from am335x_sdram_size() cannot be used for crating
> ram0 node.
On our am335x boards we use MLOs with individual RAM timings and EMIF config
values. So am335x_sdram_size works fine in barebox.bin.
Maybe get_ram_size works if the timing settings are equal?

Jan
> 
> What were the best way to provide get_ram_size() from lowlevel.c to
> board.c, where I would invoke:
> arm_add_mem_device("ram0", 0x80000000, sdram_size);
> 
> [1] http://lists.infradead.org/pipermail/barebox/2016-May/027224.html
> 
> Yegor
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
