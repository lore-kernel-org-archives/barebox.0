Delivery-date: Thu, 09 Mar 2023 11:43:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDjw-00EiJd-VM
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 11:43:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDjv-0000Q0-Qk
	for lore@pengutronix.de; Thu, 09 Mar 2023 11:43:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tc6WFFjME16ag+Oc++RllonDY9YQYm0LDDu1aYmitFI=; b=bnp79zLDdoEKOWMycxvpGhZ70t
	btbTeq+aP9E3XION2s3hSTY8GbKX1mz0d8dA2WdvIkI1MpPQd35NfJZLsCZvpg4rnbwN+eV/+qu+E
	wezy3R6vx3JD3DaEMf2Cg9DTZ/ky23LxRO8mIafEqsxKJN35P/f6Lr2WeQyazjL64BI4PejV9FZtN
	eYARb3o+4I+EIeWfzmPO6NVOn897pS/7IVi3t07KhZLIJBOcMOhgilvfjnSH5BIgMPRG3mHO3IrfE
	WL/KEEFcN5Ls2aDNmVzMbNkoJ2JHaH3iLsOTbriCfaOihM1LlcuGx1BnK2JdY/dgLjD8L4hz6CAL4
	pu8l9iQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDia-0098xP-4Q; Thu, 09 Mar 2023 10:41:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDhU-00989G-Gk
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 10:40:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1paDhR-0007YT-Ja
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:40:41 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 09 Mar 2023 11:40:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v1-13-7b3c3fa295f5@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_024044_585654_26E36ABD 
X-CRM114-Status: GOOD (  10.81  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/21] scripts: imx-image: header_v2: add header_len
 parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make header_len a parameter which is required for later on i.MX8MM
FlexSPI image support.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/imx/imx-image.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index fd8dc23cf9..aaec4cc0fd 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -296,7 +296,8 @@ static int write_mem_v1(uint32_t addr, uint32_t val, int width, int set_bits, in
  */
 
 static size_t
-add_header_v2(const struct config_data *data, void *buf, uint32_t offset)
+add_header_v2(const struct config_data *data, void *buf, uint32_t offset,
+	      size_t header_len)
 {
 	struct imx_flash_header_v2 *hdr;
 	int dcdsize = curdcd * sizeof(uint32_t);
@@ -308,7 +309,7 @@ add_header_v2(const struct config_data *data, void *buf, uint32_t offset)
 		 * Restrict the imagesize to the PBL if given.
 		 * Also take the alignment for CSF into account.
 		 */
-		imagesize = roundup(data->pbl_code_size + HEADER_LEN, 0x4);
+		imagesize = roundup(data->pbl_code_size + header_len, 0x4);
 		if (data->csf)
 			imagesize = roundup(imagesize, 0x1000);
 	}
@@ -320,7 +321,7 @@ add_header_v2(const struct config_data *data, void *buf, uint32_t offset)
 	hdr->header.length	= htobe16(32);
 	hdr->header.version	= IVT_VERSION;
 
-	hdr->entry		= loadaddr + HEADER_LEN;
+	hdr->entry		= loadaddr + header_len;
 	if (dcdsize)
 		hdr->dcd_ptr = loadaddr + offset + offsetof(struct imx_flash_header_v2, dcd_header);
 	if (create_usb_image) {
@@ -906,7 +907,7 @@ int main(int argc, char *argv[])
 
 		barebox_image_size += add_header_v2(&data, buf +
 						    signed_hdmi_firmware_size,
-						    data.image_ivt_offset);
+						    data.image_ivt_offset, HEADER_LEN);
 		break;
 	default:
 		fprintf(stderr, "Congratulations! You're welcome to implement header version %d\n",

-- 
2.30.2



