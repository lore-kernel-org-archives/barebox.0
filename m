Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x231.google.com ([2a00:1450:4013:c00::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UvDSq-0006X2-FW
 for barebox@lists.infradead.org; Fri, 05 Jul 2013 21:22:49 +0000
Received: by mail-ee0-f49.google.com with SMTP id b57so1592497eek.36
 for <barebox@lists.infradead.org>; Fri, 05 Jul 2013 14:22:26 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  5 Jul 2013 23:22:17 +0200
Message-Id: <1373059339-20513-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC 0/2] mci: Dove SDHCI driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This RFC presents a working SDHCI driver for the IP found on Marvell
Dove SoCs.

@Sascha: We talked about refactoring common SDHCI code and I just want
to show what I came up with for Dove. After thinking about existing barebox
SDHCI, I had the impression that I should reimplement Dove SDHCI with writel
as it is already made in other SDHCI drivers.

I will be not checking mails regularily nor working on Barebox for the next
two weeks, so feel free to simply ignore the RFC. But I thought it will be
a good way to discuss your plans for common SDHCI code.

Sebastian Hesselbarth (2):
  mci: add more defines to sdhci include
  mci: add Marvell Dove SDHCI driver

 drivers/mci/Kconfig      |    7 +
 drivers/mci/Makefile     |    1 +
 drivers/mci/dove-sdhci.c |  365 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mci/sdhci.h      |   86 +++++++++++
 4 files changed, 459 insertions(+)
 create mode 100644 drivers/mci/dove-sdhci.c

---
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
