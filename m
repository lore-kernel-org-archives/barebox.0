Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVf0a-0006LK-OE
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 09:32:04 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1UVf0X-0007tU-8j
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 11:31:57 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1UVf0W-0004Nv-8u
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 11:31:56 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 26 Apr 2013 11:31:52 +0200
Message-Id: <1366968712-17851-7-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1366968712-17851-1-git-send-email-jbe@pengutronix.de>
References: <1366968712-17851-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 6/6] MCI/Core: move an ugly ifdef to the header file
To: barebox@lists.infradead.org

To avoid the compiler complains about an unused variable when no SPI host is
enabled, use an inline function instead of a macro.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mci/mci-core.c |  3 +--
 include/mci.h          | 15 +++++++++------
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 42e3d4b..ba7ef55 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -482,9 +482,8 @@ static int sd_change_freq(struct mci *mci)
 {
 	struct mci_cmd cmd;
 	struct mci_data data;
-#ifdef CONFIG_MCI_SPI
 	struct mci_host *host = mci->host;
-#endif
+
 	uint32_t *switch_status = sector_buf;
 	uint32_t *scr = sector_buf;
 	int timeout;
diff --git a/include/mci.h b/include/mci.h
index cf9582d..7f514be 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -54,12 +54,6 @@
 
 #define IS_SD(x) (x->version & SD_VERSION_SD)
 
-#ifdef CONFIG_MCI_SPI
-#define mmc_host_is_spi(host)	((host)->host_caps & MMC_CAP_SPI)
-#else
-#define mmc_host_is_spi(host)	0
-#endif
-
 #define MMC_DATA_READ		1
 #define MMC_DATA_WRITE		2
 
@@ -330,6 +324,15 @@ struct mci {
 	char *ext_csd;
 };
 
+static inline bool mmc_host_is_spi(const struct mci_host *host)
+{
+#ifdef CONFIG_MCI_SPI
+	return !!host->host_caps & MMC_CAP_SPI;
+#else
+	return false;
+#endif
+}
+
 int mci_register(struct mci_host*);
 
 #endif /* _MCI_H_ */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
