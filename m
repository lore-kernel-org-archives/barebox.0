Delivery-date: Thu, 04 Apr 2024 20:40:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsS18-00AYds-0K
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 20:40:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsS16-0003B1-Rq
	for lore@pengutronix.de; Thu, 04 Apr 2024 20:40:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C5/YMHuol3EhQzmcoSoBN9MOcTH8iIm9Zn+EIYQOT9Y=; b=UPAOepuzfCDR8MRrzgtdTQ3vOh
	JRfJfZhX9ZTxkD+tz/314N7WO5JCi6WCKLPf63xc8CTrVY0ztg83R3UXvltImPUTz6X5xTbbYjmBs
	Urvj1cMagoRmidrKjp0BCo4uaH0/myleLnELGR3u+qxbJLRybsUDLUByYzwX0dwkXmKTWK22XlYb5
	t/DgKlgBp2Ughdmxm70a0MwlNVhprI1N7ayDiOB0gYTOcW93WuYkEewvpAYSXVRQ5lQsEg+kyifBU
	Z18fBPhMkDYXfkd5gon26w/zvQiGXY9qh/figWxZ5quWJkQ/IB2W8BIbOxXIhwPlby8tKzdXroesQ
	u+gOcjzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsS0f-00000003sPh-0b1w;
	Thu, 04 Apr 2024 18:40:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsS0S-00000003sJR-13s1
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 18:40:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0J-0001se-3O; Thu, 04 Apr 2024 20:40:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-00AQQu-Ls; Thu, 04 Apr 2024 20:40:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-006VVt-1t;
	Thu, 04 Apr 2024 20:40:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  4 Apr 2024 20:39:58 +0200
Message-Id: <20240404184001.1532897-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
References: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_114012_325509_7A4F9293 
X-CRM114-Status: GOOD (  10.89  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/10] net: usb: smsc95xx: don't opencode get/put_aligned_le32
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This introduces no functional change, but makes code easier to read and
aligns us some more with the current Linux state of the driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/usb/smsc95xx.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/net/usb/smsc95xx.c b/drivers/net/usb/smsc95xx.c
index b6f81cfab825..ab0059fcdb0f 100644
--- a/drivers/net/usb/smsc95xx.c
+++ b/drivers/net/usb/smsc95xx.c
@@ -7,6 +7,7 @@
 #include <net.h>
 #include <linux/usb/usb.h>
 #include <linux/usb/usbnet.h>
+#include <asm/unaligned.h>
 #include <malloc.h>
 #include <asm/byteorder.h>
 #include <errno.h>
@@ -757,8 +758,7 @@ static int smsc95xx_rx_fixup(struct usbnet *dev, void *buf, int len)
 		unsigned char *packet;
 		u16 size;
 
-		memcpy(&header, buf, sizeof(header));
-		le32_to_cpus(&header);
+		header = get_unaligned_le32(buf);
 		buf += 4 + NET_IP_ALIGN;
 		len -= 4 + NET_IP_ALIGN;
 		packet = buf;
@@ -816,13 +816,11 @@ static int smsc95xx_tx_fixup(struct usbnet *dev,
 {
 	u32 tx_cmd_a, tx_cmd_b;
 
-	tx_cmd_a = (u32)(len) | TX_CMD_A_FIRST_SEG_ | TX_CMD_A_LAST_SEG_;
-	cpu_to_le32s(&tx_cmd_a);
-	memcpy(nbuf, &tx_cmd_a, 4);
+	tx_cmd_b = (u32)len;
+	tx_cmd_a = tx_cmd_b | TX_CMD_A_FIRST_SEG_ | TX_CMD_A_LAST_SEG_;
 
-	tx_cmd_b = (u32)(len);
-	cpu_to_le32s(&tx_cmd_b);
-	memcpy(nbuf + 4, &tx_cmd_b, 4);
+	put_unaligned_le32(tx_cmd_a, nbuf);
+	put_unaligned_le32(tx_cmd_b, nbuf + 4);
 
 	memcpy(nbuf + 8, buf, len);
 
-- 
2.39.2



