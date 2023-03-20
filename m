Delivery-date: Mon, 20 Mar 2023 16:31:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTl-007zJM-3n
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 16:31:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTk-0001pa-1F
	for lore@pengutronix.de; Mon, 20 Mar 2023 16:31:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lMVWUBki9NZhyVgbeTgFrf1aP9CdlSFm08SU8cBGEB0=; b=BXlzJzKVqw4OZ0357ZYSFOJZWC
	1eftH6yy3XdWZRUla4GKcZtJCJDuSfHmT9jl6wHEBMAqEHgCbYit5PGPw+C+MbDpVvSDHiVV+4HIo
	KOvSFDicnUUjlquuP7mZbHVvMLS5tHY66SnuuRYifC6415WB+s4vmygrfgZY+5O08ckbkDHNsp56T
	Q1jRjR5LVSeTe6blrC4ILu6f1BHSbrmoiK7iuq5AGQR7/OVDvw0TM7/aMOUXL4SOK42NNl7VobYQk
	/DmK8AfIw/KadISke5yRMnz3u4mXmNdhCfwNo6Gj+OGy0TedEYLsjZEhRnP23TJxWcTYt6SDQG8+R
	WPIWebuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSS-009Xm3-1H;
	Mon, 20 Mar 2023 15:30:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSI-009Xff-2s
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 15:29:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSD-0000pK-PF; Mon, 20 Mar 2023 16:29:45 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSD-005UYw-2v; Mon, 20 Mar 2023 16:29:45 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSB-00Dc1f-Fy; Mon, 20 Mar 2023 16:29:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Mar 2023 16:29:33 +0100
Message-Id: <20230320152941.3155428-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230320152941.3155428-1-s.hauer@pengutronix.de>
References: <20230320152941.3155428-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_082950_936594_B611FA08 
X-CRM114-Status: GOOD (  14.42  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/18] usb: gadget: Add super-speed-plus descriptors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux upstream usb_assign_descriptors() now takes four sets of
descriptors. Add the missing super speed plus descriptors.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/config.c                  | 8 +++++++-
 drivers/usb/gadget/function/dfu.c            | 2 +-
 drivers/usb/gadget/function/f_acm.c          | 2 +-
 drivers/usb/gadget/function/f_fastboot.c     | 2 +-
 drivers/usb/gadget/function/f_mass_storage.c | 2 +-
 drivers/usb/gadget/function/f_serial.c       | 2 +-
 include/linux/usb/composite.h                | 1 +
 include/linux/usb/gadget.h                   | 3 ++-
 8 files changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/gadget/config.c b/drivers/usb/gadget/config.c
index 979cfafa70..27e4dda52f 100644
--- a/drivers/usb/gadget/config.c
+++ b/drivers/usb/gadget/config.c
@@ -152,7 +152,8 @@ EXPORT_SYMBOL_GPL(usb_copy_descriptors);
 int usb_assign_descriptors(struct usb_function *f,
 		struct usb_descriptor_header **fs,
 		struct usb_descriptor_header **hs,
-		struct usb_descriptor_header **ss)
+		struct usb_descriptor_header **ss,
+		struct usb_descriptor_header **ssp)
 {
 	struct usb_gadget *g = f->config->cdev->gadget;
 
@@ -171,6 +172,11 @@ int usb_assign_descriptors(struct usb_function *f,
 		if (!f->ss_descriptors)
 			goto err;
 	}
+	if (ssp && gadget_is_superspeed_plus(g)) {
+		f->ssp_descriptors = usb_copy_descriptors(ssp);
+		if (!f->ssp_descriptors)
+			goto err;
+	}
 	return 0;
 err:
 	usb_free_all_descriptors(f);
diff --git a/drivers/usb/gadget/function/dfu.c b/drivers/usb/gadget/function/dfu.c
index 930a10b766..e6ba829a85 100644
--- a/drivers/usb/gadget/function/dfu.c
+++ b/drivers/usb/gadget/function/dfu.c
@@ -427,7 +427,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 	header[i] = (struct usb_descriptor_header *) &usb_dfu_func;
 	header[i + 1] = NULL;
 
-	status = usb_assign_descriptors(f, header, header, NULL);
+	status = usb_assign_descriptors(f, header, header, NULL, NULL);
 
 	free(desc);
 	free(header);
diff --git a/drivers/usb/gadget/function/f_acm.c b/drivers/usb/gadget/function/f_acm.c
index 1210622d96..3532fd5892 100644
--- a/drivers/usb/gadget/function/f_acm.c
+++ b/drivers/usb/gadget/function/f_acm.c
@@ -678,7 +678,7 @@ acm_bind(struct usb_configuration *c, struct usb_function *f)
 	acm_ss_out_desc.bEndpointAddress = acm_fs_out_desc.bEndpointAddress;
 
 	status = usb_assign_descriptors(f, acm_fs_function, acm_hs_function,
-			acm_ss_function);
+			acm_ss_function, acm_ss_function);
 	if (status)
 		goto fail;
 
