Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bPYhe-0002Ts-N6
 for barebox@lists.infradead.org; Tue, 19 Jul 2016 17:21:09 +0000
Date: Tue, 19 Jul 2016 19:18:35 +0200 (CEST)
From: Alexander Kurz <akurz@blala.de>
Message-ID: <alpine.DEB.2.00.1607191912280.9957@blala.de>
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
Subject: mc13xxx: Define maximum SPI clock frequency global to driver
To: Alexander Shiyan <shc_work@mail.ru>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,
I just ran into a problem resulting from patch 6e18b3a48ee4
("mc13xxx: Define maximum SPI clock frequency global to driver").

On a kindle2 board the SPI communication between an iMX31 and a MC13783 
won't work at 20MHz. Unfortunately both ICs are BGA mounted blocking any 
access with scope probes. Attempts to tweak the pad properties to
PAD_CTL_DRV_HIGH | PAD_CTL_SRE_FAST | PAD_CTL_100K_PU
did not solve the problem - anyway this is a battery powered device where
the original implementers took great care on long battery life,
e.g. PAD_CTL_DRV_HIGH should not be nessesary for PMIC control.

I do not see any way to override the 20MHz bitrate from board code, and 
since the PMIC access is not time critical on an ebook-reader my choice
would be rather 200kHz.

Is there any way to override the driver supplied default max_speed_hz?
If not, my proposal is to either
* revert this patch and let the board code choose frequency
or
* reduce the speed to some common acceptable rate, e.g. 6MHz are fine

How was this solved with other SPI devices?

Cheers, Alexander


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
