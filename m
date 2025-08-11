Delivery-date: Mon, 11 Aug 2025 14:31:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRgF-009Kts-1P
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:31:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfw-000758-1B
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:31:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DS2buvrc83y/oj/XnrAl0glyQiYEk0ft3w4RPe3gP4A=; b=GUOUf6kFfyYhbQa8RVZKqd6/CY
	bnJceyc5HYtrpWsiu2Tyi9wjiVyNnHTrDpNmrlUfYvdPo3wnnmkHmwIMKP6bj2Npqo3/ZhYUM3hw4
	bPgrhfp3KBNvRqPRQrW5rR1HfuUNIk8uYCociNFrIaqXrdEU7fU8VQf6XLZvkUWG/4rpFIWcAoJYq
	YkfGQUf/4Xqg/CcKBPmu2/wHFOXIsJ9x+iXosSINpqln8T/Fg6TlUd5ir2RL9hyoipq0yMf4kVHMN
	eQcymhX2Y4N5y/FORijPP/QxAX1Bn4Hv9HWbAv0GhJLV2NfoHRNAapc02ndn2eoUFCbsv55xmH2f6
	fgKjdflg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReO-00000007epB-3Zsk;
	Mon, 11 Aug 2025 12:29:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdl-00000007df5-17Zp
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdj-0004WP-Va; Mon, 11 Aug 2025 14:28:36 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:20 +0200
Message-Id: <20250811122824.1667791-41-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052837_362125_8F537370 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 40/44] driver: bus: export get_bus_by_name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This function will be called from the upcoming bfetch command to
reference an unexported bus.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/base/bus.c         | 3 ++-
 include/linux/device/bus.h | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index 2595c22209b4..7ee5959e8b9f 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -4,13 +4,14 @@
  */
 
 #include <common.h>
+#include <linux/device/bus.h>
 #include <driver.h>
 #include <errno.h>
 #include <of.h>
 
 DEFINE_DEV_CLASS(bus_class, "bus");
 
-static struct bus_type *get_bus_by_name(const char *name)
+struct bus_type *get_bus_by_name(const char *name)
 {
 	struct bus_type *bus;
 
diff --git a/include/linux/device/bus.h b/include/linux/device/bus.h
index 2364645bad4a..678a7ffa8a4f 100644
--- a/include/linux/device/bus.h
+++ b/include/linux/device/bus.h
@@ -22,6 +22,7 @@ struct bus_type {
 
 int bus_register(struct bus_type *bus);
 int device_match(struct device *dev, const struct driver *drv);
+struct bus_type *get_bus_by_name(const char *name);
 
 extern struct class bus_class;
 
-- 
2.39.5



