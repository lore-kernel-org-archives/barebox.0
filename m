Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.gw-instruments.de ([82.144.60.34]
 helo=redbean.intranet.gw-instruments.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVjzu-0003sW-PR
 for barebox@lists.infradead.org; Tue, 06 Nov 2012 14:19:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by redbean.intranet.gw-instruments.de (Postfix) with ESMTP id 8677D2E4A3
 for <barebox@lists.infradead.org>; Tue,  6 Nov 2012 14:49:06 +0100 (CET)
Date: Tue, 6 Nov 2012 14:49:06 +0100 (CET)
From: Peter Wippich <pewi@gw-instruments.de>
Message-ID: <alpine.LSU.2.00.1211061440560.27068@redbean.intranet.gw-instruments.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: TX53: Not Bootable from next tree
To: barebox@lists.infradead.org


Hi,

got the same problem here. Double checked Board Version (8030) and
that I have the right binary (compressed with flash header). After 
flashing and reset nothing happens....

Used default config tx53stk5_defconfig.

Swiched back to old u-boot for now.

Regards,

Peter


|       Peter Wippich                   Voice: +49 30 46776411          |
|       G&W Instruments GmbH            fax:   +49 30 46776419          |
|       Gustav-Meyer-Allee 25, Geb. 12  Email: pewi@gw-instruments.de   |
|       D-13355 Berlin  / Germany                                       |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
