Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pz0-f49.google.com ([209.85.210.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T4ujJ-0006yy-SP
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 14:19:22 +0000
Received: by dajq27 with SMTP id q27so1006112daj.36
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 07:19:19 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 24 Aug 2012 19:49:18 +0530
Message-ID: <CAEhpT-XD0M3hrmxANPKt2BsgFhEtdFfA4HXenqty1QGLdaeS5w@mail.gmail.com>
From: Calvin Johnson <linux.cj@gmail.com>
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
Subject: Is there any way to dump more than 0x100 bytes from nand flash?
To: barebox@lists.infradead.org

Hi,

In U-Boot there is "nand dump <address>" command which is very useful
to check the contents of the NAND page and OOB area.

I tried searching for an alternative in Barebox, and found that we can
use some thing like "md -b -s /dev/nand0.barebox.bb". But this will
dump only 0x100 bytes. In order to increase the size, I need to
compile again.

Is there any way to dump more bytes from the NAND flash and from
different blocks/pages?

How are the experts working with this?

Thanks for your help,
Calvin

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
