Delivery-date: Wed, 31 May 2023 08:28:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4FJy-003s5d-1T
	for lore@lore.pengutronix.de; Wed, 31 May 2023 08:28:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4FJv-0006rR-Ej
	for lore@pengutronix.de; Wed, 31 May 2023 08:28:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=55fTW3AOpYV6uo49NsN+67LihWEU+bz2R4U5dM2b9AU=; b=SXaCYuYwbYWO09l5a7Mhlz9ZBq
	+toCIFD7pSQAuNg7uOCfuj3dky/g7X5IX2vfRobCldKPLPUdGJxEqmzfl+GeLEg5QeEPCiI1u62GT
	LHGN4ZeL6Zv9p9gppLDIZe+JuKFTeIgJX7UexI+NV9Ti2AYxGF6wXIbLcISNI16mNoNoeksRr5a98
	6REpN5wReDK/ztOo8CmxsprDF0ap+PX1ejMMyuLXsgWdri3ODceNWnCa8+JmM0FLblh3QS1QfFG84
	CfVYW4ICkH0XLRXiqbDCWUsTnsfu6mbkm4PFjr5KopAODH+iv+Tqiaikk8BfcemQh6wLo0jLu0d3c
	tizZAMZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4FIm-00GHeT-01;
	Wed, 31 May 2023 06:27:20 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4FIh-00GHcX-0q
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 06:27:16 +0000
X-GND-Sasl: ahmad@a3f.at
X-GND-Sasl: ahmad@a3f.at
Received: by mail.gandi.net (Postfix) with ESMTPSA id 03C7A240002;
	Wed, 31 May 2023 06:27:07 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 31 May 2023 08:27:01 +0200
Message-Id: <20230531062703.670521-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_232715_425641_491FAE68 
X-CRM114-Status: UNSURE (   8.36  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/3] ARM: rockchip: pine64-quartz64: add sdram-init.bin to .gitignore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Other boards already have sdram-init.bin in their .gitignore, so have
quartz64 follow suit.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/boards/pine64-quartz64/.gitignore | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 arch/arm/boards/pine64-quartz64/.gitignore

diff --git a/arch/arm/boards/pine64-quartz64/.gitignore b/arch/arm/boards/pine64-quartz64/.gitignore
new file mode 100644
index 000000000000..f458f794b54c
--- /dev/null
+++ b/arch/arm/boards/pine64-quartz64/.gitignore
@@ -0,0 +1 @@
+sdram-init.bin
-- 
2.38.5



