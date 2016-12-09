Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ua0-x22c.google.com ([2607:f8b0:400c:c08::22c])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cFIc2-0004lP-TT
 for barebox@lists.infradead.org; Fri, 09 Dec 2016 10:41:16 +0000
Received: by mail-ua0-x22c.google.com with SMTP id 12so13521349uas.2
 for <barebox@lists.infradead.org>; Fri, 09 Dec 2016 02:40:50 -0800 (PST)
MIME-Version: 1.0
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Fri, 9 Dec 2016 11:40:28 +0100
Message-ID: <CAGm1_ku-HbKbBH0Oj_aw-DvJqBpmwthVqBeQ3QiupUAyhtO8Cg@mail.gmail.com>
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
Subject: am335x: assert sysreset (NRESET_INOUT)
To: barebox <barebox@lists.infradead.org>
Cc: t.remmet@phytec.de, d.schultz@phytec.de

How to get am335x to assert sysreset signal for peripherals? U-Boot is
asserting this signal, when executing reset command.

If I boot my 3.18.x kernel with u-boot and perform warm reset I can
see sysreset signal, if I boot via barebox I don't see it during
reboot.

Any idea?

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
