Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x22b.google.com ([2607:f8b0:4002:c01::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X06Xw-0005XD-B2
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 10:04:48 +0000
Received: by mail-yh0-f43.google.com with SMTP id a41so1966724yho.2
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 03:04:25 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 26 Jun 2014 12:04:25 +0200
Message-ID: <CAOpc7mENrjdk-caJh3QA=S5_hdf21SCt_JNToQkx4p9qBnTPrg@mail.gmail.com>
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
Subject: Booting barebox on i.MX6 from SDCARD?
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi all,

In the Freescale i.MX6Q Reference manual they say in "8. System Boot"
near the end of "8.5.3.1 Expansion Device eFUSE configuration" that
the processor can load from SDCARD, but only up to 32 MB.

Did any one of you succeeded in booting barebox from SDCARD, maybe
with a trampoline code?  Or can the PBL do that? AFAIK U-Boot can boot
from sdcard, at least Boundary Devices have some web pages about this
(for Nitrogen/SabreLite) on their web page. Anyone already found out
how U-Boot does it?  I could think about whatever U-Boot uses to load
the "real" Barebox instead :-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
