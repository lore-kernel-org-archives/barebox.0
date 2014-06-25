Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x22f.google.com ([2607:f8b0:4002:c01::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wzpxp-0003fi-UL
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 16:22:26 +0000
Received: by mail-yh0-f47.google.com with SMTP id v1so1307119yhn.20
 for <barebox@lists.infradead.org>; Wed, 25 Jun 2014 09:22:04 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 25 Jun 2014 18:22:04 +0200
Message-ID: <CAOpc7mEx4SW8gCjmxB8kTFypgAbm8GbfaMk9UcZRj5jF3y4uvg@mail.gmail.com>
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
Subject: How to disable console late?
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On my i.MX6 I have CONFIG_CONSOLE_FULL and CONSOLE_ACTIVATE_NONE
defined. But still my serial is automatically activated as a console.

barebox:/ devinfo cs0
Bus: platform
Parameters:
  baudrate: 115200
  active: ioe

I'd rather active the serial port as a console only if a key is
pressed during power on. Based on the help text of
CONFIG_ACTIVATE_NONE, I actually thought that this would happen.

Any hints?


I could remove chosen/stdout-path from my DTS and put it in
on-the-fly? This sounds a bit ugly ...

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
