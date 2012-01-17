Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RnFgD-0003nh-KV
 for barebox@lists.infradead.org; Tue, 17 Jan 2012 20:30:54 +0000
Received: by bkty8 with SMTP id y8so8150945bkt.36
 for <barebox@lists.infradead.org>; Tue, 17 Jan 2012 12:30:52 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 18 Jan 2012 00:30:46 +0400
Message-Id: <1326832248-12745-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v3 0/2] ns16550-related patches
To: barebox@lists.infradead.org

This patch series consist of two ns16550-related patches.

The 1st one adds the flag (NS16650_FLAG_DISABLE_FIFO) in internal
ns16550 data structure to recognise UART with broken FIFO
(or UART without FIFO at all) and the code to use this flag.
The flag can be set in board-related code.

The 2nd one use the fact that ns16550_serial_init_port() and
ns16550_setbaudrate() functions have many common code.
It change the most of ns16550_serial_init_port() code for
one ns16550_setbaudrate() call.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
