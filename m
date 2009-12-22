Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NN6GT-0004yq-Im
	for barebox@lists.infradead.org; Tue, 22 Dec 2009 15:03:13 +0000
Received: from cpe00142a336e11-cm001ac318e826.cpe.net.cable.rogers.com
	([174.113.191.234] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NN6GR-0000zE-Ow
	for barebox@lists.infradead.org; Tue, 22 Dec 2009 10:03:07 -0500
Date: Tue, 22 Dec 2009 10:02:40 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912221000250.4427@localhost>
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: which drivers subdirs should be automatically selected?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


drivers/Makefile:

obj-y   += net/
obj-y   += serial/
obj-y   += nand/
obj-y   += nor/
obj-y   += usb/
obj-$(CONFIG_SPI) += spi/
obj-$(CONFIG_I2C) += i2c/
obj-$(CONFIG_VIDEO) += video/


  is there a fundamental reason that some of those subdirs are
auto-selected, while others are based on a CONFIG variable?  asked
another way, are there some driver subdirs that are so fundamentally
required that they *should* be auto-selected, or should *everything*
be a user-selectable choice?  the above just seems slightly
inconsistent and non-obvious.

rday
--

========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
