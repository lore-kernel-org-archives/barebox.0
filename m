Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwHOG-0002B7-8N
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 22:27:49 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 10 Nov 2015 22:27:23 +0000
Message-ID: <1447194444.4553.88.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <4FAF82727FA2DC4895F697D609A8DC3D@kymetacorp.com>
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
Subject: [PATCH] firmware: socfpga: Add parameter "programmed" to fpgamgr
 driver
To: barebox <barebox@lists.infradead.org>

This boolean parameter tells you if the FPGA is programmed or not.  It
can be accessed from the shell as "$fpga.programmed".  One could use
this to not program the FPGA if it's already programmed.

There is an annoying limitation of the way barebox puts parameters
into the shell env: it requires they have no periods in the device
name.  It uses the first period to divide the variable name into a
device and parameter name, which doesn't work correctly if the device
name has a period in it.

Since the names of any devices created from the OF device tree have a
period in them, this is a problem.

So what I did here was create a new device.  Its parent will be the OF
device for the fpgamgr and it will in turn be the parent of the
firmware cdev.  Previously the cdev's parent was the OF device.  This
device won't have period in the name and the parameter is attached to
it.  Even without the period limitation, doing this gives a nicer name
"fpga.programmed" instead of "ff706000.fpgamgr.programmed".

The fpgamgr code had a pointer to the OF device in its private state.
I changed this to be a struct for the new "fpga" device, which is then
used in all the places the former pointer was (nothing but dev_dbg,
etc. calls).

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/firmware/socfpga.c | 46 +++++++++++++++++++++++++++++++++++-----------
 1 file changed, 35 insertions(+), 11 deletions(-)

Here is what devinfo tree looks like after:
      `-- ff706000.fpgamgr
         `-- fpga
            `-- 0x00000000-0xfffffffffffffffe (    16 EiB): /dev/socfpga-fpga

Here is what it looked like before:
      `-- ff706000.fpgamgr
         `-- 0x00000000-0xfffffffffffffffe (    16 EiB): /dev/socfpga-fpga

devinfo fpga
Parameters:
  programmed: 1


diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index 14a7a14..159644b 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -79,9 +79,10 @@
 
 struct fpgamgr {
 	struct firmware_handler fh;
-	struct device_d *dev;
+	struct device_d dev;
 	void __iomem *regs;
 	void __iomem *regs_data;
+	int programmed;
 };
 
 /* Get the FPGA mode */
@@ -303,12 +304,12 @@ static int fpgamgr_program_start(struct firmware_handler *fh)
 	/* unmap the bridges from NIC-301 */
 	writel(0x1, CYCLONE5_L3REGS_ADDRESS);
 
-	dev_dbg(mgr->dev, "start programming...\n");
+	dev_dbg(&mgr->dev, "start programming...\n");
 
 	/* initialize the FPGA Manager */
 	status = fpgamgr_program_init(mgr);
 	if (status) {
-		dev_err(mgr->dev, "program init failed with: %s\n",
+		dev_err(&mgr->dev, "program init failed with: %s\n",
 				strerror(-status));
 		return status;
 	}
@@ -356,27 +357,27 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 	/* Ensure the FPGA entering config done */
 	status = fpgamgr_program_poll_cd(mgr);
 	if (status) {
-		dev_err(mgr->dev, "poll for config done failed with: %s\n",
+		dev_err(&mgr->dev, "poll for config done failed with: %s\n",
 				strerror(-status));
 		return status;
 	}
 
-	dev_dbg(mgr->dev, "waiting for init phase...\n");
+	dev_dbg(&mgr->dev, "waiting for init phase...\n");
 
 	/* Ensure the FPGA entering init phase */
 	status = fpgamgr_program_poll_initphase(mgr);
 	if (status) {
-		dev_err(mgr->dev, "poll for init phase failed with: %s\n",
+		dev_err(&mgr->dev, "poll for init phase failed with: %s\n",
 				strerror(-status));
 		return status;
 	}
 
-	dev_dbg(mgr->dev, "waiting for user mode...\n");
+	dev_dbg(&mgr->dev, "waiting for user mode...\n");
 
 	/* Ensure the FPGA entering user mode */
 	status = fpgamgr_program_poll_usermode(mgr);
 	if (status) {
-		dev_err(mgr->dev, "poll for user mode with: %s\n",
+		dev_err(&mgr->dev, "poll for user mode with: %s\n",
 				strerror(-status));
 		return status;
 	}
@@ -384,12 +385,21 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 	return 0;
 }
 
+/* Get current programmed state of fpga and put in "programmed" parameter */
+static int programmed_get(struct param_d *p, void *priv)
+{
+	struct fpgamgr *mgr = priv;
+	mgr->programmed = fpgamgr_get_mode(mgr) == FPGAMGRREGS_MODE_USERMODE;
+	return 0;
+}
+
 static int fpgamgr_probe(struct device_d *dev)
 {
 	struct fpgamgr *mgr;
 	struct firmware_handler *fh;
 	const char *alias = of_alias_get(dev->device_node);
 	const char *model = NULL;
+	struct param_d *p;
 	int ret;
 
 	dev_dbg(dev, "Probing FPGA firmware programmer\n");
@@ -422,17 +432,31 @@ static int fpgamgr_probe(struct device_d *dev)
 		fh->model = xstrdup(model);
 	fh->dev = dev;
 
-	mgr->dev = dev;
-
 	dev_dbg(dev, "Registering FPGA firmware programmer\n");
 
+	mgr->dev.id = DEVICE_ID_SINGLE;
+	strcpy(mgr->dev.name, "fpga");
+	mgr->dev.parent = dev;
+	ret = register_device(&mgr->dev);
+	if (ret)
+		goto out;
+
+	p = dev_add_param_bool(&mgr->dev, "programmed", NULL, programmed_get, &mgr->programmed, mgr);
+	if (IS_ERR(p)) {
+		ret = PTR_ERR(p);
+		goto out_unreg;
+	}
+
+	fh->dev = &mgr->dev;
 	ret = firmwaremgr_register(fh);
 	if (ret != 0) {
 		free(mgr);
-		goto out;
+		goto out_unreg;
 	}
 
 	return 0;
+out_unreg:
+	unregister_device(&mgr->dev);
 out:
 	free(fh->id);
 	free(mgr);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
