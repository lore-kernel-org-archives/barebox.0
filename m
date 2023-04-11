Delivery-date: Tue, 11 Apr 2023 11:40:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmATx-00HQ1h-OG
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 11:40:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmATx-0007j3-E7
	for lore@pengutronix.de; Tue, 11 Apr 2023 11:40:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9ChmKvY0j/0prrothtJiLnDUmxSM0Q73D20khnOc43M=; b=Kt0wf6wQe0rRPjdaFwLlRLigeF
	/2/jbJzLWlvmcmSoSlYm0ND+1j9/gONn75PVq+TnkieJyrO5UlI2yCmDqy+T3w8NDMsJevCPiXFKW
	Z3CNCtgbBpFNwEwnM1guKWJ/jE8wBw6oURa4cvFxKfUC+z2ietUhpcMpwrINmtthUXcBg4EQofzCs
	ZiqTWcTuSHUeqgyh+q19/VhbvmsPxzl5m2+JoRFQiAzyOpjTDeKdfaalyac+3RCMKb9JTqTQ/j4YC
	Trp5G8wyWNBytIVHmvLhR/H9Iv4ICStl4jsQb6mz6Zl3GEpgVVR8pejP92hXC26jNpdNFkI/lzu+J
	jaHFoT9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmASp-00H6A8-0F;
	Tue, 11 Apr 2023 09:38:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmASi-00H64F-2r
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 09:38:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pmASe-0007RI-3J; Tue, 11 Apr 2023 11:38:48 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmASd-00ATJK-DJ; Tue, 11 Apr 2023 11:38:47 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pmASc-005Zvu-3X; Tue, 11 Apr 2023 11:38:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Apr 2023 11:38:42 +0200
Message-Id: <20230411093844.1297004-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411093844.1297004-1-a.fatoum@pengutronix.de>
References: <20230411093844.1297004-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_023852_924944_42A35986 
X-CRM114-Status: GOOD (  16.28  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] imx-usb-loader: don't depend on arpa/inet.h for endianness conversion
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have <scripts/compiler.h>, which offers endianness conversion
for non-Linux platforms like MacOS. Let's use that to reduce our
dependency on external implementation-defined headers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 49 ++++++++++++++++++------------------
 1 file changed, 24 insertions(+), 25 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 4bcb4cbab6fe..41d57906c752 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -31,7 +31,6 @@
 #include <stdlib.h>
 #include <libusb.h>
 #include <getopt.h>
-#include <arpa/inet.h>
 #include <linux/kernel.h>
 
 #include "../common.h"
@@ -594,8 +593,8 @@ static int read_memory(unsigned addr, void *dest, unsigned cnt)
 	int err;
 	int rem;
 	unsigned char tmp[64];
-	read_reg_command.addr = htonl(addr);
-	read_reg_command.cnt = htonl(cnt);
+	read_reg_command.addr = htobe32(addr);
+	read_reg_command.cnt = htobe32(cnt);
 
 	for (;;) {
 		err = transfer(1, &read_reg_command, 16, &last_trans);
@@ -651,8 +650,8 @@ static int write_memory(unsigned addr, unsigned val, int width)
 		.rsvd = 0,
 	};
 
-	write_reg_command.addr = htonl(addr);
-	write_reg_command.cnt = htonl(4);
+	write_reg_command.addr = htobe32(addr);
+	write_reg_command.cnt = htobe32(4);
 
 	if (verbose > 1)
 		printf("write memory reg: 0x%08x val: 0x%08x width: %d\n", addr, val, width);
@@ -671,7 +670,7 @@ static int write_memory(unsigned addr, unsigned val, int width)
 			return -1;
 	}
 
