Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TcvLy-0003Fp-A4
 for barebox@lists.infradead.org; Mon, 26 Nov 2012 09:51:51 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so6167178lbo.36
 for <barebox@lists.infradead.org>; Mon, 26 Nov 2012 01:51:47 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 26 Nov 2012 13:51:38 +0400
Message-Id: <1353923501-13372-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: commands: md, mw: add the '-x' option (swap bytes)
To: barebox@lists.infradead.org

Most of my MIPS boards run barebox in big-endian mode, but
sometimes I need see state of little-endian registers
(e.g. registers of PCI-connected peripherals) and it is not
very handy to swap bytes manually.

This patch series adds to memory commands md and mw the ability
to swap bytes "on the fly".

[PATCH 1/3] mem: add the swab (swap bytes) option to
[PATCH 2/3] commands: md: add the '-x' option (swap bytes)
[PATCH 3/3] commands: mw: add the '-x' option (swap bytes)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
