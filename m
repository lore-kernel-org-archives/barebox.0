Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x234.google.com ([2607:f8b0:4002:c01::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WnVdY-0000nC-Hq
 for barebox@lists.infradead.org; Thu, 22 May 2014 16:14:33 +0000
Received: by mail-yh0-f52.google.com with SMTP id z6so3159182yhz.11
 for <barebox@lists.infradead.org>; Thu, 22 May 2014 09:14:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAOpc7mEHjVJj3Ji+fhDOjShhOqQk108=ipoQiJzQkvAS0Ghfxg@mail.gmail.com>
References: <CAOpc7mEUPrZtvd6uVApfcs4Wap42EhxLzGiD=8GaJWW8an8wkQ@mail.gmail.com>
 <20140513100044.GO5858@pengutronix.de>
 <CAOpc7mFPDrfWRW3+kP5=EcPvzGtPdx++ac1NrvNz=qaLR2xN7w@mail.gmail.com>
 <20140513102406.GP5858@pengutronix.de>
 <CAOpc7mEHjVJj3Ji+fhDOjShhOqQk108=ipoQiJzQkvAS0Ghfxg@mail.gmail.com>
Date: Thu, 22 May 2014 18:14:09 +0200
Message-ID: <CAOpc7mGaNOK5=vbXYsF=2J0upMKVsHaB-sFdFeMKgL4Leha0jg@mail.gmail.com>
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
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Just to keep you informed:

I can now erase my n25q512 (JEDEC 20ba20) from Linux. To do this, I
applied the SPI-NOR patches from
http://git.infradead.org/l2-mtd.git/shortlog/refs/heads/spinor (from
tag 3.15-rc1 to HEAD). On top of it, I applied
http://patchwork.ozlabs.org/patch/341355/

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
