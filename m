Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bPbiU-00022b-2E
 for barebox@lists.infradead.org; Tue, 19 Jul 2016 20:34:11 +0000
Date: Tue, 19 Jul 2016 22:31:49 +0200 (CEST)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <1468952131.496358501@f380.i.mail.ru>
Message-ID: <alpine.DEB.2.00.1607192230060.10923@blala.de>
References: <alpine.DEB.2.00.1607191912280.9957@blala.de>
 <1468952131.496358501@f380.i.mail.ru>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED;
 BOUNDARY="-598520180-2011066681-1468960309=:10923"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: mc13xxx: Define maximum SPI clock frequency global to driver
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---598520180-2011066681-1468960309=:10923
Content-Type: TEXT/PLAIN; charset="utf-8"
Content-Transfer-Encoding: 8bit



On Tue, 19 Jul 2016, Alexander Shiyan wrote:

> >Вторник, 19 июля 2016, 20:18 +03:00 от Alexander Kurz <akurz@blala.de>:
> >
> >Hi,
> >I just ran into a problem resulting from patch 6e18b3a48ee4
> >("mc13xxx: Define maximum SPI clock frequency global to driver").
> >
> >On a kindle2 board the SPI communication between an iMX31 and a MC13783 
> >won't work at 20MHz. Unfortunately both ICs are BGA mounted blocking any 
> >access with scope probes. Attempts to tweak the pad properties to
> >PAD_CTL_DRV_HIGH | PAD_CTL_SRE_FAST | PAD_CTL_100K_PU
> >did not solve the problem - anyway this is a battery powered device where
> >the original implementers took great care on long battery life,
> >e.g. PAD_CTL_DRV_HIGH should not be nessesary for PMIC control.
> >
> >I do not see any way to override the 20MHz bitrate from board code, and 
> >since the PMIC access is not time critical on an ebook-reader my choice
> >would be rather 200kHz.
> >
> >Is there any way to override the driver supplied default max_speed_hz?
> >If not, my proposal is to either
> >* revert this patch and let the board code choose frequency
> >or
> >* reduce the speed to some common acceptable rate, e.g. 6MHz are fine
> >
> >How was this solved with other SPI devices?
> 
> For me, the MC13783 with i.MX27 works fine with 20MHz.
> Anyway, you can change line in mc13xxx driver to:
> mc_dev->spi->max_speed_hz = mc_dev->spi->max_speed_hz ? : 20000000;
> So you can use struct spi_board_info field for specify exact frequency.
Perfect, this provides the default but provides the option to override it.
I'll send a patch for this,
thanks, Alexander
---598520180-2011066681-1468960309=:10923
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

---598520180-2011066681-1468960309=:10923--
