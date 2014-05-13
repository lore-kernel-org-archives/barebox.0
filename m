Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-f179.google.com ([209.85.160.179])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkB0L-0003Dj-Fl
 for barebox@lists.infradead.org; Tue, 13 May 2014 11:36:17 +0000
Received: by mail-yk0-f179.google.com with SMTP id 19so136223ykq.38
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 04:35:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140513102406.GP5858@pengutronix.de>
References: <CAOpc7mEUPrZtvd6uVApfcs4Wap42EhxLzGiD=8GaJWW8an8wkQ@mail.gmail.com>
 <20140513100044.GO5858@pengutronix.de>
 <CAOpc7mFPDrfWRW3+kP5=EcPvzGtPdx++ac1NrvNz=qaLR2xN7w@mail.gmail.com>
 <20140513102406.GP5858@pengutronix.de>
Date: Tue, 13 May 2014 13:35:50 +0200
Message-ID: <CAOpc7mEHjVJj3Ji+fhDOjShhOqQk108=ipoQiJzQkvAS0Ghfxg@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: Question about SPI NOR flash
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hmm, this patch waits for both RDSR bitmask 0x01 not set AND for RDFSR
bitmask 0x80 set. I looked at u-boot, which does either one or the
other, depending on an E_FSR flag in the probe data.

However, still no joice (althought a printk revealed that the FSR
ready bit was set).

The NOR flash is actually a dual-die chip, so I'm now looking into
u-boot's CONFIG_SF_DUAL_FLASH code ...

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
