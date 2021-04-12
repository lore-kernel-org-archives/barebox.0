Delivery-date: Tue, 13 Apr 2021 00:36:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5Ar-0006EQ-Ax
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 00:36:53 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5Ap-00076C-BE
	for lore@pengutronix.de; Tue, 13 Apr 2021 00:36:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8WMFd+R6//UOK3oRz6PVdn/av9/K25Wef3WxshaS+jg=; b=ioKECSwFnN1waW3aYo3S/OfWI
	4ELrsQj4SU5tzFXryLebqMKoMbSP/R2eBftLG3RlEkC3+NKw3qi+T8rduy6ooMeFKs+v3JAuEfWLI
	tC6vc9ZPHdcbxlgHptUMmD340WPEogq3ggtN66TRyAQzNk2ZCM6/aB8CHRF8jPBXjaalJZ2hrS6sz
	6ESamoEGe+HhLyK1V4HMm/Um0EhamYS5SIhoxRhRgg+h2JiDJmWJrEoFovGupAO3KnwQUfLHtZGNl
	lJFIQjyF8Z3/Dq51YVGdER5TrIfvAbbFYWLE9zHQT9YKF9JVcA716Z6vCdBVveoeP2Fx4RNvlZRMY
	9J7VRFtLA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW59o-007nEi-NJ; Mon, 12 Apr 2021 22:35:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59D-007n6v-Up
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 22:35:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=cUTqrzcX2mzpDkMsvKWwdLjo5+O7U7mUNA6vRvVT5xk=; b=aX5DeFwZ3oiR349/LmHonn+CMA
 HVhaUndWXxhDasEmNeYAHPaJKtXHpcbXeWa6Bg1gYSQhpbjS0tYkhjbeY1z1QYummxzP0MqYsFxeN
 C20X40ytNBfUnRpnj0w8OukTSsopP3fT/eAe9xygetebLBOoissT3ks8j7Qh1KpDsMCRLfXPqe/UI
 fBVMUIJSxVXuLolsIDE65TFmRj9ZtU+Uu7LQu6PCEDFsbmVZZiOC9xzut7EKlUT5QqAeMiFSoatdl
 fLVv4XQw1t4WavHjC2/9uK2Smzmz8IS6NimFZTUrH6PWbKD7Rn1IL8uB962njyTVcQFhcJ10mIcBZ
 uG1LQ9gQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW598-006ap8-Jz
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 22:35:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW597-0006BP-Ad; Tue, 13 Apr 2021 00:35:05 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW596-0003tK-Er; Tue, 13 Apr 2021 00:35:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Apr 2021 00:34:57 +0200
Message-Id: <20210412223502.29691-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412223502.29691-1-a.fatoum@pengutronix.de>
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_153506_704050_B02A54A3 
X-CRM114-Status: GOOD (  13.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 09/14] usbgadget: autostart: fix indeterminism around
 usbgadget.autostart
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The setter for usbgadget.autostart evaluates other device paramaters, so
it must happen postenvironment, otherwise it could run too early and not
see the device parameters it depends on. This was observed with
usbgadget.dfu_function, which wasn't loaded from the environment early
enough, but it now does.

While at it, remove some more wonkyness:

 - usbgadget_autostart_set is only ever called when the
   IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART), so drop the check

 - There is no need to make usbgadget.acm specific to autostart.
   It's behavior now is counter intuitive (enable Kconfig symbol,
   but don't set global variable and it will have an effect.
   Disable CONFIG_USB_GADGET_AUTOSTART, which looks completely
   unrelated and it no longer works.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/usbgadget.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/common/usbgadget.c b/common/usbgadget.c
index feec0b6634be..0b2d9a2120f7 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -97,7 +97,7 @@ static int usbgadget_autostart_set(struct param_d *param, void *ctx)
 	bool fastboot_bbu = get_fastboot_bbu();
 	int err;
 
-	if (!IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART) || !autostart || started)
+	if (!autostart || started)
 		return 0;
 
 	err = usbgadget_register(true, NULL, true, NULL, acm, fastboot_bbu);
@@ -109,17 +109,21 @@ static int usbgadget_autostart_set(struct param_d *param, void *ctx)
 
 static int usbgadget_globalvars_init(void)
 {
-	if (IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART)) {
-		globalvar_add_bool("usbgadget.autostart", usbgadget_autostart_set,
-				   &autostart, NULL);
-		globalvar_add_simple_bool("usbgadget.acm", &acm);
-	}
+	globalvar_add_simple_bool("usbgadget.acm", &acm);
 	globalvar_add_simple_string("usbgadget.dfu_function", &dfu_function);
 
 	return 0;
 }
 device_initcall(usbgadget_globalvars_init);
 
+static int usbgadget_autostart_init(void)
+{
+	if (IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART))
+		globalvar_add_bool("usbgadget.autostart", usbgadget_autostart_set, &autostart, NULL);
+	return 0;
+}
+postenvironment_initcall(usbgadget_autostart_init);
+
 BAREBOX_MAGICVAR(global.usbgadget.autostart,
 		 "usbgadget: Automatically start usbgadget on boot");
 BAREBOX_MAGICVAR(global.usbgadget.acm,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

