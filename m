Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcQT9-0004dX-83
 for barebox@lists.infradead.org; Wed, 15 May 2013 01:25:28 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1UcQSl-0003VJ-Ie
 for barebox@lists.infradead.org; Wed, 15 May 2013 03:25:03 +0200
Received: from 54694212.cm-12-2b.dynamic.ziggo.nl ([84.105.66.18])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Wed, 15 May 2013 03:25:03 +0200
Received: from steven.romme by 54694212.cm-12-2b.dynamic.ziggo.nl with local
 (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Wed, 15 May 2013 03:25:03 +0200
From: Steven Romme <steven.romme@gmail.com>
Date: Wed, 15 May 2013 01:22:05 +0000 (UTC)
Message-ID: <loom.20130515T031258-287@post.gmane.org>
Mime-Version: 1.0
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
Subject: AT91 bypass BMS pin = 0 change low level boot loader
To: barebox@lists.infradead.org

Dear Jean-Christophe

We have a problem that our AT91 board will not start from internal 
ROM because the BMS pin is not 
connected to 3.3 V. (BMS=0)

Since the chip is a BGA and the BMS pin is not connected to the outside 
of the PCB we cannot change 
the hardware setting making the BMS pin =1

We would like to know if it is possible to overwrite the low level boot program 
that senses the state of the BMS pin and choose to run the bootrom 
from the internal Rom
 or will try to boot from external flash.

I would appreciate your thoughts because we have a large series 
with this same problem already built.

Regards,

Steven Romme


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
