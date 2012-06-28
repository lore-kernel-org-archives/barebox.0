Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkJWH-0007nd-5m
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 18:32:45 +0000
Received: by lbbgg6 with SMTP id gg6so3506438lbb.36
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2012 11:32:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 28 Jun 2012 22:32:29 +0400
Message-Id: <1340908354-17895-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 0/5] MIPS: XBurst: fix the JZ4755's clocksource
To: barebox@lists.infradead.org

This patch series fixes error in JZ4755's clocksource code.

First, it fixes common {BIG,LITTLE}_ENDIAN defines
to make work MIPS little-endian clocksource code.

Next, the patch series fixes the JZ4755's clocksource code itself.

[PATCH v2 1/5] byteorder: fix {BIG,LITTLE}_ENDIAN defines
[PATCH v2 2/5] byteorder: add sanity check
[PATCH v2 3/5] clocksource: move the NSEC_PER_SEC constant to common
[PATCH v2 4/5] MIPS: XBurst: fix the JZ4755's clocksource input
[PATCH v2 5/5] MIPS: XBurst: use clocks_calc_mult_shift() for

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
