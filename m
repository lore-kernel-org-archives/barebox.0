Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TfvW3-0000E7-RO
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 16:38:41 +0000
Received: from mail413.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 11A1E105407B
 for <barebox@lists.infradead.org>; Tue,  4 Dec 2012 17:46:50 +0100 (CET)
Date: Tue, 4 Dec 2012 17:36:48 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121204163648.GH8327@game.jcrosoft.org>
References: <alpine.DEB.2.02.1212040735210.5342@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1212040735210.5342@oneiric>
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
Subject: Re: confused about "__PBL__" macro and whether it's actually used
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On 07:41 Tue 04 Dec     , Robert P. J. Day wrote:
> 
>   perusing arch/arm/mach-omap/omap3_generic.c and i noticed that the
> initcall "omap3_gpio_init" is apparently invoked by the TI X-loader,
> even though it *appears* to be protected by the macro:
> 
> #ifndef __PBL__
> static int omap3_gpio_init(void)
> {
> ... snip ...
> }
> coredevice_initcall(omap3_gpio_init);
> #endif
> 
>   i assume __PBL__ is meant to refer to the "primary bootloader" --
> that would be X-loader -- which suggests that that initcall shouldn't
> be invoked by the X-loader as long as that macro is being defined
> correctly.
> 
>   am i misunderstanding something here?  i'm going to check the
> makefiles to see if i'm just confused.
no this means pre-bootloader aso this is in zbarebox.bin case only

for the code that contain the decompressor

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
