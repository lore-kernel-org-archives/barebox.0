Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tf.think-future.de ([193.7.177.246] helo=think-future.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1vmm-0003bx-JJ
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 15:50:10 +0000
From: perachet7@gmail.com
Date: Mon, 17 Sep 2018 17:49:45 +0200
Message-Id: <2187255.QEutPsQ0vX@think-future.de>
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
Subject: RK3188 radxa-rock saveenv cmd not working
To: barebox@lists.infradead.org

Hi,

At boot time the following message appears:

[...]
envfs: no envfs (magic mismatch) - envfs never written?
[...]

When trying to save the (pristine or modified) bb environment using 'saveenv' 
on latest bb and RK31889 radxa-rock, this happens:

barebox@Radxa Rock:/ saveenv
saving environment
ERROR: dw_mmc 10214000.dwmmc: dwmci_write_data_pio: FIFO overflow timeout
ERROR: dw_mmc 10214000.dwmmc: dwmci_write_data_pio: FIFO flush timeout


Result: It is impossible to write the saveenv, pristine or not.



Boot log:
[...]
DDR Version 1.04 20140217
In
DDR3
300MHz
Bus Width=32 Col=10 Bank=8 Row=15 CS=2 Die Bus-Width=16 Size=2048MB
Memory OK
OUT


barebox 2018.09.0-dirty #44 Mon Sep 17 15:22:34 CEST 2018


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

Hit any key to stop autoboot:    0
booting 'mshc1'
mount: No such file or directory
ext4 ext40: EXT2 rev 1, inode_size 128, descriptor size 32
mounted /dev/mshc1.0 on /mnt/mshc1.0

Loading ARM Linux zImage '/mnt/mshc1.0/zImage'
[...]

cheers

S.

-- 




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
