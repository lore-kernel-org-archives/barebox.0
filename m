Delivery-date: Tue, 13 Apr 2021 00:36:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5AY-0006CO-3x
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 00:36:34 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5AW-0006tH-1J
	for lore@pengutronix.de; Tue, 13 Apr 2021 00:36:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sQkUegbmjP8RamzqRRNokx78OFYF1BEJ1j5btt7gM/o=; b=ZKWVFusTKIc+5wdVVAcJEUT+z
	nALhAl7fXSccs1scuTom/YOA25w0BaRkJ6qAjyCy9OASJxPpl5LubIX8e7A1IfRVzOduik6WlBgRW
	6AUYHRhPHOc1iTp1EGNP++E2ueRHPoWqabKEAQ5kwmjZZ4v3/XrzM8Y7IgekGbiD9foge4n0gUXAj
	rPoKq3m/qWf3lpTfx2x8TsMRGBDtsTK/AXVeeX21HEq9kek5Bbs/X6xw08945usDgoI5iPen4yfn0
	2QR7dsopCQOBSXzRWSpNAwQz7PIGEuJ+C46vk9j2MQoi8c31n86NHAT8AjwTjtOptmLxZx44VxPuJ
	yyLZYfJVQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW59P-007n8s-Pz; Mon, 12 Apr 2021 22:35:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59C-007n6p-Go
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 22:35:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=XP7QtcRJ2lWo4cER8bK2vhbuGtWi/axpZIXoleFvQ34=; b=aF4khN+ZKQTKz/iHnia1/8QDZ3
 Z0QVSLk0d8cYIKikCIx9bPdZvtiuPlOhHXQAdBUJJMouQc6scTs5GQGIoN3YHye4l7NRzUv5+YBHI
 ReWDjv9TGvIYzmqZAEBLT39wRr/rCjinli/esSrYYd0+WkJsdUHwTx/ju6Ihh5fsQhF7qi8fyAVBi
 8Ddxp9mMcVJ4dDAG1IYBzcHSZuBorQ3RghJeQ5ifhLfQUsfUvEx1ZWGcWXAehuOVzpQ0a8Wf9tFaU
 zJJoi7VrTNZf7xeYtYIiuYbN7avt3rTon4FhWLRlxs5jabJdqGJuls6B3d+vaZh+AH3gS9RTmmMWh
 ivi2c3sA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW598-006ap7-IE
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 22:35:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW597-0006BQ-9D; Tue, 13 Apr 2021 00:35:05 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lW596-0003tT-FG; Tue, 13 Apr 2021 00:35:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Apr 2021 00:34:58 +0200
Message-Id: <20210412223502.29691-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412223502.29691-1-a.fatoum@pengutronix.de>
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_153506_669468_71336B0A 
X-CRM114-Status: GOOD (  14.33  )
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
Subject: [PATCH 10/14] usbgadget: allow DFU and Fastboot functions to coexist
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

According to the commit, one upon a time the fastboot client tool
did not support a device that exports DFU as well. It does nowadays,
and while dfu-util 0.9 doesn't, it might some day.

Because these host tools are outside of barebox' control, allow both to
coexist and just throw a warning that dfu-util might not work.

With the new machine partitions support, enabled fastboot and DFU mean
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