-	write_reg_command.data = htonl(val);
+	write_reg_command.data = htobe32(val);
 
 	for (;;) {
 		err = transfer(1, &write_reg_command, 16, &last_trans);
@@ -771,8 +770,8 @@ static int load_file(void *buf, unsigned len, unsigned dladdr,
 
 	len = ALIGN(len, 4);
 
-	dl_command.addr = htonl(dladdr);
-	dl_command.cnt = htonl(len);
+	dl_command.addr = htobe32(dladdr);
+	dl_command.cnt = htobe32(len);
 	dl_command.rsvd = type;
 
 	for (;;) {
@@ -833,7 +832,7 @@ static int sdp_jump_address(unsigned addr)
 	int last_trans, err;
 	int retry = 0;
 
-	jump_command.addr = htonl(addr);
+	jump_command.addr = htobe32(addr);
 
 	for (;;) {
 		err = transfer(1, &jump_command, 16, &last_trans);
@@ -862,10 +861,10 @@ static int do_dcd_v2_cmd_write(const unsigned char *dcd)
 	int set_bits = 0, clear_bits = 0;
 	int idx, bytes;
 	struct imx_dcd_v2_write *recs = (struct imx_dcd_v2_write *) dcd;
-	int num_rec = (ntohs(recs->length) - 4) /
+	int num_rec = (be16toh(recs->length) - 4) /
 		      sizeof(struct imx_dcd_v2_write_rec);
 	printf("DCD write: sub dcd length: 0x%04x, flags: 0x%02x\n",
-		ntohs(recs->length), recs->param);
+		be16toh(recs->length), recs->param);
 
 	if (recs->param & PARAMETER_FLAG_MASK) {
 		if (recs->param & PARAMETER_FLAG_SET)
@@ -886,8 +885,8 @@ static int do_dcd_v2_cmd_write(const unsigned char *dcd)
 
 	for (idx = 0; idx < num_rec; idx++) {
 		const struct imx_dcd_v2_write_rec *record = &recs->data[idx];
-		int ret = modify_memory(ntohl(record->addr),
-				 ntohl(record->val), bytes,
+		int ret = modify_memory(be32toh(record->addr),
+				 be32toh(record->val), bytes,
 				 set_bits, clear_bits);
 		if (ret < 0)
 			return ret;
@@ -902,13 +901,13 @@ static int do_dcd_v2_cmd_check(const unsigned char *dcd)
 	int bytes;
 	enum imx_dcd_v2_check_cond cond;
 	struct imx_dcd_v2_check *check = (struct imx_dcd_v2_check *) dcd;
-	switch (ntohs(check->length)) {
+	switch (be16toh(check->length)) {
 	case 12:
 		/* poll indefinitely */
 		poll_count = 0xffffffff;
 		break;
 	case 16:
-		poll_count = ntohl(check->count);
+		poll_count = be32toh(check->count);
 		if (poll_count == 0)
 			/* this command behaves as for NOP */
 			return 0;
@@ -941,10 +940,10 @@ static int do_dcd_v2_cmd_check(const unsigned char *dcd)
 		return -1;
 	}
 
-	mask = ntohl(check->mask);
+	mask = be32toh(check->mask);
 
 	fprintf(stderr, "DCD check condition %i on address 0x%x\n",
-		cond, ntohl(check->addr));
+		cond, be32toh(check->addr));
 	/* Reduce the poll count to some arbitrary practical limit.
 	   Polling via SRP commands will be much slower compared to
 	   polling when DCD is interpreted by the SOC microcode.
@@ -954,7 +953,7 @@ static int do_dcd_v2_cmd_check(const unsigned char *dcd)
 
 	while (poll_count > 0) {
 		uint32_t data = 0;
-		int ret = read_memory(ntohl(check->addr), &data, bytes);
+		int ret = read_memory(be32toh(check->addr), &data, bytes);
 		if (ret < 0)
 			return ret;
 
@@ -983,7 +982,7 @@ static int do_dcd_v2_cmd_check(const unsigned char *dcd)
 
 	fprintf(stderr, "Error: timeout waiting for DCD check condition %i "
 		"on address 0x%08x to match 0x%08x\n", cond,
-		ntohl(check->addr), ntohl(check->mask));
+		be32toh(check->addr), be32toh(check->mask));
 	return -1;
 }
 
@@ -1015,7 +1014,7 @@ static int process_dcd_table_ivt(const struct imx_flash_header_v2 *hdr,
 		fprintf(stderr, "Error: Unknown DCD header tag\n");
 		return -1;
 	}
-	m_length = ntohs(dcd_hdr->length);
+	m_length = be16toh(dcd_hdr->length);
 	dcd_end = dcd + m_length;
 	if (dcd_end > file_end) {
 		fprintf(stderr, "Error: DCD length %08x exceeds EOF\n",
@@ -1028,7 +1027,7 @@ static int process_dcd_table_ivt(const struct imx_flash_header_v2 *hdr,
 	while (dcd < dcd_end) {
 		int ret = 0;
 		struct imx_ivt_header *cmd_hdr = (struct imx_ivt_header *) dcd;
-		unsigned s_length = ntohs(cmd_hdr->length);
+		unsigned s_length = be16toh(cmd_hdr->length);
 		if (dcd +  s_length > file_end) {
 			fprintf(stderr, "Error: DCD length %08x exceeds EOF\n",
 				s_length);
@@ -1473,14 +1472,14 @@ static int mxs_load_buf(uint8_t *data, int size)
 	static struct mxs_command dl_command;
 	int last_trans, err;
 
-	dl_command.sign = htonl(0x424c5443); /* Signature: BLTC */
-	dl_command.tag = htonl(0x1);
-	dl_command.size = htonl(size);
+	dl_command.sign = htobe32(0x424c5443); /* Signature: BLTC */
+	dl_command.tag = htobe32(0x1);
+	dl_command.size = htobe32(size);
 	dl_command.flags = 0;
 	dl_command.rsvd[0] = 0;
 	dl_command.rsvd[1] = 0;
 	dl_command.cmd = MXS_CMD_FW_DOWNLOAD;
-	dl_command.dw_size = htonl(size);
+	dl_command.dw_size = htobe32(size);
 
 	err = transfer(1, &dl_command, 20, &last_trans);
 	if (err) {
-- 
2.39.2



