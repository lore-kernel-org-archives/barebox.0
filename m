Delivery-date: Wed, 05 Jul 2023 16:44:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH3jd-00GKSJ-LJ
	for lore@lore.pengutronix.de; Wed, 05 Jul 2023 16:44:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH3jb-0001U7-4P
	for lore@pengutronix.de; Wed, 05 Jul 2023 16:43:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lhEtFd+CWchF7MNffOtOJC+Lt2lNxwrCesjPSWl5rnI=; b=ibaf+sTN9EqazO2GI4N2nVQcEe
	z7/0aQrihNqEVVwuh4UNx5Q57hIjtXao6mZW957tCHfAclZ+RCqf698hJf5aFx2RIwfzgrQi6z/eL
	PkSUeOKlEdDGc2SLMRBXneDSQJ3UU82K87suPItOMIszwvVjFeB7lvzh6wXsC7B0Uthd0y4ysdq/g
	5tHKhfjNd9QGyE70hoV8aeZnmnljaJXc1nHnLWSsgAUrz00Xz61mdwQKO0yiHWKlgEdvmRe+ncjs2
	qeaYfqDDPcwIjwXLhTCh2IuDsolUnhW6A50GTHeiIsQ5FDdQJ78tPBS4Ky/0GK/49WPU8TbHnzk5B
	nTVN38mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3iD-00GAp6-37;
	Wed, 05 Jul 2023 14:42:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3iB-00GAnR-0p
	for barebox@lists.infradead.org;
	Wed, 05 Jul 2023 14:42:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1qH3i9-00012e-LO; Wed, 05 Jul 2023 16:42:29 +0200
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed,  5 Jul 2023 16:42:17 +0200
Message-ID: <20230705144219.504194-4-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230705144219.504194-1-r.czerwinski@pengutronix.de>
References: <20230705144219.504194-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_074231_317403_AB05A479 
X-CRM114-Status: GOOD (  10.08  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/6] ARM: i.MX: allow HAB for i.MX8M family
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since the HAB driver can now parse events for the complete family,
allow selection for the whole family.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index ef0e5fc561..349757d6bc 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -720,10 +720,10 @@ config HABV4
 	select HAB
 	select NVMEM
 	select IMX_OCOTP
-	depends on ARCH_IMX6 || ARCH_IMX8MQ
+	depends on ARCH_IMX6 || ARCH_IMX8M
 	depends on OFDEVICE
 	help
-	  High Assurance Boot, as found on i.MX28/i.MX6/i.MX8MQ.
+	  High Assurance Boot, as found on i.MX28/i.MX6/i.MX8M.
 
 config HAB_CERTS_ENV
 	depends on HAB
-- 
2.41.0



