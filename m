Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUiLP-0001Nx-Jd
 for barebox@lists.infradead.org; Tue, 20 Oct 2020 03:29:52 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Oct 2020 05:29:34 +0200
Message-Id: <20201020032937.10132-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201020032937.10132-1-a.fatoum@pengutronix.de>
References: <20201020032937.10132-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH master 2/5] Documentation: boards: stm32mp: search engine
 optimization
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The vendor calls it STM32MP1. Have this name appear in the documentation
as well to be easier found during web search.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/stm32mp.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index a06578602d9d..87fff7d1259b 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -5,7 +5,7 @@ The STM32MP is a line of 32-bit ARM SoCs. They reuse peripherals of the
 STM32 line of microcontrollers and can have a STM32 MCU embedded as co-processor
 as well.
 
-The boot process of the STM32MP SoC is a two step process.
+The boot process of the STM32MP1 SoC is a two step process.
 The first stage boot loader (FSBL) is loaded by the ROM code into the built-in
 SYSRAM and executed. The FSBL sets up the SDRAM, install a secure monitor and
 then the second stage boot loader (SSBL) is loaded into DRAM.
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
