Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx009.vodafonemail.xion.oxcs.net ([153.92.174.39])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxBeP-0005DD-87
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 12:41:20 +0000
Received: from vsmx002.vodafonemail.xion.oxcs.net (unknown [192.168.75.192])
 by mta-6-out.mta.xion.oxcs.net (Postfix) with ESMTP id 2CA37D9B09C
 for <barebox@lists.infradead.org>; Wed, 27 Sep 2017 12:40:45 +0000 (UTC)
Received: from null (app-47.app.xion.oxcs.net [10.10.1.47])
 by mta-6-out.mta.xion.oxcs.net (Postfix) with ESMTPA id 1464E19AC20
 for <barebox@lists.infradead.org>; Wed, 27 Sep 2017 12:40:43 +0000 (UTC)
Date: Wed, 27 Sep 2017 14:40:42 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <73569970.96767.1506516042956@mail.vodafone.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox fb console on an EFI system
To: barebox@lists.infradead.org

Hi,

I'm working on an EFI embedded system, actually a standard PC, with a
display and a USB keyboard connected to it.

The bootloader I'm using is a barebox 2017.09.0 configured with
'arch/x86/configs/efi_defconfig'.

What I notice is that if both config options:

FRAMEBUFFER_CONSOLE and DRIVER_VIDEO_EFI_GOP

are enabled then, at runtime, I see two video consoles at the same time
on the display: one console takes the whole display area, the other is smaller.

If I just activate one of the previous options or if I disable both then I just see
the smaller console on the display.

Moreover, if I disable the option

 DRIVER_SERIAL_EFI_STDIO

then I just see the 'bigger' console, as I want to, but unfortunately the
keyboard does not work anymore.

I think here there is some unwanted interaction at play.

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
