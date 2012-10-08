Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLMEi-0007Oe-2X
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 22:55:44 +0000
Received: by mail-wi0-f177.google.com with SMTP id hj13so3126618wib.0
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 15:55:41 -0700 (PDT)
From: Vicente <vicencb@gmail.com>
Date: Tue,  9 Oct 2012 00:55:11 +0200
Message-Id: <1349736924-24667-2-git-send-email-vicencb@gmail.com>
In-Reply-To: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
References: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 01/14] twl6030: add debug info
To: barebox@lists.infradead.org
Cc: Vicente <vicencb@gmail.com>


Signed-off-by: Vicente <vicencb@gmail.com>
---
 drivers/mfd/twl6030.c | 21 +++++++++++++++++++++
 include/mfd/twl6030.h |  8 ++++++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/mfd/twl6030.c b/drivers/mfd/twl6030.c
index 01728fd..6b872ab 100644
--- a/drivers/mfd/twl6030.c
+++ b/drivers/mfd/twl6030.c
@@ -39,6 +39,27 @@ static int twl_probe(struct device_d *dev)
 
 	devfs_create(&(twl_dev->core.cdev));
 
+	if (IS_ENABLED(CONFIG_DEBUG)) {
+		u8 i, jtag_rev, eprom_rev;
+		int r;
+		u64 dieid;
+
+		r = twl6030_reg_read(twl_dev, TWL6030_JTAG_JTAGVERNUM,
+			&jtag_rev);
+		r |= twl6030_reg_read(twl_dev, TWL6030_JTAG_EPROM_REV,
+			&eprom_rev);
+		for (i = 0; i < 8; i++)
+			r |= twl6030_reg_read(twl_dev, TWL6030_DIEID_0+i,
+				((u8 *)(&dieid))+i);
+		if (r)
+			dev_dbg(dev, "TWL6030 Error reading ID\n");
+		else
+			dev_dbg(dev, "TWL6030 JTAG REV: 0x%02X, "
+				"EPROM REV: 0x%02X, "
+				"DIE ID: 0x%016llX\n",
+				(unsigned)jtag_rev, (unsigned)eprom_rev, dieid);
+	}
+
 	return 0;
 }
 
diff --git a/include/mfd/twl6030.h b/include/mfd/twl6030.h
index f1278d4..bb4f773 100644
--- a/include/mfd/twl6030.h
+++ b/include/mfd/twl6030.h
@@ -371,6 +371,14 @@ enum twl6030_reg {
 	/* JTAG */
 	TWL6030_JTAG_JTAGVERNUM = 0x0287,
 	TWL6030_JTAG_EPROM_REV = 0x02DF,
+	TWL6030_DIEID_0 = 0x02C0,
+	TWL6030_DIEID_1 = 0x02C1,
+	TWL6030_DIEID_2 = 0x02C2,
+	TWL6030_DIEID_3 = 0x02C3,
+	TWL6030_DIEID_4 = 0x02C4,
+	TWL6030_DIEID_5 = 0x02C5,
+	TWL6030_DIEID_6 = 0x02C6,
+	TWL6030_DIEID_7 = 0x02C7,
 	/* GPADC Trimming */
 	TWL6030_GPADC_TRIM1 = 0x02CD,
 	TWL6030_GPADC_TRIM2 = 0x02CE,
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
