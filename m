Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from blaine.gmane.org ([195.159.176.226])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSSQ-0000bf-Rn
 for barebox@lists.infradead.org; Mon, 06 Jan 2020 13:30:14 +0000
Received: from list by blaine.gmane.org with local (Exim 4.89)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1ioSSI-000saz-Jm
 for barebox@lists.infradead.org; Mon, 06 Jan 2020 14:30:02 +0100
From: Frederick Gotham <cauldwell.thomas@gmail.com>
Date: Mon, 6 Jan 2020 13:27:03 -0000 (UTC)
Message-ID: <XnsAB3C88D4289BBfgotham@195.159.176.226>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Watchdog Timer with x86 processor
To: barebox@lists.infradead.org


I have an embedded Linux project with an x86_64 CPU.

I'm looking through the Barebox documentation and it seems that there's a lot 
of support for ARM, but I'm trying to find something that will work with my 
Intel processor.

When I go into the "menuconfig", I see the following symbols:

    WATCHDOG
    RAVE_SP_WATCHDOG
    WATCHDOG_AR9344
    WATCHDOG_BCM2835
    WATCHDOG_DAVINCI
    WATCHDOG_DW
    WATCHDOG_IMX
    WATCHDOG_IMX_RESET_SOURCE
    WATCHDOG_JZ4740
    WATCHDOG_MXS28
    WATCHDOG_OMAP
    WATCHDOG_ORION
    WATCHDOG_POLLER   	

Right now the only one that I have enabled is:WATCHDOG. I think the Intel 
Watchdog timer is referred to as iTCO_wdt, but I don't see it in the above 
list.

Is it possible to use the Barebox bootloader with a watchdog timer on an x86 
CPU?

Frederick




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
