Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x229.google.com ([2607:f8b0:4001:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yhdic-0000oW-Ki
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 12:44:03 +0000
Received: by igbqf9 with SMTP id qf9so42494041igb.1
 for <barebox@lists.infradead.org>; Mon, 13 Apr 2015 05:43:39 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 13 Apr 2015 05:43:39 -0700
Message-ID: <CAHQ1cqGVK7z-joRkPEWvswo4JDw6BgPxM9TNVgrsZAyN8cmqUg@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Booting Linux on Altera's socfpga
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi All,

I am trying to use Barebox on Terasic's SoCKit board and so far I've
had limited success.

My sequence of actions is the following:

1. Get zImage, device tree file and .rbf file from a pre-built image
available here:
http://www.rocketboards.org/foswiki/Documentation/ArrowSoCKITEvaluationBoard140LinuxGettingStarted

2. Boot into barebox

3. cp /boot/soc_system.rbf /dev/socfpga-fpga (This step initially
didn't work for me, so I had to make a change to the firmware driver
http://lists.infradead.org/pipermail/barebox/2015-April/023194.html)

4. global.linux.bootargs.base="console=ttyS0,115200"

5. global.bootm.oftree=/boot/soc_system.dtb

6. global.bootm.image=/boot/zImage

7. bootm

After the last step I and barebox jumps to the kernel code I don't see
any output on the serial at all.

I feel like I am missing something obvious, but I can't figure out
what it is. If anyone has had experience booting Linux using barebox
on aforementioned board I'd greatly appreciate to hear about how you
did it.

Thank you,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
