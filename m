Delivery-date: Fri, 19 Jan 2024 23:46:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQxdM-007cf9-2k
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 23:46:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQxdN-0001U7-II
	for lore@pengutronix.de; Fri, 19 Jan 2024 23:46:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m+ilwzgreB8D7bfIabMRHzH1F9ueEyb25QK9GonyOP0=; b=HrNIhMbBnmNpf56DrLXxVAng4N
	DsR6L+jWKLyRVhZwD5JiU7qO74jkLBQtml/0ZP5meWRwel1DwlphebadzZQ65BALtNnqBXpEZRCY6
	GgcdEcUDS2cf5FF5f9hWI/8MMO7rUH8ryvvW4MjhBmJZz/MB8BInXH+xCsVo9E8wjQUmyNl+Lg9WZ
	M47/rw3WghnSiTjrVWs2yuYDcVHnAivZSkI7RxmZJ1k5nRDkZWEGKZXu+djBhORStdPMsHrFjJhCD
	LCvo5XZoZDjUWFsXrhLazwkcfPXM9pexEQlHDE+Id7yB+Yg0JmOdmltGQpVcQhPhi5kyhXwN8Be+9
	T5Enkdeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQxcR-006nwR-16;
	Fri, 19 Jan 2024 22:45:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQxcO-006nvN-1Z
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 22:45:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQxc7-0001Gx-AK; Fri, 19 Jan 2024 23:45:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQxc5-0010up-Bk; Fri, 19 Jan 2024 23:45:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQxc5-005s9I-0f;
	Fri, 19 Jan 2024 23:45:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Hans Christian Lonstad <hcl@datarespons.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 23:45:20 +0100
Message-Id: <20240119224522.1399213-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119224522.1399213-1-a.fatoum@pengutronix.de>
References: <20240119224522.1399213-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_144544_524428_2CBB6CC2 
X-CRM114-Status: UNSURE (   8.92  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] soc: imx: imx8m-featctrl: make header self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct device is the only undefined type in the header, so
forward-declare it to make the header independent of include order.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/soc/imx8m/featctrl.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/soc/imx8m/featctrl.h b/include/soc/imx8m/featctrl.h
index 9c494f071d02..91d14bc68c0a 100644
--- a/include/soc/imx8m/featctrl.h
+++ b/include/soc/imx8m/featctrl.h
@@ -14,6 +14,8 @@ struct imx8m_featctrl_data {
 	bool check_cpus;
 };
 
+struct device;
+
 #ifdef CONFIG_IMX8M_FEATCTRL
 int imx8m_feat_ctrl_init(struct device *dev, u32 tester4,
 			 const struct imx8m_featctrl_data *data);
-- 
2.39.2



