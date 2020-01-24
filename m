Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from submit-2.e-mind.com ([188.94.192.46])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0wr-0006Zg-Ky
 for barebox@lists.infradead.org; Fri, 24 Jan 2020 15:32:43 +0000
Received: from localhost (unknown [127.0.0.1])
 by submit-2.e-mind.com (Postfix) with ESMTP id 5F3ED8410F2
 for <barebox@lists.infradead.org>; Fri, 24 Jan 2020 15:32:33 +0000 (UTC)
Received: from submit-2.e-mind.com ([127.0.0.1])
 by localhost (submit-2.e-mind.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o1R6CuLs0hlq for <barebox@lists.infradead.org>;
 Fri, 24 Jan 2020 16:32:33 +0100 (CET)
Received: from qmail.e-mind.com (qmail34.e-mind.com [188.94.192.34])
 by submit-2.e-mind.com (Postfix) with SMTP id 3E45083E7BC
 for <barebox@lists.infradead.org>; Fri, 24 Jan 2020 16:32:31 +0100 (CET)
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <5f02d95b-418e-f0c0-68c6-29d7d9ab0db6@eurek.it>
Date: Fri, 24 Jan 2020 16:32:28 +0100
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Barebox 2020.01.0 and Device Tree from Linux Kernel 5.4
To: barebox@lists.infradead.org

Hello list!

I was wondering if the device tree from (latest) Linux Kernel can be 
used when building Barebox 2020.01.0 for iMX6 compatible custom board.

For sure the include path and other stuff are quite different (kernel 
and barebox), so I am pretty sure it will fail to build with some sort 
of "foreign" device-tree. Another issue, will be the drivers to have 
full access from Barebox-Point-Of-View. If the device-tree properties 
and compatible strings are quite different, Barebox will fail to 
activating/probing/using the internal driver.

So I am asking:
There is a "official" way to manage those differencies?

Am I forced to use TWO device-tree dts files (almost identical each 
other) ???

It seems it is like re-inventing the wheel...

I think this procedure can be used with ALL supported boards present in 
barebox source tree.

Actually I am using a slightly modified device-tree for my boards from 
kernel, then adapted to be compiled for Barebox.
Some nodes are "disabled" by default as status, so Barebox will activate 
them when probing the real-hardware.

I would like to keep my code to activate/deactivate device-tree drivers, 
but without modifying the Kernel device-tree each time when I do a 
Kernel update.

Any hint will be very accepted.

Regards,
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
