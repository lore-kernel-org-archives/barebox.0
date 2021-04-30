Delivery-date: Fri, 30 Apr 2021 15:31:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTFJ-00051H-1Y
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 15:31:53 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTFH-0007CU-Do
	for lore@pengutronix.de; Fri, 30 Apr 2021 15:31:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fv4Uf3cITcWPt/al7CFIe5E2jFreWDJGYHaEDfDbAiQ=; b=UKuKjFYH6mhTT7LUnoZ/Tco/k
	gwsHr731FV3LqznNsumPqxz/TR04Wb8/PC14RGH3MbW57AgT29tewotAMOzpdjAkGfp4sI1tpnBYG
	I6jkTPsGSi6byjTKWuqJGLNm/QldM4JSThpZOcZMFCp0GcXteZJa62tcr1ps+h6vSafpLPxfljC3t
	R/cxJRcLhv586nQ7+sWCKXhZDieusYlJC1wfVpYtQYW+G9gRcHBq7ClZWzMytHZ4VTkvgXiPP8oIf
	nwPRDjIw+kbHcvN+z+x2+/K9Chq92xrB3YjKqUXGANNUw7qCgOwwhh9k92Ci4O8g57eSB6R8SGFLw
	fUAB3svBA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcTEL-007unx-D3; Fri, 30 Apr 2021 13:30:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDb-007uZ7-54
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 13:30:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=oZ3iuqVLkVT/a7B4CWBD5i+/ihYT1agZWzL5DIGeDsw=; b=ou0vbP45202O3lIDm00nS+WGSp
 BbztZjXh2Ghosvqm3ZI1nxnmsTbZnFBI/WreVlQF6tH6q/b8QZoDE+HqjofVEroXDpUkfLfGMSzzZ
 0ShJtvkcDTeoKM84B0W9Z/9BWwi39OKXWd6xt0e8U+aSWroNnDly4WPe7PhMKVYquw8f65BfegdmP
 3vxjYKyUf3/Z4ndbVdQiGIYX8dIvC68O963Uo1QpBiybVLwLNBvQGIxDpKCiJAZ4NjMFwa1oEVf73
 fZFRna3HYR/E2bpTdXFfGGbqghK/zRwFQyIVBbFrzwYN4+ZLxImKq4y6NmTvkD+Bik2e3jeWURPCl
 phEXEPow==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDX-001PJY-GN
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 13:30:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDO-00069v-8T; Fri, 30 Apr 2021 15:29:54 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDN-0003rR-54; Fri, 30 Apr 2021 15:29:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Apr 2021 15:29:44 +0200
Message-Id: <20210430132949.14617-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210430132949.14617-1-a.fatoum@pengutronix.de>
References: <20210430132949.14617-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_063003_586473_3CE6A238 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/15] usbgadget: allow DFU and Fastboot functions to
 coexist
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

According to the commit, one upon a time the fastboot client tool
did not support a device that exports DFU as well. It does nowadays,
and while dfu-util 0.9 doesn't, it might some day.

Because these host tools are outside of barebox' control, allow both to
coexist and just throw a warning that dfu-util might not work.

With the new system partitions support, enabled fastboot and DFU mean
that autostart would start both as part of the same multi-gadget. This
would've failed, but would now just emit a warning.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/usbgadget.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/common/usbgadget.c b/common/usbgadget.c
index 0b2d9a2120f7..009debd93efc 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -52,14 +52,13 @@ int usbgadget_register(bool dfu, const char *dfu_opts,
 		return COMMAND_ERROR_USAGE;
 
 	/*
-	 * Creating a gadget with both DFU and Fastboot doesn't work.
-	 * Both client tools seem to assume that the device only has
-	 * a single configuration
+	 * Creating a gadget with both DFU and Fastboot may not work.
+	 * fastboot 1:8.1.0+r23-5 can deal with it, but dfu-util 0.9
+	 * seems to assume that the device only has a single configuration
+	 * That's not our fault though. Emit a warning and continue
 	 */
-	if (fastboot_opts && dfu_opts) {
-		pr_err("Only one of Fastboot and DFU allowed\n");
-		return -EINVAL;
-	}
+	if (fastboot_opts && dfu_opts)
+		pr_warn("Both DFU and Fastboot enabled. dfu-util may not like this!\n");
 
 	opts = xzalloc(sizeof(*opts));
 	opts->release = usb_multi_opts_release;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

