Delivery-date: Tue, 26 Mar 2024 07:46:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp0a3-004ofQ-06
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 07:46:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp0a2-0004II-Em
	for lore@pengutronix.de; Tue, 26 Mar 2024 07:46:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YI+OlEWGnpOKEVC+Ey9lIXYqXNmWprYd5/tRpOt+tjw=; b=PbesYJUlwh37rBbwVDM+RbVyGm
	OXy836jqW+dRdOtik/I0rXcYdGJrG6ErwLq59uSWvxRDPWzxOpjFXyPqcFBP+W9Xz8lK42BpML4lh
	Z21G4Fi+GP1KoNO6MguCV+bSaFBU+RkKHxU7vzts7aNEDiOFpYt7QkJHp3cjG7zTRELpVNAiLSlrk
	PSjqrUrSsyfz/bk1TYy4BHf4Lchnh3sbi1J0ryqZIJoxdAmYfqs5orRH80UzXMkLfUy2zMaZ6W5XR
	dN5Mt/eE7e+ctHCYmIpfZR9BudBoKPkR4VhSM2Cz4pSOaCw8VP8PGxElk44SUvEDzjkMsRJv4VuI6
	K9pLidvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp0ZP-00000003KQC-1g1C;
	Tue, 26 Mar 2024 06:46:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp0ZL-00000003KND-1jdz
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 06:46:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1rp0ZF-0004BS-Er; Tue, 26 Mar 2024 07:45:53 +0100
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 26 Mar 2024 07:45:51 +0100
Message-ID: <20240326064551.148669-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_234559_472618_0EEB418C 
X-CRM114-Status: UNSURE (   8.01  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: mci-core: make devinfo hex values obvious
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Manufacturer and OEM/Application ID are printed as hex values, but
don't have a leading zero to designate them as hex to a human reader.
Add the leading 0x to make it obvious that these are hex values.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/mci/mci-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 414bcf6f06..9d6d01f8bc 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2058,8 +2058,8 @@ static void mci_info(struct device *dev)
 		mci->csd[2], mci->csd[3]);
 	printf("  Max. transfer speed: %u Hz\n", mci->tran_speed);
 	mci_print_caps(mci->card_caps);
-	printf("  Manufacturer ID: %02X\n", extract_mid(mci));
-	printf("  OEM/Application ID: %04X\n", extract_oid(mci));
+	printf("  Manufacturer ID: 0x%02X\n", extract_mid(mci));
+	printf("  OEM/Application ID: 0x%04X\n", extract_oid(mci));
 	printf("  Product name: '%c%c%c%c%c'\n", mci->cid[0] & 0xff,
 		(mci->cid[1] >> 24), (mci->cid[1] >> 16) & 0xff,
 		(mci->cid[1] >> 8) & 0xff, mci->cid[1] & 0xff);
-- 
2.44.0



