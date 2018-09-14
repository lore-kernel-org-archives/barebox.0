Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tf.think-future.de ([193.7.177.246] helo=think-future.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g0vjM-0002on-88
 for barebox@lists.infradead.org; Fri, 14 Sep 2018 21:34:26 +0000
From: perachet7@gmail.com
Date: Fri, 14 Sep 2018 23:33:55 +0200
Message-Id: <2202533.3BPSuiAnXu@think-future.de>
In-Reply-To: <20180913123746.GA18653@think-future.de>
References: <1597963.4YffofffW7@think-future.de>
 <20180913123746.GA18653@think-future.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: perachet7@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: rk3188 (radxa rock pro) boot failure w/ barebox 2018-04 and later
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hey Sam,

Thanks for your reply.

First, there was a glitch while bisecting the thing. After all it was this 
commit:

  first bad commit: [f382224173ebf8a7fce42cf09179b5f6bc7dc6c9] ARM: scroll 
past image end without ld_var

git log f382224173ebf8a7fce42cf09179b5f6bc7dc6c9
commit f382224173ebf8a7fce42cf09179b5f6bc7dc6c9 (refs/bisect/bad)
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Tue Mar 13 08:26:21 2018 +0100

    ARM: scroll past image end without ld_var
    
    ld_var is going to be removed, cope without it. In the PBL image
    we want to get the location after the binary to the place where
    the compressed image is located. To do this Put a variable at
    the very end of the binary, get it's location and add an offset.
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

triggering the boot failure. 

Note aside: Ironically, the related code is amongst other lines one that 
matches your description about get_runtime_offset().

BUT..

Turns out, the toolchain wasn't playing along. Using the standard cross-arm-
eabihf toolchain

  arm-linux-gnueabihf-gcc (Ubuntu/Linaro 7.3.0-16ubuntu3) 7.3.0

the above commit triggers this Does-Not-Boot situation. It would just hang 
once DDR is initialized. 


However, using the latest OSELAS toolchain provided by pengutronix

  arm-v7m-eabi-gcc (OSELAS.Toolchain-2018.02.0 7-20180201) 7.3.1 20180201

the boot failure just does not happen and bb v2018.09.0 is booting the rk3188 
quite happily:

DDR Version 1.04 20140217
In
DDR3
300MHz
Bus Width=32 Col=10 Bank=8 Row=15 CS=2 Die Bus-Width=16 Size=2048MB
Memory OK
OUT


barebox 2018.09.0 #39 Thu Sep 13 16:53:12 CEST 2018


Board: Radxa Rock
clk_register clk xin24m is already registered, skipping!
arc-emac 10204000.ethernet: ARC EMAC detected with id: 0x7fd02
mdio_bus: miibus0: probed
dw_mmc 10214000.dwmmc: registered as 10214000.dwmmc
mshc1: detected SD card version 1.0
mshc1: registered mshc1
netconsole: registered as netconsole-1
i2c-gpio i2c-gpio0: using pins 58 (SDA) and 59 (SCL)
malloc space: 0x9fefd660 -> 0xdfdfacbf (size 1023 MiB)
gpio-leds.6: probe permanently deferred
envfs: no envfs (magic mismatch) - envfs never written?
running /env/bin/init...

Hit any key to stop autoboot:    3

So, after all, _almost_ everything is fine.

barebox@Radxa Rock:/ saveenv 
saving environment
ERROR: dw_mmc 10214000.dwmmc: dwmci_write_data_pio: FIFO overflow timeout
ERROR: dw_mmc 10214000.dwmmc: dwmci_write_data_pio: FIFO flush timeout

One less to go, yet one to go.

cheers

S




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
