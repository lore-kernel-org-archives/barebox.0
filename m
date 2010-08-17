Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OlDDC-0005KC-1h
	for barebox@lists.infradead.org; Tue, 17 Aug 2010 03:51:42 +0000
Received: by yxf34 with SMTP id 34so2167285yxf.36
	for <barebox@lists.infradead.org>; Mon, 16 Aug 2010 20:51:40 -0700 (PDT)
Message-ID: <4C6A074A.4050606@gmail.com>
Date: Mon, 16 Aug 2010 22:51:38 -0500
From: Nishanth Menon <menon.nishanth@gmail.com>
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
Subject: omap3: omap3530_beagle_per_uart_defconfig broken
To: barebox@lists.infradead.org

Hi,
while just giving the omap3530 boot from internal sram a whirl, found that

commit 78104ae181f78d83664fdc7522eb632d9c3b2ec9
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Fri Apr 16 15:50:30 2010 +0200

     arm: reimplement startup code in C

     Lets translate the startup code to a language we all understand better.
     Tested on pcm038 (arm v5) and pcm043 (arm v6).

     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

broke the support for OMAP3530 internal boot capability -> it looks like 
many of the V7Dcache skip logic got dropped off in the patch. will try 
to fix it ahead.. reverting this commit helps the barebox master..

Regards,
Nishanth Menon

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
