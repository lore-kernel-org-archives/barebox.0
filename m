Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y9Acx-0007TX-5I
 for barebox@lists.infradead.org; Thu, 08 Jan 2015 10:47:44 +0000
Date: Thu, 08 Jan 2015 19:47:16 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Message-Id: <20150108194716.6CF6.AA925319@jp.panasonic.com>
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
Subject: [Question] How was zedboard lowlevel written?
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Steffen Trumtrar,

I am seeing arch/arm/boards/avnet-zedboard/board.c
written by you.

Is this file equivalent to ps7_init.c spit by Xilinx tool?
Or did you write it by hand from scratch ? (I doubt it.)


I have ZC706, another Zynq board.
If I could port barebox to this board, that would be great!
But I am just worndering whether I could get your advice about
how to create the lowlevel file.


Best Regards
Masahiro Yamada


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
