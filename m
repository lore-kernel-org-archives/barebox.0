Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([212.27.42.1])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmd5Y-0007Nl-05
 for barebox@lists.infradead.org; Wed, 21 Sep 2016 08:41:09 +0000
Received: from zimbra32-e6.priv.proxad.net (unknown [172.20.243.182])
 by smtp1-g21.free.fr (Postfix) with ESMTP id 096FDB00576
 for <barebox@lists.infradead.org>; Wed, 21 Sep 2016 10:40:43 +0200 (CEST)
Date: Wed, 21 Sep 2016 10:40:43 +0200 (CEST)
From: Eric Le Bihan <eric.le.bihan.dev@free.fr>
Message-ID: <220039379.350137727.1474447243380.JavaMail.root@zimbra32-e6.priv.proxad.net>
In-Reply-To: <122759075.350079920.1474446203319.JavaMail.root@zimbra32-e6.priv.proxad.net>
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
Subject: How to port brcmnand Linux driver?
To: barebox@lists.infradead.org

Hi!

I'm trying to port the brcmnand driver for Broadcom NAND controller from Linux.
This driver requires an update of the MTD headers in barebox, as they lack 
definitions for functions such as mtd_set_ooblayout().

What is the recommended strategy for this? Should I update the whole set of
headers and report the barebox specific changes (use of device_d, etc) or only
add the missing functions?

In general, when adding such driver, should the functions unsupported by barebox
(irq handling, memory barriers, etc) be stubbed or removed?

Best regards,

--
ELB

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
