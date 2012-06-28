Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkBHY-0002Zx-8Y
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 09:45:01 +0000
Received: by lbbgg6 with SMTP id gg6so2896721lbb.36
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2012 02:44:57 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 28 Jun 2012 13:44:45 +0400
Message-Id: <1340876689-26303-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/4] MIPS: XBurst: fix the JZ4755's clocksource
To: barebox@lists.infradead.org

This patch series fixes error in JZ4755's clocksource code.

First, it fixes common {BIG,LITTLE}_ENDIAN defines
to make work MIPS little-endian clocksource code.

Next, the patch series fixes the JZ4755's clocksource code itself.

[PATCH 1/4] byteorder: fix {BIG,LITTLE}_ENDIAN defines
[PATCH 2/4] clocksource: move the NSEC_PER_SEC constant to common
[PATCH 3/4] MIPS: XBurst: fix the JZ4755's clocksource input
[PATCH 4/4] MIPS: XBurst: use clocks_calc_mult_shift() for JZ4755's

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
