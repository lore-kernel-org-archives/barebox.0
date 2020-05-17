Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaNtJ-0006sn-Q7
 for barebox@lists.infradead.org; Sun, 17 May 2020 18:20:03 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 17 May 2020 20:19:41 +0200
Message-Id: <20200517181941.6982-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200517181941.6982-1-a.fatoum@pengutronix.de>
References: <20200517181941.6982-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/3] mci: reword MCI_STARTUP text
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With the recent addition of a generic device_detect for MCI devices,
the MCI_STARTUP help text is no longer accurate. Reword it, but leave
the option as-is as some boards may be broken if we drop the option
(e.g. because they still depend on a probe order or call
default_environment_path_set, but don't explicitly detect the device).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/Kconfig | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 60c60ceaa527..6ae1e812528c 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -12,12 +12,12 @@ if MCI
 comment "--- Feature list ---"
 
 config MCI_STARTUP
-	bool "Probe on system start"
+	bool "Force probe on system start"
 	help
-	  Say 'y' here if the MCI framework should probe for attached MCI cards
-	  on system start up. This is required if the card carries barebox's
-	  environment (for example on systems where the MCI card is the sole
-	  bootmedia). Otherwise probing run on demand with "mci*.probe=1"
+	  Say 'y' here if the MCI framework should always probe for all attached
+	  MCI cards on system start up. This may required for some legacy boards.
+	  When this is 'n', probing happens on demand either with "mci*.probe=1"
+	  or with driver/board code calling device_detect.
 
 config MCI_INFO
 	bool "MCI Info"
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