diff --git a/drivers/usb/gadget/function/f_fastboot.c b/drivers/usb/gadget/function/f_fastboot.c
index 499262a64b..4e9c373796 100644
--- a/drivers/usb/gadget/function/f_fastboot.c
+++ b/drivers/usb/gadget/function/f_fastboot.c
@@ -266,7 +266,7 @@ static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 	f_fb->out_req->complete = rx_handler_command;
 	f_fb->out_req->context = f_fb;
 
-	ret = usb_assign_descriptors(f, fb_fs_descs, fb_hs_descs, NULL);
+	ret = usb_assign_descriptors(f, fb_fs_descs, fb_hs_descs, NULL, NULL);
 	if (ret)
 		goto err_free_in_req;
 
diff --git a/drivers/usb/gadget/function/f_mass_storage.c b/drivers/usb/gadget/function/f_mass_storage.c
index 61f369bd07..4e9777994e 100644
--- a/drivers/usb/gadget/function/f_mass_storage.c
+++ b/drivers/usb/gadget/function/f_mass_storage.c
@@ -2666,7 +2666,7 @@ static int fsg_bind(struct usb_configuration *c, struct usb_function *f)
 	}
 
 	/* Copy descriptors */
-	return usb_assign_descriptors(f, fsg_fs_function, hs_function, NULL);
+	return usb_assign_descriptors(f, fsg_fs_function, fsg_hs_function, NULL, NULL);
 
 autoconf_fail:
 	ERROR(fsg, "unable to autoconfigure all endpoints\n");
diff --git a/drivers/usb/gadget/function/f_serial.c b/drivers/usb/gadget/function/f_serial.c
index 494f6c872e..a768c580ea 100644
--- a/drivers/usb/gadget/function/f_serial.c
+++ b/drivers/usb/gadget/function/f_serial.c
@@ -231,7 +231,7 @@ static int gser_bind(struct usb_configuration *c, struct usb_function *f)
 	gser_ss_out_desc.bEndpointAddress = gser_fs_out_desc.bEndpointAddress;
 
 	status = usb_assign_descriptors(f, gser_fs_function, gser_hs_function,
-			gser_ss_function);
+			gser_ss_function, gser_ss_function);
 	if (status)
 		goto fail;
 	DBG(cdev, "generic ttyGS%d: %s speed IN/%s OUT/%s\n",
diff --git a/include/linux/usb/composite.h b/include/linux/usb/composite.h
index 26e6fe5c47..7bd89b1de1 100644
--- a/include/linux/usb/composite.h
+++ b/include/linux/usb/composite.h
@@ -125,6 +125,7 @@ struct usb_function {
 	struct usb_descriptor_header	**fs_descriptors;
 	struct usb_descriptor_header	**hs_descriptors;
 	struct usb_descriptor_header	**ss_descriptors;
+	struct usb_descriptor_header	**ssp_descriptors;
 
 	struct usb_configuration	*config;
 
diff --git a/include/linux/usb/gadget.h b/include/linux/usb/gadget.h
index a9b45bb824..d4c02cb37c 100644
--- a/include/linux/usb/gadget.h
+++ b/include/linux/usb/gadget.h
@@ -855,7 +855,8 @@ struct usb_function;
 int usb_assign_descriptors(struct usb_function *f,
 		struct usb_descriptor_header **fs,
 		struct usb_descriptor_header **hs,
-		struct usb_descriptor_header **ss);
+		struct usb_descriptor_header **ss,
+		struct usb_descriptor_header **ssp);
 void usb_free_all_descriptors(struct usb_function *f);
 
 struct usb_descriptor_header *usb_otg_descriptor_alloc(
-- 
2.30.2



