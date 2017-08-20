Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:910:1314:ffff::1] (helo=gnutoo.privatedns.org)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1djXjI-0004qc-BI
 for barebox@lists.infradead.org; Sun, 20 Aug 2017 21:26:23 +0000
Received: from localhost ([::1] helo=second-laptop.lan)
 by gnutoo.privatedns.org with esmtp (Exim 4.89)
 (envelope-from <GNUtoo@no-log.org>) id 1djXhe-0000Hp-1E
 for barebox@lists.infradead.org; Sun, 20 Aug 2017 23:24:14 +0200
From: Denis 'GNUtoo' Carikli <GNUtoo@no-log.org>
Date: Sun, 20 Aug 2017 23:22:52 +0200
Message-Id: <20170820212253.27670-1-GNUtoo@no-log.org>
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
Subject: Request for testing on beagleboard
To: barebox@lists.infradead.org

Hi,

I couldn't test this patch on real hardware as I don't have a
BeagleBoard.

I want to port Barebox to the bug 2.0 from Buglabs, and I noticed that
the code for the BeagleBoard work on it despite the hardware
differences[1]. Since I'd prefer to use the devicetree to do the
port.

References:
-----------
[1]The RAM size is different, but the uart3 pads aren't reconfigurable
on the OMAP3.

Denis.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
