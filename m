Delivery-date: Mon, 05 May 2025 14:39:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6U-002Sat-0w
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:39:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6P-00075E-8E
	for lore@pengutronix.de; Mon, 05 May 2025 14:39:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DQQ+qHjimrJBEf8BTWZKIrTss2YfotNGDQIBYymcTr4=; b=kmZyhflTrWVP7m3kOPDs9IunTu
	aMVnCJ0gW9qYYBKhTpFXngGiJY0vmAvVCCttaDa3jkAl5kn95x6wZQSaVlHnXane3VmoSDOXCPfY4
	bIFEcuxHYTHWXMNt0ptX33T0jboXDw0IKkivWUXsv3JXZ+LidJ05KAqYjO92jYmh1m9ZJqWN1AJyr
	hj9rpuRINjGJ/y9r+hhQ53qRDu9JOKmWmu1fTZX6lH4AS4Ns8wnAFx4SbWCBOCTGoObQ/3FU8pd9A
	d5TJFRvKviNpbJnTHt8fYrMN3XlZh/fXubEv+3r0AtEX4E52WLfLm936Ya+9NX0+/mF52llzMEQfh
	X58iuwrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv5Z-00000007LpH-1yez;
	Mon, 05 May 2025 12:38:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv2H-00000007Kgy-1AeO
	for barebox@bombadil.infradead.org;
	Mon, 05 May 2025 12:35:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=DQQ+qHjimrJBEf8BTWZKIrTss2YfotNGDQIBYymcTr4=; b=nt07Tbk0oyyD8tcnCiu2Cw2tHk
	GJMeJME/tibWk5Rj+HwzAEJtquLC0Iar4XBGK7uctvwEdbfjxVwl6qgMBJDV0TdjGTc6kgGzvw6zQ
	ftWax1pMVjg3txKZTVY77rGinHueVQ/TN1TrNTQ6ekkKA0mj9I/yHh2bdzHe4c9uC0KlxtHMqdhT4
	4a76+yQdFdpgziyAmfQMKHTy7ZV0JlsW8mvFAGGOzDd8nId06RyQXkp6SW5q5LR9vZ7426C+IQNlt
	Ro7x5ImG+Lu01gblIcwc3QRbS8iWEIbF4Ldl7KrbDxZDjFaqZN2nSBdIgsQtgItEf9OzWFH3kLCp/
	nVQ8r70w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uBv2C-0000000FUTN-3FgQ
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:35:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv29-0004s1-3T; Mon, 05 May 2025 14:34:57 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv28-001EQs-2x;
	Mon, 05 May 2025 14:34:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuah-00Fb9X-1j;
	Mon, 05 May 2025 14:06:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:26 +0200
Message-Id: <20250505120633.3717186-24-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_133501_325515_7B7DB8DF 
X-CRM114-Status: GOOD (  10.36  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 23/30] mci: core: retry MMC_CMD_SET_BLOCKLEN up to 4 times
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is what Linux is doing, so follow suit for reliability.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index e5242a9f5add..2645f9240d93 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -125,7 +125,7 @@ static int mci_set_blocklen(struct mci *mci, unsigned len)
 		return 0;
 
 	mci_setup_cmd(&cmd, MMC_CMD_SET_BLOCKLEN, len, MMC_RSP_R1);
-	return mci_send_cmd(mci, &cmd, NULL);
+	return mci_send_cmd_retry(mci, &cmd, NULL, 4);
 }
 
 static void *sector_buf;
-- 
2.39.5



