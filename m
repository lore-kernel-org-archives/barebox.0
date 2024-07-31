Delivery-date: Wed, 31 Jul 2024 10:05:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LP-004jXJ-0Y
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 10:05:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LO-0004Pr-4v
	for lore@pengutronix.de; Wed, 31 Jul 2024 10:05:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nsjS9rZkMcmeszAZ3N//cVYZpj63EjoGg8O0llOis6U=; b=wSwNhmrkmwE2xpQ1GTAfvXdGem
	wEzN0LI9qGaZimsMEiLgZqmz3iMNU0Qlds3KBpPUrc1ZJ1+nVfV2pTHSqDHd+WrJzl+QAblW7sCRH
	xrv4TMjggCjNzXb5CiJtenRP+K1UXkJOaNkN5LQc0qZWPgu5kE7UgdvR55KSPrczcmreN9OyKP9E4
	9gd2AFhDHY/2ElzF6MZTJomarXlYEsJL4lr2idlHK+AOvcG0lNoVJBnUlJFEqpQwiuVJGslPtOBhW
	W08/U7KSxx9tQwuy3m1rHCTUePFePGVWsj4Yb05FprO7OhZ39f3y73HMIwRKoZwzylhP2HrxSCOeW
	n95mhxEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Ku-00000000FBA-09lM;
	Wed, 31 Jul 2024 08:05:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Kn-00000000F6c-1VKp
	for barebox@bombadil.infradead.org;
	Wed, 31 Jul 2024 08:05:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=nsjS9rZkMcmeszAZ3N//cVYZpj63EjoGg8O0llOis6U=; b=eraqQM+hdqBPFJNm9tGKg/Vj1d
	QDr9GvW0uR6spfHtTKbVAP14tKVVPHeeO6nle7FLdapL4bqbuO4vJ7K/Ex/DOu+eo4S9cCTCb7PvO
	if+n6r3qTxygP+sWZMFBipjcYxQSJTlmYr43bJDwYUhottkHY7jXckakJ8jTNd3hAGnLo8EWKzSYH
	bXY3iY/UlIfStQWShI5DCyP5wR1ROyp95NC54PGmjsHsJ6XbW6UZz/GOOVBXkUOFLQfq1OMVqLoqG
	vcfgx7v6L294NgMeC7/yxL022eJQWiqc29uafm0ZtVX9F9vVYIwgL3QExsWBopZWUtw5WUlRD9dwu
	uFnHOJDA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Ki-00000005ATv-0d9b
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 08:05:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-0003yU-Ne; Wed, 31 Jul 2024 10:05:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-003Tfs-8p; Wed, 31 Jul 2024 10:05:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-001Wt2-0a;
	Wed, 31 Jul 2024 10:05:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jul 2024 10:05:07 +0200
Message-Id: <20240731080510.364706-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731080510.364706-1-a.fatoum@pengutronix.de>
References: <20240731080510.364706-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_090517_047007_6A3DA7A5 
X-CRM114-Status: GOOD (  13.32  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/10] mci: core: use CONFIG_MCI_WRITE, not CONFIG_BLOCK_WRITE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's a more specific CONFIG_MCI_WRITE that's so far only used to
remove write support for in the Atmel MCI driver. We should use the same
symbol also to remove support in the MCI core instead of relying on the
CONFIG_BLOCK_WRITE option that's selected transitively by it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - mention in commit message that MCI_WRITE selects BLOCK_WRITE
    indirectly
---
 drivers/mci/mci-core.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 410c47fbcfc6..984294bfc107 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1801,8 +1801,8 @@ static int mci_blk_part_switch(struct mci_part *part)
  *
  * This routine expects the buffer has the correct size to read all data!
  */
-static int __maybe_unused mci_sd_write(struct block_device *blk,
-				const void *buffer, sector_t block, blkcnt_t num_blocks)
+static int mci_sd_write(struct block_device *blk,
+			const void *buffer, sector_t block, blkcnt_t num_blocks)
 {
 	struct mci_part *part = container_of(blk, struct mci_part, blk);
 	struct mci *mci = part->mci;
@@ -2179,9 +2179,7 @@ static int mci_check_if_already_initialized(struct mci *mci)
 
 static struct block_device_ops mci_ops = {
 	.read = mci_sd_read,
-#ifdef CONFIG_BLOCK_WRITE
-	.write = mci_sd_write,
-#endif
+	.write = IS_ENABLED(CONFIG_MCI_WRITE) ? mci_sd_write : NULL,
 };
 
 static int mci_set_boot(struct param_d *param, void *priv)
-- 
2.39.2



