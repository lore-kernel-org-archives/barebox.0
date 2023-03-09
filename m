Delivery-date: Thu, 09 Mar 2023 11:43:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDjt-00EiJ5-H4
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 11:43:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDjs-0000NJ-Nx
	for lore@pengutronix.de; Thu, 09 Mar 2023 11:43:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MgBjnCEdDgt6iLkoeaE86+pRh5ho/N4+Wci8oOanz8w=; b=xznHZ6NY9cNLU3+wjAvo7P+9bq
	CkiZPYZiHnzGX+Ml9TCiLfkcWbGNbkp84/uwJT8xft9wtoL/IbRh77uxn0aTCBvq0igR2KKXU472r
	sfMc+Zj4lTIwZbkmX5R36WB8X6shNU7AfkCE5VdKYxuBSkXp/BnAgceKNbXEVBH+PI3BU4xrlLAYZ
	PJ6LSJkB2o/Oqj2OenS3f+lwGZLla8SGhNL4Glunjn1HbnsI7m74ZrPjmYuLoncKfZwK9Jq3qlp6l
	YrHB9WCsL68rLxWDaTvRJJnWzKoAJP9Y4T+dbQCFHAEHGC3H50ezc0Wp59Q/3/Sc7ANPBix4tdmq7
	0yaq2syg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDiT-0098rl-KM; Thu, 09 Mar 2023 10:41:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDhU-009899-By
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 10:40:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1paDhR-0007YT-FV
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:40:41 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 09 Mar 2023 11:40:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v1-12-7b3c3fa295f5@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_024044_438098_1905FB12 
X-CRM114-Status: UNSURE (   9.91  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/21] scripts: imx-image: header_v2: factor out offset
 parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make the offset variable a parameter to make it possible to write
multiple ivt headers on multiple offsets. While on it use uint32_t
to match the data.image_ivt_offset type.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/imx/imx-image.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 3da2b81841..fd8dc23cf9 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -295,11 +295,11 @@ static int write_mem_v1(uint32_t addr, uint32_t val, int width, int set_bits, in
  * ============================================================================
  */
 
-static size_t add_header_v2(const struct config_data *data, void *buf)
+static size_t
+add_header_v2(const struct config_data *data, void *buf, uint32_t offset)
 {
 	struct imx_flash_header_v2 *hdr;
 	int dcdsize = curdcd * sizeof(uint32_t);
-	int offset = data->image_ivt_offset;
 	uint32_t loadaddr = data->image_load_addr;
 	uint32_t imagesize = data->load_size;
 
@@ -905,7 +905,8 @@ int main(int argc, char *argv[])
 		}
 
 		barebox_image_size += add_header_v2(&data, buf +
-						    signed_hdmi_firmware_size);
+						    signed_hdmi_firmware_size,
+						    data.image_ivt_offset);
 		break;
 	default:
 		fprintf(stderr, "Congratulations! You're welcome to implement header version %d\n",

-- 
2.30.2



