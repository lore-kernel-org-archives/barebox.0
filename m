Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ua0-x241.google.com ([2607:f8b0:400c:c08::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bs4fZ-0006K3-Bk
 for barebox@lists.infradead.org; Thu, 06 Oct 2016 09:08:50 +0000
Received: by mail-ua0-x241.google.com with SMTP id 10so496331ual.1
 for <barebox@lists.infradead.org>; Thu, 06 Oct 2016 02:08:28 -0700 (PDT)
MIME-Version: 1.0
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Thu, 6 Oct 2016 11:08:07 +0200
Message-ID: <CAGm1_ku0Vh=SC0omVMUZof3DBJhvFRPsgxg1BDEn4GGTpez9_g@mail.gmail.com>
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
Subject: am335x: memory configuration
To: barebox <barebox@lists.infradead.org>

I've submitted a patch [1] to support our Baltos systems back in the
May. There was an issue with dynamically detecting RAM size as the
systems can have either 256MB or 512MB modules.

So far u-boot was able to detect the RAM size dynamically. In order to
do so it uses following code in arch/arm/cpu/armv7/am33xx/emif4.c:

int dram_init(void)
{

#ifndef CONFIG_SKIP_LOWLEVEL_INIT
        sdram_init();
#endif

        /* dram_init must store complete ramsize in gd->ram_size */
        gd->ram_size = get_ram_size(
                        (void *)CONFIG_SYS_SDRAM_BASE,
                        CONFIG_MAX_RAM_BANK_SIZE);
        return 0;
}

void dram_init_banksize(void)
{
        gd->bd->bi_dram[0].start = CONFIG_SYS_SDRAM_BASE;
        gd->bd->bi_dram[0].size = gd->ram_size;
}

This peace of code will be excuted in u-boot.img (not in MLO).

In Barebox we have get_ram_size(), that provides real RAM size and
am335x_sdram_size(), that returns RAM controller settings. So far DDR
controler will be configured for 512MB regardless of the module. Hence
the return value from am335x_sdram_size() cannot be used for crating
ram0 node.

What were the best way to provide get_ram_size() from lowlevel.c to
board.c, where I would invoke:
arm_add_mem_device("ram0", 0x80000000, sdram_size);

[1] http://lists.infradead.org/pipermail/barebox/2016-May/027224.html

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
