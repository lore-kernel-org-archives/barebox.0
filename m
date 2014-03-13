Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOCUz-0007So-8f
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 20:45:06 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1WOCUU-0005Yc-Op
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 21:44:34 +0100
Received: from static-82-85-234-51.clienti.tiscali.it ([82.85.234.51])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Thu, 13 Mar 2014 21:44:34 +0100
Received: from cristiano_dealti by static-82-85-234-51.clienti.tiscali.it with
 local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Thu, 13 Mar 2014 21:44:34 +0100
From: Cristiano De Alti <cristiano_dealti@hotmail.com>
Date: Thu, 13 Mar 2014 20:44:08 +0000 (UTC)
Message-ID: <loom.20140313T212720-896@post.gmane.org>
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
Subject: i.MX21 ADS NAND flash bad blocks scan. Barebox vs Linux
To: barebox@lists.infradead.org

Hi,
  I'm probably posting to the wrong list since this is Linux issue.
I'm still trying to revive this old board.

This board has a 64MBi Samsung NAND flash that is detected both by Barebox
(recent snapshot) and Linux 3.4.77.

The issue is that, while the bad blocks scan takes a negligible time on
Barebox, it takes 10 minutes to complete on Linux.
They both detect block 0 as a bad block. This is strange since it is
guaranteed to be good by the manufacturer but I've read the OOB data with
barebox and it's marked ad bad. I found this board in the lab and don't know
how it was used before.

Barebox code, nand_imx.c, and Linux code, mxc_nand.c, are similar but not
identical of course. I also think that Linux code was contributed by
Pengutronix so this is the reason I'm asking here.

I've enabled debug statements in Linux code and added my own statements.
As said, scan completes, everything looks OK but it is very slow.

Maybe someone has an idea.

Ciao




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
