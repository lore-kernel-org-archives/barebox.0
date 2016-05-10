Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b08Kv-0007KV-MD
 for barebox@lists.infradead.org; Tue, 10 May 2016 14:08:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 May 2016 16:08:08 +0200
Message-Id: <1462889289-24215-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1462889289-24215-1-git-send-email-s.hauer@pengutronix.de>
References: <1462889289-24215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] bootm: set bootm_verify_mode to correct value
To: Barebox List <barebox@lists.infradead.org>

When CONFIG_BOOTM_FORCE_SIGNED_IMAGES is enabled bootm_verify_mode
shall be forced to "signature", so set bootm_verify_mode to this
value during startup. Otherwise it shows up as "<NULL>" in devinfo.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index b74b922..53edc71 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -655,6 +655,10 @@ static int bootm_init(void)
 		globalvar_add_simple("bootm.initrd", NULL);
 		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
 	}
+
+	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES))
+		bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
+
 	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,
 				  bootm_verify_names, ARRAY_SIZE(bootm_verify_names));
 
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
