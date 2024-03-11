Delivery-date: Mon, 11 Mar 2024 11:22:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjcng-000tV9-1L
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 11:22:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjcnc-0008Ai-8q
	for lore@pengutronix.de; Mon, 11 Mar 2024 11:22:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lsbfjdsx7dNa0sHi1AETrY1ZganpiX5Tb4+iPAKly94=; b=UWTpPpV8WHCjXnyCytaYRIURLY
	jt2zAyu2T0QQ+W+cAPmb6zxoJMZZz/g+DitsqQ6HZCTcWEizeZXnrmHV65qdefmGp0C/oYUwBpHjR
	7JjfMGe8THBIOkSFA3hapVJjnXx6OPGE9HrMfDFvci8JqzdEBdqfYR+zmEFsMl1flT4STssOkWEon
	eooYXuTr6Fvd0qhtvnOPk1/hOoKHdNIIT6ybbFqVGSW4udNNMiZO5iGtRpkg1bqYv8qZo/PJhkxIK
	nRrAojrefYq0tq5l+W7jTgeZR5RNTV/QOmMZIirP5+gIo5Pxc/L+U4q/OlaVdruXpkh7SqQhu103P
	x1bei5YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjcnA-000000014nD-0BUm;
	Mon, 11 Mar 2024 10:22:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjcn6-000000014l6-3JrC
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 10:21:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjcn4-0007fL-RB; Mon, 11 Mar 2024 11:21:54 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjcn4-005gyn-El; Mon, 11 Mar 2024 11:21:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjcn4-001WE1-19;
	Mon, 11 Mar 2024 11:21:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 11 Mar 2024 11:21:49 +0100
Message-Id: <20240311102152.360762-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240311102152.360762-1-s.hauer@pengutronix.de>
References: <20240311102152.360762-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_032156_902172_FFD2064B 
X-CRM114-Status: GOOD (  13.79  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/5] ARM: i.MX: ele: add function comments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

i.MX fuse numbers are sometimes referred to as the index of the 32bit
word, sometimes as bit offsets and the device in /dev/imx_ocotp counts
in bytes. To avoid more confusion add some comments to the function
headers of functions reading/writing the fuses that clearly state that
they take the 32bit word number as input.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/ele.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/ele.c b/arch/arm/mach-imx/ele.c
index 095eaec8f6..ce5ad287d8 100644
--- a/arch/arm/mach-imx/ele.c
+++ b/arch/arm/mach-imx/ele.c
@@ -207,6 +207,16 @@ int imx93_ele_load_fw(void *bl33)
 	return 0;
 }
 
+/*
+ * ele_read_common_fuse - read a fuse
+ * @fuse_id: The fuse to read (in 32bit word number)
+ * fuse_word: The value read from the fuse
+ * @response: on return contains the response from ELE
+ *
+ * This reads the shadow value of the fuse @fuse_id.
+ *
+ * Return: 0 when the ELE call succeeds, negative error code otherwise
+ */
 int ele_read_common_fuse(u16 fuse_id, u32 *fuse_word, u32 *response)
 {
 	struct ele_msg msg;
@@ -228,6 +238,16 @@ int ele_read_common_fuse(u16 fuse_id, u32 *fuse_word, u32 *response)
 	return ret;
 }
 
+/*
+ * ele_read_shadow_fuse - read a fuse
+ * @fuse_id: The fuse to read (in 32bit word number)
+ * fuse_word: The value read from the fuse
+ * @response: on return contains the response from ELE
+ *
+ * This reads the shadow value of the fuse @fuse_id.
+ *
+ * Return: 0 when the ELE call succeeds, negative error code otherwise
+ */
 int ele_read_shadow_fuse(u16 fuse_id, u32 *fuse_word, u32 *response)
 {
 	struct ele_msg msg;
@@ -251,7 +271,7 @@ int ele_read_shadow_fuse(u16 fuse_id, u32 *fuse_word, u32 *response)
 
 /*
  * ele_write_fuse - write a fuse
- * @fuse_id: The fuse to write to
+ * @fuse_id: The fuse to write to (in 32bit word number)
  * @fuse_val: The value to write to the fuse
  * @lock: lock fuse after writing
  * @response: on return contains the response from ELE
-- 
2.39.2



