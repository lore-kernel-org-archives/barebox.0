Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-il1-x12f.google.com ([2607:f8b0:4864:20::12f])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPNPU-0000To-QX
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 10:08:02 +0000
Received: by mail-il1-x12f.google.com with SMTP id c5so7239743ilk.11
 for <barebox@lists.infradead.org>; Mon, 05 Oct 2020 03:08:00 -0700 (PDT)
MIME-Version: 1.0
From: "Robert Carnecky (Neopsis)" <robert@neopsis.com>
Date: Mon, 5 Oct 2020 12:07:48 +0200
Message-ID: <CABMENH487jhrwdywh4KOOqvJtJ_r0ZbSMu2ArDZRHhdK==-+wQ@mail.gmail.com>
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
Subject: Mini UART on RaspberryPi CM3/CM3+
To: barebox@lists.infradead.org

Did anybody successfully configured Raspberry CM3/CM3+ mini-UART as
the Barebox console? I found a thread
on this list discussing the issue
(https://www.mail-archive.com/barebox@lists.infradead.org/msg35235.html),
unfortunately without any solution.

What I need:

   * UART0 on pins 32/33 (technology access over rs-485)
   * UART1 (miniUART) on pins 14/15 (console)

My current config.txt boots fine my raspberry kernel (zImage built
using builroot):

   kernel=zImage
   enable_uart=1
   dtoverlay=uart0,txd0_pin=32,rxd0_pin=33,pin_func=7
   dtoverlay=uart1,txd1_pin=14,rxd1_pin=15

Now I would like to switch to Barebox as a bootloader. I compiled the
barebox image with

   * CONSOLE_ACTIVATE_NONE = Y
   * 'stdout-path=&uart1;' in  'arch/arm/dts/bcm2837-rpi-cm3.dts' .

and changed my kernel in config.txt

    kernel=barebox.img

I cannot see any output on pins 14/15 e.g. UART1, no barebox console,
no kernel console.
Any idea what's wrong here?

Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
