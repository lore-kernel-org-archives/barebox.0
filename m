Delivery-date: Thu, 14 Jul 2022 09:29:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHs-007Jal-0X
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 09:29:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHp-0002OM-AR
	for lore@pengutronix.de; Thu, 14 Jul 2022 09:29:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WEUA46IBErD4+fyVi9lKVvhwoFq9AyY8/ZdTNuLsvmY=; b=ydXjSCluYS0lDsF0HQaIF2ZHk7
	9z7r8pHFHw5I/IyBazbT41KtMCIzDmVyRDGJvSgyL9Tqg9Wzwj5uciNxrIDsLuwDipRFFD9/CNNXr
	b89ilBGK0X1+42i9OqQcIzfvnPVzJ9J041YWvd7L6sV7cYPW1GjWRSI+vpN8UI9aJVgu1s7oIvK+V
	x9LX9Mu385g96Svr31qUE73SSMIi+K8EPyWB9NLQO7ovg+aDksVb1pbMDxVHMg6eKOMi4js0jcP2E
	GQBbq7zJThJi4SpG3640telQV0PHleWzhQVdzxeKQYOs8YappT+VVqiy4nnJzn2olEmDnH4Y4lu3d
	pEi3TcHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtGU-00Botc-Kx; Thu, 14 Jul 2022 07:28:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtFy-00BoVn-3S
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 07:27:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFu-0001ha-KH; Thu, 14 Jul 2022 09:27:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFt-000rqk-TO; Thu, 14 Jul 2022 09:27:25 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFr-00C1Vs-C5; Thu, 14 Jul 2022 09:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Jul 2022 09:27:16 +0200
Message-Id: <20220714072722.2863571-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220714072722.2863571-1-s.hauer@pengutronix.de>
References: <20220714072722.2863571-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_002730_362478_7AF6B612 
X-CRM114-Status: GOOD (  13.32  )
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
Subject: [PATCH 06/12] imx-usb-loader: rename mxs functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mxs_load_file() actually uploads a buffer, so rename accordingly.
mxs_work() doesn't have a meaningful name at all, so rename to what
it actually does, mxs_load_file().

While at it remove the unused libusb_device_handle * argument.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 1d19ea0a81..5f7dc3bc0b 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1450,8 +1450,7 @@ static int write_mem(const struct config_data *data, uint32_t addr,
 	return modify_memory(addr, val, width, set_bits, clear_bits);
 }
 
-/* MXS section */
-static int mxs_load_file(libusb_device_handle *dev, uint8_t *data, int size)
+static int mxs_load_buf(uint8_t *data, int size)
 {
 	static struct mxs_command dl_command;
 	int last_trans, err;
@@ -1477,7 +1476,7 @@ static int mxs_load_file(libusb_device_handle *dev, uint8_t *data, int size)
 	return err;
 }
 
-static int mxs_work(struct usb_work *curr)
+static int mxs_load_file(struct usb_work *curr)
 {
 	size_t fsize = 0;
 	unsigned char *buf = NULL;
@@ -1486,9 +1485,8 @@ static int mxs_work(struct usb_work *curr)
 	if (!buf)
 		return -errno;
 
-	return mxs_load_file(usb_dev_handle, buf, fsize);
+	return mxs_load_buf(buf, fsize);
 }
-/* end of mxs section */
 
 static int parse_initfile(const char *filename)
 {
@@ -1608,7 +1606,7 @@ int main(int argc, char *argv[])
 	}
 
 	if (mach_id->dev_type == DEV_MXS) {
-		ret = mxs_work(&w);
+		ret = mxs_load_file(&w);
 		goto out;
 	}
 
-- 
2.30.2



