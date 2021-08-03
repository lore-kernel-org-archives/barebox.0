Delivery-date: Tue, 03 Aug 2021 11:46:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr0E-0005qi-Eo
	for lore@lore.pengutronix.de; Tue, 03 Aug 2021 11:46:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr0D-0000n7-1H
	for lore@pengutronix.de; Tue, 03 Aug 2021 11:46:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKupEgWgqw5E/TuJ0DoIk1CKdUNE4yZVkLPSLAQZM10=; b=xPJgUBjnCHSnKP
	UJFBAS/v4vJxRPxeucJDL2Im3mbMHNdXjB+SLbYy8bmNfbnVAy7VP7BgW4VLN3iuJWoRUxLot1Muw
	dmmSqdsBcwKmdmC3McZEIAyR8o1xMe/xSFmuHuS0uPZQTLy7w5iakAPBE1sEsdPTQ2pOB4Au9aoIz
	FiwudE5oE2g6WTszyOgoZsHqpZOn7gMtS3x1Gc1CuFJBWsGEmfqPryp9XQYKUzwnOgAzjF89mdyRp
	nLbyh9Vjj0pVvFooYaBACUR9Z97A91Shu5VHVVmofS9Hz2DednT8fNr4LiD0LUaBl45DVkA57NEk/
	KzsNotdtSGJDgyb0Tvew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAqyx-001rGn-Ok; Tue, 03 Aug 2021 09:45:07 +0000
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAqyO-001r1A-Cd
 for barebox@lists.infradead.org; Tue, 03 Aug 2021 09:44:34 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 179618A101; Tue,  3 Aug 2021 11:44:31 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2001:9e8:217d:6102:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 7DC798A105;
 Tue,  3 Aug 2021 11:44:25 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  3 Aug 2021 11:44:18 +0200
Message-Id: <20210803094418.475609-9-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_024432_625324_15AD1C1D 
X-CRM114-Status: UNSURE (   9.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 8/8] PBL: enable LIBFDT for OP-TEE early loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows the OP-TEE early loaded board to add the reserved memory
entries for the correct MMU setup. This is done by including pbl/fdt.h
and using fdt_fill_reserve_mem().

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index a9feae2ae8..4f7a08bc8f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1116,6 +1116,7 @@ config BOOTM_OPTEE
 
 config PBL_OPTEE
 	bool "Enable OP-TEE early start"
+	select LIBFDT
 	depends on ARM
 	depends on !THUMB2_BAREBOX
 	help
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

