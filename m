Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-x22e.google.com ([2607:f8b0:400d:c01::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4G6d-0006XM-F9
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 21:05:47 +0000
Received: by mail-qc0-f174.google.com with SMTP id x13so4276041qcv.5
 for <barebox@lists.infradead.org>; Mon, 07 Jul 2014 14:05:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140707070610.GA11833@omega>
References: <alpine.LFD.2.11.1407050643590.10085@localhost>
 <20140707065345.GI23235@pengutronix.de>
 <20140707070610.GA11833@omega>
Date: Mon, 7 Jul 2014 23:05:23 +0200
Message-ID: <CAOpc7mEzj84nhBaZ8426debg6b-rOzOXaWRunSrsHcx2U3257g@mail.gmail.com>
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
Subject: Re: does beaglebone black device tree need to specify amount of eMMC
 flash?
To: Alexander Aring <alex.aring@gmail.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

> Advantage
>  - maybe avoid some bad connections (never expired by using sd cards)

This is the k.o. criteria in the company I work for SDCARDs. The
devices run in high vibration / shock targets (e.g. mining), and you
really wouldn't want to have an SDCARD there. You, you could probably
glue the SDCARD with a tape, but this is only a kludge. And eventually
the glue will corrode, or stop being glue ...

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
