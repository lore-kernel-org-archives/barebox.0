Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfroC-0008Bk-HS
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 12:41:09 +0000
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
 ([99.253.156.71]:39214 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1TfroA-00015y-OA
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 07:41:06 -0500
Date: Tue, 4 Dec 2012 07:41:04 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1212040735210.5342@oneiric>
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
Subject: confused about "__PBL__" macro and whether it's actually used
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  perusing arch/arm/mach-omap/omap3_generic.c and i noticed that the
initcall "omap3_gpio_init" is apparently invoked by the TI X-loader,
even though it *appears* to be protected by the macro:

#ifndef __PBL__
static int omap3_gpio_init(void)
{
... snip ...
}
coredevice_initcall(omap3_gpio_init);
#endif

  i assume __PBL__ is meant to refer to the "primary bootloader" --
that would be X-loader -- which suggests that that initcall shouldn't
be invoked by the X-loader as long as that macro is being defined
correctly.

  am i misunderstanding something here?  i'm going to check the
makefiles to see if i'm just confused.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
