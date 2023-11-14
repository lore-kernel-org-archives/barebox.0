Delivery-date: Tue, 14 Nov 2023 14:35:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tZH-00BK3r-2T
	for lore@lore.pengutronix.de;
	Tue, 14 Nov 2023 14:35:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tZH-00088f-PW
	for lore@pengutronix.de; Tue, 14 Nov 2023 14:35:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Defai2Oq0qhOcOKIrJPjM6oprKv08/kJAtCO/Ly/eoU=; b=FZ0XF4pCB4Tup5NCpHzt4j+KQO
	k2MiOy8s1NCk5YZlz+euXhfBfAdlTxuYtzdS3vvFBEvEygJYLCDaE9Lncz62sv8rTbVZF7hRu0jtJ
	fbwC75Q1hrDOU+vjZ8HZoAtaxfUZdJfr77vSbUISqvtxZG5S2Y5H72qK2pTXEFhQwkPpnJFRox9aO
	dsgRyqLDDDnmv+eyUEMue/Jta+zot4TKrVCwCrgjvr5k+cGf8LVT04xBhE+IwrLfWmZJU5yjtc2YS
	pL0muAVBwQ4yne4JGG/QNZn5ty92UX8In8b9ztkqmclQ3HxxeOFbpnvLMg29fol2fnrTZ0atuPYr0
	hqaOleww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tYJ-00G3kd-2s;
	Tue, 14 Nov 2023 13:34:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tYH-00G3jM-1j
	for barebox@lists.infradead.org;
	Tue, 14 Nov 2023 13:34:02 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1r2tYG-0007q3-Ck
	for barebox@lists.infradead.org; Tue, 14 Nov 2023 14:34:00 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 14 Nov 2023 14:33:58 +0100
Message-Id: <20231114133358.3746051-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_053401_577671_F93F37CB 
X-CRM114-Status: GOOD (  12.30  )
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
Subject: [PATCH] scripts: imx-image: don't pad the final binary for i.MX8M devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the padding was required the follwing error may appear:

| found i.MX8MP USB device [1fc9:0146]
| No dcd table in this ivt
| dl_command err=-1, last_trans=-1
| 4 in err=-4, last_trans=0  00 00 00 00

The error is triggered since the target request only the required size
of bytes and move on as soon as all bytes are received while, on the other
hand, host tools like imx-usb-loader and uuu try to send the complete
file size.

The alignment was introduced long time ago by commit 7cb4778e7f49
("imx-image: pad generated image to 4k") and may be required for HAB
boot on older SoCs like i.MX6/7. On these SoCs the CSF data is placed
behind the whole barebox image including the optional padding. On newer
SoCs like the i.MX8M* this isn't the case anymore. On these SoCs the CSF
is placed behind the barebox-pbl (aligned to 0x1000). So the final padding
isn't required anymore on these SoCs.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/imx/imx-image.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 1f96b383901f..a5639d696931 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -1100,12 +1100,21 @@ int main(int argc, char *argv[])
 
 	xwrite(outfd, infile, insize);
 
-	/* pad until next 4k boundary */
-	now = 4096 - (insize % 4096);
-	if (data.csf && now) {
-		memset(buf, 0x5a, now);
+	/*
+	 * The alignment may be required on ARMv7 SoCs like i.MX6/7 for HAB
+	 * boot. On newer SoCs like i.MX8MP/N this cause libusb communication
+	 * errors while uploading images because these machines request the
+	 * exact amount of required bytes and move on afterwards while the host
+	 * tool still try to send the whole (padded) file size.
+	 */
+	if (!cpu_is_mx8m(&data)) {
+		/* pad until next 4k boundary */
+		now = 4096 - (insize % 4096);
+		if (data.csf && now) {
+			memset(buf, 0x5a, now);
 
-		xwrite(outfd, buf, now);
+			xwrite(outfd, buf, now);
+		}
 	}
 
 	ret = close(outfd);
-- 
2.39.2



