Delivery-date: Tue, 31 May 2022 11:37:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvyJl-00G5VO-Ow
	for lore@lore.pengutronix.de; Tue, 31 May 2022 11:37:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvyJk-0002gq-K2
	for lore@pengutronix.de; Tue, 31 May 2022 11:37:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u/AUjTY3UURPMuoYKZmHGs1EWnnv/wlR31kmQEMzvaI=; b=HKnvMT+ATaQnIp
	3mtrEmpITbvMIg52Oj+Dt0AbJxtNd9pNhTIwVD639KXQNhIc9yRtqdGVSALydrAmtbDHLf0MaGJ42
	3lzhnPGnsu2En7TUUhSaRrhwz2HY3F5daj4DLidKkGW1rDMLkZtVcetTZ/IFhf9rLGnt21ikINakW
	511gP1mX+n+y5YHxSSXxtS0Qp58QJIwiE73p6u9J6uJs+wrxzf3kUcLr1UfSAghSUO8QKOOgfrMf6
	OCSe4pMxBD5rA1/bFCOnbGaiyESSUq6Z+3zDMo6Ki/yvc0+KFJVZqx0l4FV7jnLWVkHHTKjhvsjv/
	LMrLVjVPWgQvbNzM94vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvyI3-00A2qk-3M; Tue, 31 May 2022 09:35:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvyHy-00A2qN-Cv
	for barebox@lists.infradead.org; Tue, 31 May 2022 09:35:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nvyHt-0002GG-MW; Tue, 31 May 2022 11:35:41 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nvyHu-005cP1-Bm; Tue, 31 May 2022 11:35:41 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nvyHs-007GVg-AF; Tue, 31 May 2022 11:35:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lgo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 31 May 2022 11:35:37 +0200
Message-Id: <20220531093537.1731712-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_023546_476956_CEC5CAF8 
X-CRM114-Status: GOOD (  14.17  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fastboot: inform user if barebox update falls back to raw copy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fastboot code determines whether to go into barebox update handler by
checking whether filetype_is_barebox_image() returns true for the image.
This is different from the barebox_update command which leaves it to the
individual handlers to decide whether an image is suitable.

Coupled with eMMC boot partitions, this could lead to
`barebox_update -t mmc` updating the boot partition, while a
`fastboot flash bbu-mmc` will write the image to the user area instead.

It may be worth breaking backwards compatibility here and refuse update
in that case, but for now at least alert the user that a raw copy is
being attempted.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index f8ed40c86e00..50ea8421d92c 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -673,7 +673,7 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 		goto out;
 	}
 
-	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) && filetype_is_barebox_image(filetype)) {
+	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE)) {
 		void *buf;
 		struct bbu_handler *handler;
 		struct bbu_data data = {
@@ -681,6 +681,17 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 			.flags = BBU_FLAG_YES,
 		};
 
+		if (!filetype_is_barebox_image(filetype)) {
+			if (strstarts(fentry->name, "bbu-")) {
+				fastboot_tx_print(fb, FASTBOOT_MSG_INFO,
+						  "This is _not_ a barebox image...");
+				fastboot_tx_print(fb, FASTBOOT_MSG_INFO,
+						  "Falling back to raw copy to %s", filename);
+			}
+
+			goto copy;
+		}
+
 		handler = bbu_find_handler_by_device(data.devicefile);
 		if (!handler)
 			goto copy;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

