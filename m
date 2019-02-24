Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gxytj-0007Tk-7d
 for barebox@lists.infradead.org; Sun, 24 Feb 2019 18:53:13 +0000
Received: by mail-lj1-x244.google.com with SMTP id l5so5545978lje.1
 for <barebox@lists.infradead.org>; Sun, 24 Feb 2019 10:53:10 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sun, 24 Feb 2019 19:52:51 +0100
Message-Id: <20190224185259.28458-4-sam@ravnborg.org>
In-Reply-To: <20190224185259.28458-1-sam@ravnborg.org>
References: <20190224185259.28458-1-sam@ravnborg.org>
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
Subject: [PATCH v4 03/11] clocksource: Do not mix depends and select for
 ATMEL_PIT
To: Barebox List <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>, Ladislav Michl <ladis@linux-mips.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>

CLOCKSOURCE_ATMEL_PIT was both set to yes using depends on
and using select.
Use only select to set this non-visible symbol to 'y'

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Tested-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/clocksource/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 7b04663d2..b0502c303 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -69,7 +69,6 @@ config CLOCKSOURCE_ROCKCHIP
 
 config CLOCKSOURCE_ATMEL_PIT
        bool
-       depends on SOC_AT91SAM9 || SOC_SAMA5
 
 config CLOCKSOURCE_ARMV8_TIMER
 	bool
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
