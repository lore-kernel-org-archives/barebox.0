Delivery-date: Tue, 02 Jan 2024 12:02:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcXe-000UoF-0R
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 12:02:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcXd-0002n2-3Z
	for lore@pengutronix.de; Tue, 02 Jan 2024 12:02:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5/A6JMHawsIIu14cIJgkA3fODr3AM/7DDtwTeTkk7Kc=; b=W8bfPls8feHcgt2OxH15r/5Gck
	rV3yHmcUgGf+nFdm7cgCkEYCq9tp/TrvUKQwzCGG4Xli8f+JUug0Fqju5nBmEWpyxNo/IQiTpk8+O
	gmkAvzE5yv1mXt92dI/tQaiV8iaR9yDU1lZgIGMBxS/zLEfArWHNQHzOMDnYsHErw2yD5UNhMlJB0
	GsyVOGAOCD1QeOfBSjwBrmm6qnnNQ3LWws0dZ3S/pMGbTh4+SeKF3QlAwjEtOBixtwjpZgcGWPfTD
	2cml9d0wm1425UbFtc29d7NE6+S+enzxzXhwsmFs8e8ildZmlpmIxcTVmnsKF2MqDHAtQphDahLXk
	KlGINaMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcWd-007f7Z-0F;
	Tue, 02 Jan 2024 11:01:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcWV-007f4M-2Y
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 11:01:33 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rKcWU-0002Cz-IX
	for barebox@lists.infradead.org; Tue, 02 Jan 2024 12:01:26 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  2 Jan 2024 12:01:17 +0100
Message-Id: <20240102110118.280032-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240102110118.280032-1-m.felsch@pengutronix.de>
References: <20240102110118.280032-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_030127_844191_3F4C6237 
X-CRM114-Status: UNSURE (   7.37  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] images: Makefile.imx: add i.MX9 comment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have separate sections for each i.MX SoC within the makefile, add one
for the i.MX9 SoC too.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 images/Makefile.imx | 1 +
 1 file changed, 1 insertion(+)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index 693f7ca12a7e..a4f50892eb0d 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -496,6 +496,7 @@ MAX_PBL_MEMORY_SIZE_start_mnt_reform = 0x3f000
 FILE_barebox-mnt-reform.img = start_mnt_reform.pblb.imximg
 image-$(CONFIG_MACH_MNT_REFORM) += barebox-mnt-reform.img
 
+# ----------------------- i.MX9 based boards --------------------------
 quiet_cmd_imx9img = IMX9IMG  $@
 cmd_imx9img = $(objtree)/scripts/imx9image -soc IMX9 -c -ap $< a55 0x2049A000 -out $@ \
 		-pblsize $($(patsubst $(obj)/%.pblb,PBL_MEMORY_SIZE_%,$<)) > /dev/null
-- 
2.39.2



