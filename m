Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x22a.google.com ([2607:f8b0:4003:c06::22a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fflDo-0000bm-OV
 for barebox@lists.infradead.org; Wed, 18 Jul 2018 12:06:22 +0000
Received: by mail-oi0-x22a.google.com with SMTP id d189-v6so8278227oib.6
 for <barebox@lists.infradead.org>; Wed, 18 Jul 2018 05:06:10 -0700 (PDT)
MIME-Version: 1.0
From: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Date: Wed, 18 Jul 2018 14:05:58 +0200
Message-ID: <CAEp+FuAeZykr4wa-BK-zdTKUPH=kikkeZWLHHpycQ9uRJFkPug@mail.gmail.com>
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
Subject: MFGtools support in barebox
To: barebox@lists.infradead.org

Hi ,



 I would like to flash a barebox image on NAND for a Phytec imx6ul
evk board using MFGTools.
     I have added support for UTP protocol in kernel image so commands
could be "pushed" using MFGtools app from Windows.
     But obviously I cannot push barebox_update command to Linux.
     So I think I have two options:

1) porting barebox_update command to Linux which I do not find it so
easy. I am already working on it
2) adding UTP support in barebox so I could just load the barebox
image in RAM using MFGtools, there a utp device node would be created
and then I could push barebox specific commands directly from
MFGtools.
      I have added UTP support in linux USB gadget code but I see
barebox USB gadget code is quite different and not all functionality
are in place so I also struggle a bit of porint gUTP patches from
Linux to barebox.
     Does anybody have any experience with this topic or coud advise
me on how to proceed?

Thanks,
      Mihaita

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
