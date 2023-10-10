Delivery-date: Tue, 10 Oct 2023 16:35:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpK-003BNp-W0
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:35:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDpI-0000DG-3H
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:35:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TRH9RG/Yysxf6Q0PPVaMGNta5CDfWGRbe8EceXu9s3M=; b=qkzS/42oV2oYh5waaAbedMgmoS
	ApIeTZgZTs+dWShgCVvgN689CD5+c7FJQVA9JRM5JNxBfA5OCsNzC8VJi2EIbCxoh7WKEEY+OIioa
	pNoGLshwaLoUmeCUY1pLhAeKFGCBfk+TKnh59RC/mJqfK62q+muPye9LR3w7zWTpjnWTcYoV6YwVf
	IWkY6kt9RIsDbW79eqouDMBoDYrAp0rv5ghhLe/spFv9Is5APgLO65zLDsxngxZTvzh8vESwfWIFO
	5WrgI1RsYPh5UYAJVbUlDzPga2AklfeMMOyS1EB/cugMig9Rt21FL2CoEVy0FnBSbdVYeHE5LavOx
	sVbuACzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDo3-00Da1j-0i;
	Tue, 10 Oct 2023 14:33:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnt-00DZnC-2y
	for barebox@bombadil.infradead.org;
	Tue, 10 Oct 2023 14:33:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=TRH9RG/Yysxf6Q0PPVaMGNta5CDfWGRbe8EceXu9s3M=; b=RIYftT7TQkC47jFfB/6MEyrveE
	yTuE4UkX/BYKTuVDyP7UH/lhwrXkgauZjBpLZFUzKpx9DkFO7xYyGfJnBnEDxPY1QYIn7i7ZxZAxa
	zkcxu4UGeYt2wffta1XdcCDjGESIfES2WQrBEk0EjaQvfl+ACMm8+A0HoB1BimeA+jcYIKu3dh4td
	ClMcY0iia6wIQstyAQ/IFAEOaehCfcnAPANFRMqhILfvvtxBVu5N1kiiSa/qKRrn5sWtQzJMCy4s8
	XkHCHRyrO2YYXqjnmuP0lDq+IYuKrOV4kX8snpEAieCORqGla1MqYhdqIwoDKlFqH67xRXJFz7+E3
	Tg8iIVrA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnh-00GvFz-0M
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:43 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-Ml
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:33:09 +0200
Message-Id: <20231010143314.2031253-22-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_153334_642925_116A8EA3 
X-CRM114-Status: GOOD (  13.19  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 21/26] scripts: imx: add helper to write CSF Blocks command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The upcoming commit fixes the HAB support for FlexSPI enabled barebox
images. This commit prepares the source to keep the diff smaller.

For the upcoming fix we need a 2nd CSF command sequence which is
basically the same as the first except for the "Blocks = ...." command.
Therefore we need to handle the blocks command separately which is done
by this commit. At the moment there is no functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/imx/imx.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 933019eba449..acc8424e547d 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -296,6 +296,24 @@ static int hab_add_str(struct config_data *data, const char *str)
 	return 0;
 }
 
+static int hab_add_barebox_blocks(struct config_data *data,
+				  const char *csf_str,
+				  const char *flexspi_csf_str)
+{
+	int len = strlen(csf_str);
+
+	if (data->csf_space < len)
+		return -ENOMEM;
+
+	strcat(data->csf, csf_str);
+	if (flexspi_csf_str)
+		strcat(data->flexspi_csf, flexspi_csf_str);
+
+	data->csf_space -= len;
+
+	return 0;
+}
+
 static int do_hab(struct config_data *data, int argc, char *argv[])
 {
 	int i, ret;
@@ -343,7 +361,7 @@ imx8m_get_offset_size(struct config_data *data,
 
 static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 {
-	char *str;
+	char *str, *flexspi_str = NULL;
 	int ret;
 	int i;
 	uint32_t signed_size = data->load_size;
@@ -378,7 +396,7 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	if (ret < 0)
 		return -ENOMEM;
 
-	ret = hab_add_str(data, str);
+	ret = hab_add_barebox_blocks(data, str, flexspi_str);
 	free(str);
 	if (ret)
 		return ret;
-- 
2.39.2



