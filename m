Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x22e.google.com ([2607:f8b0:400d:c09::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5vYS-0006RX-KB
 for barebox@lists.infradead.org; Thu, 26 May 2016 13:42:29 +0000
Received: by mail-qk0-x22e.google.com with SMTP id y126so58024216qke.1
 for <barebox@lists.infradead.org>; Thu, 26 May 2016 06:42:06 -0700 (PDT)
MIME-Version: 1.0
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Thu, 26 May 2016 15:41:46 +0200
Message-ID: <CAGm1_ktMpwYPfhz2_baRt-nX+ACArVX8ESfgjY1_NzZqurnjiA@mail.gmail.com>
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
Subject: am335x questions
To: barebox <barebox@lists.infradead.org>

I'm porting an am335x based board. We have systems either with 256MB
or 512MB RAM. Currently I'm using following code:

ENTRY_FUNCTION(start_am33xx_baltos_sdram, r0, r1, r2)
{
        uint32_t sdram_size;
        void *fdt;

        sdram_size = SZ_256M;
        fdt = __dtb_am335x_baltos_minimal_start;

        fdt -= get_runtime_offset();

        barebox_arm_entry(0x80000000, sdram_size, fdt);
}

This way I always have 256MB "detected" regardless of the used
hardware. Is it possible to let Barebox autodetect RAM size like it is
done in U-Boot?

Another question concerns booting medium. Whether I start from NAND or
MMC I always want to be able to boot from MMC too. Now, if I boot
Barebox from NAND I can see following in devinfo output:

 `-- 48060000.mmc
         `-- mmc0

How can I make system enumerate MMC partition, so that I can mount
them? "detect mmc0" doesn't help.

When booting completely from MMC, mmco will be enumerated.

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
