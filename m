Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from doppler.thel33t.co.uk ([185.153.207.61])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkUaY-0007Hf-Fo
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 13:21:24 +0000
Received: from doppler.thel33t.co.uk (localhost [127.0.0.1])
 by doppler.thel33t.co.uk (Postfix) with ESMTP id 80FCF20DB2
 for <barebox@lists.infradead.org>; Tue, 31 Jul 2018 14:21:04 +0100 (BST)
MIME-Version: 1.0
Date: Tue, 31 Jul 2018 14:21:04 +0100
From: Leigh Brown <leigh@solinno.co.uk>
Message-ID: <844001fa78a52f48a3cb1e9189831456@solinno.co.uk>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Help requested with Barebox on Globalscale Mirabox
To: Barebox <barebox@lists.infradead.org>

Hello,

I'm trying to get Barebox working on my Globalscale Mirabox, and I'm 
struggling.

I have performed the following:

1. git clone git://git.pengutronix.de/barebox
2. cd into barebox and copy extracted binary.0 into 
arch/arm/boards/globalscale-mirabox/
3. Edit arch/arm/boards/globalscale-mirabox/kwbimage.cfg and change 
BOOT_FROM from nand to uart
3. make ARCH=arm mvebu_defconfig
4. make ARCH=arm menuconfig -> then disable all boards except Mirabox

Finally, I used kwboot to boot the image as shown below:

$ scripts/kwboot -t -b images/barebox-globalscale-mirabox.img -B 115200 
/dev/ttyUSB0
Sending boot message. Please reboot the target...
BootROM 1.08
Pattern detected on UART0 (Boot)

Got expected NAKs
Sending boot image...
   0 % 
[S.....................................................................]
   2 % 
[......................................................................]
   4 % 
[......................................................................]
   7 % 
[......................................................................]
   9 % 
[......................................................................]
  11 % [..................................DDR3 Training Sequence - Ver 
2.1.6
DDR3 Training Sequence - Number of DIMMs detected: 1
DDR3 Training Sequence - Ended Successfully
....................................]
  14 % 
[......................................................................]
  16 % 
[......................................................................]
  19 % 
[......................................................................]
  21 % 
[......................................................................]
  23 % 
[......................................................................]
  26 % 
[......................................................................]
  28 % 
[......................................................................]
  31 % 
[......................................................................]
  33 % 
[......................................................................]
  35 % 
[......................................................................]
  38 % 
[......................................................................]
  40 % 
[......................................................................]
  43 % 
[......................................................................]
  45 % 
[......................................................................]
  47 % 
[......................................................................]
  50 % 
[......................................................................]
  52 % 
[......................................................................]
  54 % 
[......................................................................]
  57 % 
[......................................................................]
  59 % 
[......................................................................]
  62 % 
[......................................................................]
  64 % 
[......................................................................]
  66 % 
[......................................................................]
  69 % 
[......................................................................]
  71 % 
[......................................................................]
  74 % 
[......................................................................]
  76 % 
[......................................................................]
  78 % 
[......................................................................]
  81 % 
[......................................................................]
  83 % 
[......................................................................]
  86 % 
[......................................................................]
  88 % 
[......................................................................]
  90 % 
[......................................................................]
  93 % 
[......................................................................]
  95 % 
[......................................................................]
  98 % [............................................................]
[Type Ctrl-\ + c to quit]


..and that's it.

Have I missed any steps?  Any help would be greatly appreciated.

Regards,

Leigh.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
