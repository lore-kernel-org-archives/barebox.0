Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TirvP-0000nT-CE
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 19:25:00 +0000
Received: by mail-la0-f49.google.com with SMTP id r15so987129lag.36
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2012 11:24:56 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 12 Dec 2012 23:24:45 +0400
Message-Id: <1355340288-10724-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/3] MIPS: add pre-bootloader (pbl) image support
To: barebox@lists.infradead.org

This patch series introduce pre-bootloader (pbl) support on MIPS.
The only supported board is qemu-malta.

[PATCH 1/3] MIPS: add pre-bootloader (pbl) image support
[PATCH 2/3] MIPS: qemu-malta: add trivial pbl support
[PATCH 3/3] MIPS: qemu-malta_defconfig: use pbl

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
