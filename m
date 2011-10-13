Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1REHxN-0007oK-U1
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 09:52:06 +0000
Received: from localhost (humanoidz.org [82.247.183.72])
	by mail.free-electrons.com (Postfix) with ESMTPSA id DA13C273
	for <barebox@lists.infradead.org>;
	Thu, 13 Oct 2011 11:51:53 +0200 (CEST)
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Thu, 13 Oct 2011 11:51:53 +0200
Message-Id: <1318499513-13758-2-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1318499513-13758-1-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1318499513-13758-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH] arm: at91: Add Atmel NAND support in config for
	at91sam9m10g45ek
To: barebox@lists.infradead.org

Contrary to other Atmel boards, the AT91SAM9M10G45EK board file only
describes the case where NAND is used as the storage for Barebox and
its environment. Therefore, it makes sense to enable the Atmel NAND
driver in the default configuration for this board.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/configs/at91sam9m10g45ek_defconfig |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index deca884..9699f5b 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -52,6 +52,7 @@ CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_MTD=y
 CONFIG_NAND=y
+CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
 CONFIG_MCI=y
 CONFIG_MCI_WRITE=y
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
