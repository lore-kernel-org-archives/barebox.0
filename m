Delivery-date: Fri, 08 Mar 2024 12:18:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYFP-00DdA0-0z
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 12:18:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYFO-0000Wc-92
	for lore@pengutronix.de; Fri, 08 Mar 2024 12:18:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MsKRaqi/4JVE4mReUnbxb01dIALVOAd5oMLcGSBsf60=; b=c8AvKYapeu0P/y3qdS7nknJQ6I
	3Ik7fTwafmISuhzOn1E7Ay/er4RA34usCQMi088HF0OgPEyIbK8GAjW23EHBDu2qfBmqh00pQHAl1
	lcK1iA6BxvohI28EpS1yZq/Gnbfk8D9bRSEb4QVWFw8UbtW/yNIp+DZKVUzNdrsjoS7zagfuJb3D/
	GDtgRZYlUQQ8KROe/CzAjbiFVuv1XyX4KwqrgxD18y9P6Ui1qluUQk54PvgJ2JRZuhh8t1RtpUPFr
	/WNtWT1rbJkzWr0sMEw/zYe+IMDeiihDpPaVxmZ4MUt5FomLPte39K71A1eV8tDH0eKZk49I/lCe/
	iH0o8Vbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYEt-00000008vai-0IgW;
	Fri, 08 Mar 2024 11:18:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYEd-00000008vQA-3PYD
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 11:18:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1riYEY-0007Id-BV
	for barebox@lists.infradead.org; Fri, 08 Mar 2024 12:17:50 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 08 Mar 2024 12:16:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-1-6d50c90485f3@pengutronix.de>
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1154;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=DgKQk6dndJgNYweiZMRacMqGAlLrGltxEJihdx8Pj8g=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJffd5WGTLV+c5DwR3vQ4yW8YX4lqQH6p7If2vH8lr2q
 VeZaWNwRykLgxgXg6yYIkvk2kMam4U/63w5fp4BZg4rE8gQBi5OAZhI+xSG/06W+atKN1z+8fLt
 evnmk47bvdI+XS6+9fJXQ34nc97qlc8Z/udXHq9+oSwZcXYd269NeXfuzt2Y/9v0lEKWn2Dp9gu
 vs9gB
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_031756_037857_B94D09C6 
X-CRM114-Status: UNSURE (   8.27  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/12] ARM: zynqmp: add sd_dll_reset call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a function to reset DLL logic for SD devices.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-zynqmp/firmware-zynqmp.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index a2b61efff4..b383ed6f00 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -511,6 +511,23 @@ static int zynqmp_pm_ioctl(u32 node_id, u32 ioctl_id, u32 arg1, u32 arg2,
 				   arg1, arg2, out);
 }
 
+/**
+ * zynqmp_pm_sd_dll_reset() - Reset DLL logic
+ *
+ * @node_id:	Node ID of the device
+ * @type:	Reset type
+ *
+ * This function resets DLL logic for the SD device.
+ *
+ * Return:	Returns status, either success or error+reason
+ */
+int zynqmp_pm_sd_dll_reset(u32 node_id, u32 type)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, node_id, IOCTL_SD_DLL_RESET,
+				   type, 0, NULL);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_sd_dll_reset);
+
 /*
  * zynqmp_pm_write_ggs() - PM API for writing global general storage (ggs)
  * @index:	GGS register index

-- 
2.40.1



