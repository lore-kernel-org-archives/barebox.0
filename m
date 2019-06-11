Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadJL-00046o-Sr
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 09:43:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hadJK-000792-Di
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 11:43:22 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hadJK-00058c-0V
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 11:43:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2019 11:43:15 +0200
Message-Id: <20190611094319.9143-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190611094319.9143-1-a.fatoum@pengutronix.de>
References: <20190611094319.9143-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 2/6] reset_source: add new Brownout reset (BOR) source
To: barebox@lists.infradead.org

The STM32MP1 can report brown out as reason for a reset,
which doesn't fit into existing reasons. Thus add a new
one to the enumeration.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/reset_source.c  | 1 +
 include/reset_source.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/common/reset_source.c b/common/reset_source.c
index 338d7b9acb30..1955d3f87e33 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -28,6 +28,7 @@ static const char * const reset_src_names[] = {
 	[RESET_JTAG] = "JTAG",
 	[RESET_THERM] = "THERM",
 	[RESET_EXT] = "EXT",
+	[RESET_BROWNOUT] = "BROWNOUT",
 };
 
 static enum reset_src_type reset_source;
diff --git a/include/reset_source.h b/include/reset_source.h
index 86e415abcf84..13bc3bcfde7c 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -22,6 +22,7 @@ enum reset_src_type {
 	RESET_JTAG,	/* JTAG reset */
 	RESET_THERM,	/* SoC shut down because of overtemperature */
 	RESET_EXT,	/* External reset through device pin */
+	RESET_BROWNOUT,	/* Brownout Reset */
 };
 
 #ifdef CONFIG_RESET_SOURCE
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
