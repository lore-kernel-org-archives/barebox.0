Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R9HEB-0002PU-0M
	for barebox@lists.infradead.org; Thu, 29 Sep 2011 14:04:43 +0000
Received: by bkat2 with SMTP id t2so845753bka.36
	for <barebox@lists.infradead.org>; Thu, 29 Sep 2011 07:04:40 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 29 Sep 2011 18:04:30 +0400
Message-Id: <1317305076-3334-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC PATCH 0/6] ARM: initial Tegra support
To: barebox@lists.infradead.org

This series make possible to run barebox on the Toshiba AC100 smartbook.
The smartbook is based on Tegra2 chipset.

This patches are very preliminary and lack many important things
such mmu&cache support and clocksource programming;
so to start barebox you need u-boot for hardware initialisation.

Please comment the patches, particularly this easy-one:
  [RFC PATCH 4/6] arm: cpuinfo: Cortex-A9 dirty hack

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
