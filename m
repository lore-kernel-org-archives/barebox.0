Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx8-out.webonline.biz ([41.86.105.118]
 helo=assp01.webonline.biz)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VU14z-0000zi-M4
 for barebox@lists.infradead.org; Wed, 09 Oct 2013 21:14:02 +0000
Received: from ASSP.nospam (localhost.localdomain [127.0.0.1])
 by assp01.webonline.biz (Postfix) with ESMTP id CEF693A0BE
 for <barebox@lists.infradead.org>; Wed,  9 Oct 2013 18:02:02 +0200 (SAST)
Date: Wed, 09 Oct 2013 09:01:46 -0700
From: Ivor Kruger <ivor@veriline.co.za>
Message-ID: <CE7ACBD7.8CDF%ivor@veriline.co.za>
In-Reply-To: <CE7ACB03.8CDD%ivor@veriline.co.za>
Mime-version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Adding new GPIO device/driver to Barebox
To: barebox@lists.infradead.org

I wish to add a new device to barebox (in fact, quite a few but lets just
look at one). I am a newbie to barebox but very comfortable with C.

The device is a TCA9555 GPIO expander on the I2C bus. The device is
probably covered by the linux driver gpio_pca953x.c so I will go ahead and
just add the pca953x device/driver pair or now. I am trying to sort out
the process of adding a driver at the moment and not so much the exact
details of the device/driver.

So the steps I took to do this was:

1. Copy the gpio_pca953x.c file to the barebox driver/gpio directory
2. Copy the pca953x.h file to the barebox include directory.
3. I then edited the .c file to fall in line with the barebox format
(looked at some other files as examples)
4. I edited the kConfig in the barebox/drivers/gpio directory to add the
option to select this device
5. I edited the makefile to include this file.
6. Changed the board.c file to load this device on the i2c bus

Then I used "ptxdist menuconfig barebox" to enable this device which is
now listed in the menu under drivers/config as expected.
Did the "ptxdist go" and checked the output BUT the file is not compiled.
I sort of expected it to try and compile and possible give a load of
errors=8A.but it did not even try to compile.

Clearly I am missing a step that is so obvious that it is not mentioned
anywhere.

Can someone please point me in the right direction?

Thanks in advance






_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
