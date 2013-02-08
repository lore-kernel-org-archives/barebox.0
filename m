Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U3pmL-0000uN-05
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 15:22:18 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 7BBA9BF0ED
 for <barebox@lists.infradead.org>; Sat,  9 Feb 2013 23:36:05 +0100 (CET)
Message-ID: <1360336929.3798.11.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Fri, 08 Feb 2013 16:22:09 +0100
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Subject: v2013.02.0 phyCORE-OMAP4 MLO to big
To: barebox@lists.infradead.org

Hi,
with the release v2013.02.0 the MLO gets so bit, that it eats the boot
information in the SRAM.

nm --size-sort 

...
00000630 D nand_flash_ids
000008c0 t mci_probe
00000c00 b gpio_desc
00001400 b files

If I remove  GPIOLIB from MLO it work again. Maybe setting MAX_FILES
down or find a dynamic way for the big arrays is a better solution.
Any Ideas?

Jan


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
