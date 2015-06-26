Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z8Mpc-0008Ko-5H
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 06:09:44 +0000
Received: by wicnd19 with SMTP id nd19so35915404wic.1
 for <barebox@lists.infradead.org>; Thu, 25 Jun 2015 23:09:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150625200718.GA18611@pengutronix.de>
References: <20150608184033.GL6325@pengutronix.de>
 <20150625152714.71ffc6272ed69a63a346ea02@gmail.com>
 <20150625200718.GA18611@pengutronix.de>
Date: Fri, 26 Jun 2015 08:09:21 +0200
Message-ID: <CAOpc7mH4aGVaj8FKuS+R7Bv+8KhWQEHbN0-bNAgrxAKFp=xn2w@mail.gmail.com>
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
Subject: Re: v2015.06.0 ...and a new website
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Imagemagick (and therefore also probably /Graphicsmagic) allows this
from the command line:

convert -setTheOutputSizeOfThePng 1024x1024 test.svg test.png

And Inkscape (my SVG tool of choice) as well:

inkscape -z -e test.png -w 1024 -h 1024 test.svg


Source: http://stackoverflow.com/questions/9853325/how-to-convert-a-svg-to-a-png-with-image-magick

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
