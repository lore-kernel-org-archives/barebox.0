Delivery-date: Thu, 14 Jul 2022 09:30:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtIP-007JeN-C6
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 09:30:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtIM-0002de-5b
	for lore@pengutronix.de; Thu, 14 Jul 2022 09:30:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UPmPV88NT468wMD2v0ZqLnsiZWum4VKLGnCG/jlFh9k=; b=iaPB+KyQbv5k+EYDcpXVPkfE62
	8PDW13oBBgIVBOKiGwghBExcRyfpfg/TEglNf5QTSWh0WZKDROKDvhMkcZho7Kj7UGQU0MX36ZbWS
	uISfJBT1B4LeJehIsSaoGPhkBKmhSulCb+7Wh5Qla7p0QNmA19iDDtg8i3NWOHf/9zEFaK8O1DJAK
	6HNFXncZ+7bVFH/ADFFxGHXlZxPZqY2dzaLySKa7xtFJGru6zkwJpMVoeduPm7Mx6vzgz1aCm5soC
	iNmvbpeHMstLiPtVBZECvz2N3TIOxVm4ZzkhHAEIXju4P5NVddzfpKZqvpsmm3TWvUsVW0RUIoDI3
	MrsTTptQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtGu-00BpCf-Ca; Thu, 14 Jul 2022 07:28:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtFy-00BoVA-4y
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 07:27:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFt-0001gG-S6; Thu, 14 Jul 2022 09:27:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFt-000rqT-3Z; Thu, 14 Jul 2022 09:27:25 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFr-00C1WA-Ez; Thu, 14 Jul 2022 09:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Jul 2022 09:27:22 +0200
Message-Id: <20220714072722.2863571-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220714072722.2863571-1-s.hauer@pengutronix.de>
References: <20220714072722.2863571-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_002730_420448_73371659 
X-CRM114-Status: GOOD (  12.40  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 12/12] imx-usb-loader: drop some unnecessary casting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Change the buffer pointer in transfer() to type void * to drop some
unnecessary type casting from the callers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index f3dcc61b9e..450ee14354 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -456,7 +456,7 @@ static void dump_bytes(const void *src, unsigned cnt, unsigned addr)
  * EP2IN - bulk in
  * (max packet size of 512 bytes)
  */
-static int transfer(int report, unsigned char *p, unsigned cnt, int *last_trans)
+static int transfer(int report, void *p, unsigned cnt, int *last_trans)
 {
 	int err;
 	if (cnt > mach_id->max_transfer)
@@ -527,7 +527,7 @@ static int do_status(void)
 	unsigned char tmp[64];
 	int retry = 0;
 	int err;
-	static const struct sdp_command status_command = {
+	static struct sdp_command status_command = {
 		.cmd = SDP_ERROR_STATUS,
 		.addr = 0,
 		.format = 0,
@@ -537,8 +537,7 @@ static int do_status(void)
 	};
 
 	for (;;) {
-		err = transfer(1, (unsigned char *) &status_command, 16,
-			       &last_trans);
+		err = transfer(1, &status_command, 16, &last_trans);
 
 		if (verbose > 2)
 			printf("report 1, wrote %i bytes, err=%i\n", last_trans, err);
@@ -591,8 +590,7 @@ static int read_memory(unsigned addr, void *dest, unsigned cnt)
 	read_reg_command.cnt = htonl(cnt);
 
 	for (;;) {
-		err = transfer(1, (unsigned char *) &read_reg_command, 16,
-			       &last_trans);
+		err = transfer(1, &read_reg_command, 16, &last_trans);
 		if (!err)
 			break;
 		printf("read_reg_command err=%i, last_trans=%i\n", err, last_trans);
@@ -668,8 +666,7 @@ static int write_memory(unsigned addr, unsigned val, int width)
 	write_reg_command.data = htonl(val);
 
 	for (;;) {
-		err = transfer(1, (unsigned char *) &write_reg_command, 16,
-			       &last_trans);
+		err = transfer(1, &write_reg_command, 16, &last_trans);
 		if (!err)
 			break;
 		printf("write_reg_command err=%i, last_trans=%i\n", err, last_trans);
@@ -771,8 +768,7 @@ static int load_file(void *buf, unsigned len, unsigned dladdr,
 	dl_command.rsvd = type;
 
 	for (;;) {
-		err = transfer(1, (unsigned char *) &dl_command, 16,
-			       &last_trans);
+		err = transfer(1, &dl_command, 16, &last_trans);
 		if (!err)
 			break;
 
@@ -832,8 +828,7 @@ static int sdp_jump_address(unsigned addr)
 	jump_command.addr = htonl(addr);
 
 	for (;;) {
-		err = transfer(1, (unsigned char *) &jump_command, 16,
-			       &last_trans);
+		err = transfer(1, &jump_command, 16, &last_trans);
 		if (!err)
 			break;
 
@@ -1479,7 +1474,7 @@ static int mxs_load_buf(uint8_t *data, int size)
 	dl_command.cmd = MXS_CMD_FW_DOWNLOAD;
 	dl_command.dw_size = htonl(size);
 
-	err = transfer(1, (unsigned char *) &dl_command, 20, &last_trans);
+	err = transfer(1, &dl_command, 20, &last_trans);
 	if (err) {
 		printf("transfer error at init step: err=%i, last_trans=%i\n",
 		       err, last_trans);
-- 
2.30.2



