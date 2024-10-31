Delivery-date: Thu, 31 Oct 2024 12:15:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6T8l-0034jA-1K
	for lore@lore.pengutronix.de;
	Thu, 31 Oct 2024 12:15:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6T8m-0000mb-1m
	for lore@pengutronix.de; Thu, 31 Oct 2024 12:15:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VntTjUANKlb8ySXx04XeM4G7qRcJHj0Mra6o+CCACeY=; b=HJHzJq/RdjXA7utz0/jz9k+tM0
	tWAoUNNje2w4fQCz5aYF/4i7pZRVdBsYcCHKlr+Z+1gu8gKIuqeP+JuPxIkkTFHGu42s6ZkM68HA0
	ssH+pc3BQPyFKTc/9X3TFTE8TKEa0uOM3W9wztGUPbKkSOeaobcMoeYWjtCGtrK+VvzrgP5XbwCih
	RrvgOF2pbkyyQJLVpj91Vwx7tFr9l/vYICDgdzgk6GbQclZdlGuyX8RzP6xWIUskKIClqv8vRvIyH
	Pnrp4THSxslXbZ5LD2Ok0Rj2oW2v7LvnUbxEZm4smbJY0prO9Vge48MowOV+tSGJOqRtYLTttpAsA
	FQSxtwzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6T89-00000003MTk-0ZuS;
	Thu, 31 Oct 2024 11:14:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6T6V-00000003MGh-2zWK
	for barebox@lists.infradead.org;
	Thu, 31 Oct 2024 11:12:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t6T6R-0000cY-IN; Thu, 31 Oct 2024 12:12:35 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t6T6R-001LcL-0v;
	Thu, 31 Oct 2024 12:12:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t6T6R-0051Ka-0b;
	Thu, 31 Oct 2024 12:12:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 31 Oct 2024 12:12:34 +0100
Message-Id: <20241031111234.1196749-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_041239_773298_319EAFFA 
X-CRM114-Status: GOOD (  11.24  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: ele: fix forward_lifecycle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

enum ele_lifecycle describes the current lifecycle values as read from
the fuses. The ELE_FWD_LIFECYCLE_UP_REQ command takes different values
though. Use 0x8 to go to OEM closed status. The value is taken from
U-Boot-2025.01-rc1.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/ele.c | 2 +-
 drivers/hab/hab.c       | 2 +-
 include/mach/imx/ele.h  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/ele.c b/arch/arm/mach-imx/ele.c
index 48e8749b31..c209f53de4 100644
--- a/arch/arm/mach-imx/ele.c
+++ b/arch/arm/mach-imx/ele.c
@@ -370,7 +370,7 @@ int ele_write_shadow_fuse(u16 fuse_id, u32 fuse_val, u32 *response)
  *
  * Return: 0 when the ELE call succeeds, negative error code otherwise
  */
-int ele_forward_lifecycle(enum ele_lifecycle lc, u32 *response)
+int ele_forward_lifecycle(u32 lc, u32 *response)
 {
 	struct ele_msg msg;
 	int ret;
diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 800f26f26c..f684e9f1cc 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -331,7 +331,7 @@ static int imx_ahab_lockdown_device(unsigned flags)
 		return -EPERM;
 	}
 
-	ret = ele_forward_lifecycle(ELE_LIFECYCLE_OEM_CLOSED, NULL);
+	ret = ele_forward_lifecycle(0x8, NULL);
 	if (ret) {
 		pr_err("failed to forward lifecycle to OEM closed: %pe\n", ERR_PTR(ret));
 		return ret;
diff --git a/include/mach/imx/ele.h b/include/mach/imx/ele.h
index 7ba8afde20..e7226e6576 100644
--- a/include/mach/imx/ele.h
+++ b/include/mach/imx/ele.h
@@ -158,7 +158,7 @@ int ele_get_info(struct ele_get_info_data *info);
 int ele_write_fuse(u16 fuse_id, u32 fuse_val, bool lock, u32 *response);
 int ele_authenticate_container(unsigned long addr, u32 *response);
 int ele_release_container(u32 *response);
-int ele_forward_lifecycle(enum ele_lifecycle lc, u32 *response);
+int ele_forward_lifecycle(u32 lc, u32 *response);
 int ele_print_events(void);
 
 int imx93_ele_load_fw(void *bl33);
-- 
2.39.5



