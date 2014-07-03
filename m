Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-f170.google.com ([209.85.214.170])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2gjt-0005en-Cp
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 13:07:49 +0000
Received: by mail-ob0-f170.google.com with SMTP id uz6so226258obc.1
 for <barebox@lists.infradead.org>; Thu, 03 Jul 2014 06:07:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.11.1407030808580.23331@localhost>
References: <alpine.LFD.2.11.1407030808580.23331@localhost>
Date: Thu, 3 Jul 2014 15:07:25 +0200
Message-ID: <CAOpc7mH8MbhX-MiwM3X7fyeZV8wstBvWg9LyQt_CrBepO-d++A@mail.gmail.com>
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
Subject: Re: inconsistency in explanation for "splash" command
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

Then the help is wrong, I use successfully a small PNG file.

   splash -x 550 -y 500 -b 0xffffff /env/logo.png

$ file logo.png
file.png: PNG image data, 194 x 52, 8-bit/color RGB, non-interlaced

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
