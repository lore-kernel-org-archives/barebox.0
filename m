Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f47.google.com ([209.85.160.47])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEqq4-0002Ku-8g
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 00:43:41 +0000
Received: by mail-pb0-f47.google.com with SMTP id rp2so3116010pbb.20
 for <barebox@lists.infradead.org>; Sun, 10 Mar 2013 17:43:38 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 11 Mar 2013 01:43:38 +0100
Message-ID: <CAAMcf8DGrgDQrOxJNe+mYoQ8R+3JF8FqW-V4HbA_a8+kFWd0Fg@mail.gmail.com>
From: vj <vicencb@gmail.com>
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
Subject: Question about OMAP4 boot priorities
To: barebox@lists.infradead.org

Hello,
I'm experimenting with a tablet with an OMAP4460 SoC. It's not a
development board with easy access to the sys_boot pins.
It's factory defaults for sys_boot is 0x36 which defines a boot
priority as follows:
 1:MMC2(1)
 2:USB(1)
 3:UART
 4:MMC1
scholbert from xda-developers identified some of the sys_boot pins:
http://forum.xda-developers.com/attachment.php?attachmentid=1062421&d=1337087327
And now the tablet is modified with sys_boot = 0x16
 1:USB(1)
 2:UART
 3:MMC1
 4:MMC2(1)
To check the modification:
	printf("sys_boot = 0x%08X\n", readl(0x4A0022C4));
	sys_boot = 0x00000B16
Which confirms the modification is correct.
for more information on this register see Table 18-178. CONTROL_STATUS
on OMAP4460_1.x_TRM_vX

Now the tablet has no cables connected (nor serial, nor usb), so what
I expect is:
 1) The SoC will detect there is no usb cable connected and will skip
the 3 seconds timeout
 2) The SoC will try to boot over serial port and will abort after a
300 ms timeout
 3) A micro SD-card is inserted and is connected to the MMC1
controller so the SoC will detect and boot it.
What really happens:
 1) Don't know...
 2) ...
 n) After less than a second MMC2(1) is booted.

The contents of the SD-card are correct as I could make it boot on
warm reset modifying accordingly the SAR memory.

So the question is: why the SoC does not behave as expected?
Has any body tried this? Does anybody has a development board in which
testing this is easy? in such case, works?

Thank you all,
  Vicente.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
