Delivery-date: Mon, 04 Dec 2023 08:30:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rA3Po-002VHc-2l
	for lore@lore.pengutronix.de;
	Mon, 04 Dec 2023 08:30:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rA3Po-0000RQ-T0
	for lore@pengutronix.de; Mon, 04 Dec 2023 08:30:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vNsIPRW8jl9yLCcH8/1z557/0iYoXjBld7srqaM0GYA=; b=GM3cjLjdCOSN1F9MHsPgSMgzwc
	rxKuMnIuumLrDn3lbQxf8CpiPPZTiMVklyhlbUPzYKMe7X4h9x6QlINlo3rUPCzEmE4D0ucDT+UWa
	shm5ESylcXbx9KBgt0zmB1gx8nlwv9yPPRlYFchoQhcgkwEc42hPH0Vrx40ZtKuu/sX3D3EMfHLk6
	/wbifIzW0HhSDd7ELbgI3GuG58yfuUymzrvUulgTcRdxISLKUupKBl7BSyQRdw3fvaaWoRsXKAGpi
	AxayPuKeHfjjzybQAAARwS6U7x/izaXPIGvvgv5vP5IJTBrgBozIEp12oCllxReAQ1+a+9dwwvpRM
	TSwuJg/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA3O5-0039RK-1c;
	Mon, 04 Dec 2023 07:29:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA3O0-0039Qu-2d
	for barebox@lists.infradead.org;
	Mon, 04 Dec 2023 07:29:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rA3Nt-0000At-JM; Mon, 04 Dec 2023 08:28:53 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rA3Ns-00DSqa-Bt; Mon, 04 Dec 2023 08:28:52 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rA3Ns-00AYLs-0z;
	Mon, 04 Dec 2023 08:28:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  4 Dec 2023 08:28:51 +0100
Message-Id: <20231204072851.2515319-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_232900_854557_E8EE3168 
X-CRM114-Status: GOOD (  11.61  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] drivers: firmware: arm-scmi: Fix iterating over idr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The iterator in idr_for_each_entry() is the pointer we store in the idr,
not the idr element itself.

Fixes: d28d3d9159 ("include: linux/idr.h: implement more Linux API")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/firmware/arm_scmi/driver.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 98f6727465..19fb77f4ea 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -990,9 +990,9 @@ int scmi_protocol_device_request(const struct scmi_device_id *id_table)
 {
 	int id, ret = 0;
 	struct list_head *phead = NULL;
+	struct list_head *head;
 	struct scmi_requested_dev *rdev;
 	struct scmi_info *info;
-	struct idr *idr;
 
 	pr_debug("Requesting SCMI device (%s) for protocol 0x%x\n",
 		 id_table->name, id_table->protocol_id);
@@ -1001,8 +1001,7 @@ int scmi_protocol_device_request(const struct scmi_device_id *id_table)
 	 * Search for the matching protocol rdev list and then search
 	 * of any existent equally named device...fails if any duplicate found.
 	 */
-	idr_for_each_entry(&scmi_requested_devices, idr, id) {
-		struct list_head *head = idr->ptr;
+	idr_for_each_entry(&scmi_requested_devices, head, id) {
 		if (!phead) {
 			/* A list found registered in the IDR is never empty */
 			rdev = list_first_entry(head, struct scmi_requested_dev,
-- 
2.39.2



