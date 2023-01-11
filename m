Delivery-date: Wed, 11 Jan 2023 19:24:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFflp-0093mz-TU
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 19:24:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFflo-0002c8-0w
	for lore@pengutronix.de; Wed, 11 Jan 2023 19:24:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Oxr1h/kJotNVWMXZfLqHZl5hspF0yitNWpzOop5ezcc=; b=1UwynYqQQIDS8qogKy6M5UTcd5
	PuHLrtniVGYvHoHLrdmAeJKcxxvTMYQYjiRQnAGw5zt0LDROSXsUjiJicQ/mbC+1eNfO/sWqOPQ4S
	JgA0L4WG0HfdyMrfDaHEchYzbSxXNGEI5nOMwmTFcDoqUCynvNCbbI0alNssNq/6+npntCAYyuUYa
	BGgBqQIdR73SUL1FbRBgEc1RxP99pUvSu9H7Kf1OnDhVzunHiA+gEi50QmuRw9DHyuzKzWlz2AZbq
	qqk1FdnXhTosY+HG3Xy5MktWdptoetpUV/WLp1Fk8quPiwcsHwebnEctKcCGHiwBpzlBlEZsvYqJL
	R0FjYKGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFfkS-00CbGW-GN; Wed, 11 Jan 2023 18:22:52 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFfkK-00CbCZ-VZ
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 18:22:47 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 0DA51E74016; Wed, 11 Jan 2023 19:22:06 +0100 (CET)
Received: from astat.fritz.box (a89-183-231-133.net-htp.de [89.183.231.133])
	by lynxeye.de (Postfix) with ESMTPA id D0E44E74008
	for <barebox@lists.infradead.org>; Wed, 11 Jan 2023 19:22:05 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 11 Jan 2023 19:21:55 +0100
Message-Id: <20230111182157.1702865-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_102245_194071_C8E85FA6 
X-CRM114-Status: GOOD (  14.38  )
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
Subject: [PATCH 1/3] nvmem: ocotp: add support for second MAC address on i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

i.MX8MP has the same quirk as the i.MX6UL: the MAC address for the
second ethernet interface is stored at an unaligned location and thus
needs to be handled by skipping the first 2 bytes from the OCOTP
register.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 7cc2b3b3db58..9d4d6e91db74 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -88,6 +88,7 @@
 #define MAC_OFFSET_0			(0x22 * 4)
 #define IMX6UL_MAC_OFFSET_1		(0x23 * 4)
 #define MAC_OFFSET_1			(0x24 * 4)
+#define IMX8MP_MAC_OFFSET_1		(0x25 * 4)
 #define MAX_MAC_OFFSETS			2
 #define MAC_BYTES			8
 #define UNIQUE_ID_NUM			2
@@ -598,7 +599,7 @@ static int imx_ocotp_read_mac(const struct imx_ocotp_data *data,
 	if (ret < 0)
 		return ret;
 
-	if (offset != IMX6UL_MAC_OFFSET_1)
+	if (offset != IMX6UL_MAC_OFFSET_1 && offset != IMX8MP_MAC_OFFSET_1)
 		data->format_mac(mac, buf, OCOTP_HW_TO_MAC);
 	else
 		data->format_mac(mac, buf + 2, OCOTP_HW_TO_MAC);
@@ -624,7 +625,8 @@ static int imx_ocotp_set_mac(struct param_d *param, void *priv)
 	if (ret < 0)
 		return ret;
 
-	if (ethaddr->offset != IMX6UL_MAC_OFFSET_1)
+	if (ethaddr->offset != IMX6UL_MAC_OFFSET_1 &&
+	    ethaddr->offset != IMX8MP_MAC_OFFSET_1)
 		ethaddr->data->format_mac(buf, ethaddr->value,
 					  OCOTP_MAC_TO_HW);
 	else
@@ -898,7 +900,7 @@ static struct imx_ocotp_data imx8mp_ocotp_data = {
 	.num_regs = 1024,
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 2,
-	.mac_offsets = { 0x90, 0x96 },
+	.mac_offsets = { 0x90, 0x94 },
 	.format_mac = imx_ocotp_format_mac,
 	.feat = &imx8mp_featctrl_data,
 };
-- 
2.39.0



