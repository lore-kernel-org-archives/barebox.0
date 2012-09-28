Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1THbj7-0001RV-Ek
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 14:39:39 +0000
Message-ID: <5065B6A1.7060802@phytec.de>
Date: Fri, 28 Sep 2012 16:39:29 +0200
From: Teresa Gamez <t.gamez@phytec.de>
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
Subject: OMAP SPI adding inline functions
To: barebox@lists.infradead.org

Hello Jan,

I'm working on adding inline functions for omap devices to reduce the 
board code. I have noticed that the omap3_spi driver doesn't fit in the 
scheme. It uses the dev->id to set the master->bus_num. So I have to 
pass the argument here and can not use the DEVICE_ID_DYNAMIC define. Has 
that been intentional? Wouldn't it be better to pass this over 
platform_data like in the altera_spi driver does?
I allready noticed that it's done the same way in the kernel...


Sadly I'm on vacation next week so my patches have to wait.
And sorry for not having time to look at your lowlevel support of am335x.

Regards
Teresa


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
