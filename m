Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RnP42-0000si-Gl
 for barebox@lists.infradead.org; Wed, 18 Jan 2012 06:32:07 +0000
Received: by bkty8 with SMTP id y8so8659401bkt.36
 for <barebox@lists.infradead.org>; Tue, 17 Jan 2012 22:32:02 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 18 Jan 2012 10:31:52 +0400
Message-Id: <1326868316-29385-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v4 0/2] ns16550-related patches
To: barebox@lists.infradead.org

This patch series consist of two ns16550-related patches.

[PATCH v4 1/4] ns16550: support for UART with broken FIFO
[PATCH v4 2/4] ns16550: make ns16550_serial_init_port() shorter
[PATCH v4 3/4] ns16550: write zero to ier only once
[PATCH v4 4/4] ns16550: fix ier selection

The 1st one adds the flag (NS16650_FLAG_DISABLE_FIFO) in internal
ns16550 data structure to recognise UART with broken FIFO
(or UART without FIFO at all) and the code to use this flag.
The flag can be set in board-related code.

The 2nd one use the fact that ns16550_serial_init_port() and
ns16550_setbaudrate() functions have many common code.
It change the most of ns16550_serial_init_port() code for
one ns16550_setbaudrate() call.

The 3rd one removes unnecessary interrupt disable on every
speed change operation.

The 4th one adds explicit IER register selection before accessing it.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
