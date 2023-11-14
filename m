Delivery-date: Tue, 14 Nov 2023 14:31:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tW1-00BJtD-00
	for lore@lore.pengutronix.de;
	Tue, 14 Nov 2023 14:31:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tW1-0006xB-1h
	for lore@pengutronix.de; Tue, 14 Nov 2023 14:31:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r3eXOCamu7JY0ATvYe7Bf6hTJBFi+G7bXzOItdNWKL0=; b=ekhDKcjTiirsjiFqzpa3pm+PE4
	l7ml8xVJ/3HZZL+LHBgrHcBoBQHtHf3WBFJMmc9WyvmIwV8YJvaAaKjC/oauq41rFd7vOeaTwYow/
	a9OBnoSgXCJLSS7hkHA/zh0vFrEPQrY417vcOrdOGg4khte39++CMdl0M0gwykWy8yuYGn60lrUdA
	r/YISySow2LquuJqVcfsOJ0bj+JGHpn3bo8WI5nLxy9NH3/OEx1TJnJ2vqfKqkQgWWe9BThInIR8b
	GmJADbG1R4qrj7R7cV+5hBGky2VAN6v/thfHbNi22hx5obTVjzGJABmSDnWpKg6H8+YvIDEpTIGew
	GSWfDOgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tUj-00G2km-0y;
	Tue, 14 Nov 2023 13:30:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tUe-00G2hx-1Z
	for barebox@lists.infradead.org;
	Tue, 14 Nov 2023 13:30:19 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1r2tUd-0006Gh-BX
	for barebox@lists.infradead.org; Tue, 14 Nov 2023 14:30:15 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 14 Nov 2023 14:30:05 +0100
Message-Id: <20231114133007.3662931-6-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231114133007.3662931-1-m.felsch@pengutronix.de>
References: <20231114133007.3662931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_053016_597384_BC37E3CF 
X-CRM114-Status: GOOD (  10.34  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/8] mci: export mci_get_ext_csd as helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make the mci_get_ext_csd() function a helper to make it usable for
others.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 commands/mmc.c         | 17 -----------------
 drivers/mci/mci-core.c | 17 +++++++++++++++++
 include/mci.h          |  1 +
 3 files changed, 18 insertions(+), 17 deletions(-)

diff --git a/commands/mmc.c b/commands/mmc.c
index 4259dbb763d1..fa01b89cdf42 100644
--- a/commands/mmc.c
+++ b/commands/mmc.c
@@ -65,23 +65,6 @@ static int mmc_partitioning_complete(struct mci *mci)
 	return ret;
 }
 
-static u8 *mci_get_ext_csd(struct mci *mci)
-{
-	u8 *ext_csd;
-	int ret;
-
-	ext_csd = xmalloc(512);
-
-	ret = mci_send_ext_csd(mci, ext_csd);
-	if (ret) {
-		printf("Failure to read EXT_CSD register\n");
-		free(ext_csd);
-		return ERR_PTR(-EIO);
-	}
-
-	return ext_csd;
-}
-
 /* enh_area [-c] /dev/mmcX */
 static int do_mmc_enh_area(int argc, char *argv[])
 {
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 1276920e1604..8ce97b5d5cdd 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -518,6 +518,23 @@ int mci_switch(struct mci *mci, unsigned index, unsigned value)
 	return 0;
 }
 
+u8 *mci_get_ext_csd(struct mci *mci)
+{
+	u8 *ext_csd;
+	int ret;
+
+	ext_csd = xmalloc(512);
+
+	ret = mci_send_ext_csd(mci, ext_csd);
+	if (ret) {
+		printf("Failure to read EXT_CSD register\n");
+		free(ext_csd);
+		return ERR_PTR(-EIO);
+	}
+
+	return ext_csd;
+}
+
 static blkcnt_t mci_calc_blk_cnt(blkcnt_t cap, unsigned shift)
 {
 	blkcnt_t ret = cap >> shift;
diff --git a/include/mci.h b/include/mci.h
index 4fed8d739284..1ef44a3a76b0 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -545,6 +545,7 @@ void mci_of_parse_node(struct mci_host *host, struct device_node *np);
 int mci_detect_card(struct mci_host *);
 int mci_send_ext_csd(struct mci *mci, char *ext_csd);
 int mci_switch(struct mci *mci, unsigned index, unsigned value);
+u8 *mci_get_ext_csd(struct mci *mci);
 
 static inline int mmc_host_is_spi(struct mci_host *host)
 {
-- 
2.39.2



