Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RJmQ0-0006CQ-Gj
	for barebox@lists.infradead.org; Fri, 28 Oct 2011 13:24:21 +0000
Received: by bke11 with SMTP id 11so1504043bke.36
	for <barebox@lists.infradead.org>; Fri, 28 Oct 2011 06:24:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Oct 2011 17:24:07 +0400
Message-Id: <1319808253-16693-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC PATCH V2 0/6] ARM: initial Tegra support
To: barebox@lists.infradead.org

This series make possible to run barebox on the Toshiba AC100 smartbook.
The smartbook is based on Tegra2 chipset.

This patches are very preliminary and lack many important things
such mmu&cache support and clocksource programming;
so to start barebox you need u-boot for hardware initialisation.

U-Boot for Toshiba AC100:
 https://github.com/chpec/uboot-ac100.git

Linux for Toshiba AC100:
 git://gitorious.org/~marvin24/ac100/marvin24s-kernel.git


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
