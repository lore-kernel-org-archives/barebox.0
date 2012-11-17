Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZhEW-0003up-8S
 for barebox@lists.infradead.org; Sat, 17 Nov 2012 12:10:49 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so927387lbo.36
 for <barebox@lists.infradead.org>; Sat, 17 Nov 2012 04:10:45 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 17 Nov 2012 16:10:36 +0400
Message-Id: <1353154239-31574-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 0/3] MIPS: add pre-bootloader (pbl) image support
To: barebox@lists.infradead.org

This patch series is based on ARM pbl support and allows
creating a pre-bootloader binary for compressed image.

TODO:
 * add lowlevel init;
 * current MIPS pbl run only on qemu-malta; make it work
on other boards (e.g. add mmc/nand boot support on Ingenic SOCs).

[RFC 1/3] MIPS: add pre-bootloader (pbl) image support
[RFC 2/3] MIPS: boot: realize _start in C
[RFC 3/3] MIPS: qemu-malta_defconfig: use pbl

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
