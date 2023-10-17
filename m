Delivery-date: Tue, 17 Oct 2023 16:55:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTq-00Bsj9-VV
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:55:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTp-0004Ck-Lo
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:55:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K9/RI+7ly4vxjsv0t1/4e0Y/bQyaYhz8K03/IhJjI44=; b=IMHFXWEGCzKPHRcUFc2IcuOy4w
	8Q9+Uf1Y7DDLwUc8WWWMR74r39PsVqW8GS2S5UZASFpa28advld48BI2hLndmJspgKvPu5GSktzRh
	VUUXvLbutfBIPFQUV6KMQJAjiIvBHsRHcahbh7ya4OTJDvPp37BSdu8v8TgmaurGF0ZdJTqCObMXz
	gpZ3TPXB5G6TdintG+WoRenZEtIDYREgt9LQSwxjrxfgZbdgoAWVtRBDPJNcBem86fMsn3VD1B4oD
	d3HF4UouRl5brHuBE0bkTCwQOAF8wOZXmCGk6+OoEsBkOHo3o1iI/J+ZBa+K57JZ61E0zHIIrvF+B
	iSrBBiIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslSb-00Cf1s-33;
	Tue, 17 Oct 2023 14:54:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQB-00Ccc3-2L
	for barebox@bombadil.infradead.org;
	Tue, 17 Oct 2023 14:51:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=K9/RI+7ly4vxjsv0t1/4e0Y/bQyaYhz8K03/IhJjI44=; b=JSdLCDOFgLZzpaWGMV/wCtmOcv
	iBQdWfe1D/Tbki5YeKq3ocoF90a1YfGGodjxNIQ3hVLBzBI19EJQneJ97r9C7eCCLiSO4sxL/3Bej
	iBqY+rslKzLJpvUbx2Xml8a3lH8FjN0GnXrsP0IYYGhnQhupagYnJKgU24DZBA17vDvRT0d3vHcQh
	8mL8vT4hngvH8UfZrAb1WMe+vV2DzExf0Xcg4q7obmDfw1/DYDb2BfAn6JcC9cpjOYjpe992SWhmY
	nd2Ab/gc7XxpAThfNuTvoiVgayQB3t4lamX+8K2M8JJVkgnWCPRRGZh5yNZ3A+vE/6XtJuFEzWfRK
	BoRO0Icw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ5-007AEj-2o
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:46 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPz-0001wJ-5l
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:25 +0200
Message-Id: <20231017145131.3069283-24-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_155142_030887_C56D011C 
X-CRM114-Status: GOOD (  13.58  )
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
Subject: [PATCH v2 23/29] scripts: imx: add helper to write CSF Blocks command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The upcoming commit fixes the HAB support for FlexSPI enabled barebox
images. This commit prepares the source to keep the diff smaller.

For the upcoming fix we need a 2nd CSF command sequence which is
basically the same as the first except for the "Blocks = ...." command.
Therefore we need to handle the blocks command separately which is done
by this commit. Please note that the struct config_data 'flexspi_csf'
member is added in the follow up commit.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- use new strcata() helper
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 scripts/imx/imx.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 12c0df063469..5526fe41b477 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -325,6 +325,24 @@ static int hab_add_str(struct config_data *data, const char *str)
 	return 0;
 }
 
+static int hab_add_barebox_blocks(struct config_data *data,
+				  const char *csf_str,
+				  const char *flexspi_csf_str)
+{
+	data->csf = strcata(data->csf, csf_str);
+	if (!data->csf)
+		return -ENOMEM;
+
+	if (!flexspi_csf_str)
+		return 0;
+
+	data->flexspi_csf = strcata(data->flexspi_csf, flexspi_csf_str);
+	if (!data->flexspi_csf)
+		return -ENOMEM;
+
+	return 0;
+}
+
 static int do_hab(struct config_data *data, int argc, char *argv[])
 {
 	int i, ret;
@@ -364,7 +382,7 @@ imx8m_get_offset_size(struct config_data *data,
 
 static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 {
-	char *str;
+	char *str, *flexspi_str = NULL;
 	int ret;
 	int i;
 	uint32_t signed_size = data->load_size;
@@ -399,7 +417,7 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 	if (ret < 0)
 		return -ENOMEM;
 
-	ret = hab_add_str(data, str);
+	ret = hab_add_barebox_blocks(data, str, flexspi_str);
 	free(str);
 	if (ret)
 		return ret;
-- 
2.39.2



