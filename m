Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMjyM-0003au-Nu
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 15:15:02 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMjyL-00054L-MA
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 10:14:57 -0500
Date: Mon, 21 Dec 2009 10:14:32 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912211009080.19016@localhost>
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
Subject: anyone object to my making some menuconfig options 1-touch selectable?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  for example, with sandbox, under "Drivers" submenu:

             serial drivers                  --->
             Network drivers                 --->
             SPI drivers                     --->
         [ ] I2C drivers                     --->
             flash drivers                   --->
         [ ] NAND support                    --->
         [ ] USB support                     --->
         [ ] USB gadget support              --->
         [ ] Video drivers                   --->


  note how some of the selections can be selected/deselected directly,
while others require you to go to the submenu to do it.  is there any
reason to not have *all* of them be 1-touch?  that means using a
"menuconfig" Kconfig directive, like this under drivers/i2c:

=====

menuconfig I2C
        bool "I2C drivers                   "

if I2C

config DRIVER_I2C_IMX
        bool "i.MX I2C Master driver"
        depends on ARCH_IMX

config DRIVER_I2C_MC13892
        bool "MC13892 a.k.a. PMIC driver"

config DRIVER_I2C_MC9SDZ60
        bool "MC9SDZ60 driver"

endif

=====

  thoughts?

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
