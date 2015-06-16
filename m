Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-x22b.google.com ([2607:f8b0:4001:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4mFs-0006TX-F4
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 08:30:00 +0000
Received: by iebmu5 with SMTP id mu5so8251595ieb.1
 for <barebox@lists.infradead.org>; Tue, 16 Jun 2015 01:29:44 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 16 Jun 2015 08:29:44 +0000
Message-ID: <CADwFkYdH9ox+PxLk6Y+b03owqud_Y=+RKfQVrrraOPRrseiFyw@mail.gmail.com>
From: Yi Qingliang <niqingliang2003@gmail.com>
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
Subject: parallel lcd on i.mx6
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

hello,
    I'm using imx6 (on embedsky e9 board).
   does barebox support parallel lcd on it?
   I found 'imx-parallel-display' in barebox's dts, but cannot find
the driver, how can i use it?

   in driver/video/imx-ipu-v3/, only hdmi and ldb, there is no
parallel lcd, isn't it?

Yi Qingliang

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
