Delivery-date: Mon, 13 Dec 2021 22:14:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwseX-005gKr-KL
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:14:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwseV-0004eC-Mz
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:14:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9eycAQ7eeM+SU6GRVdhJnpkHsWOdek54aztd0RcbjI=; b=uO9MeF6X2fPa/w
	dcmn1rspsz9UVZVK66QP4l6eOLX7x8RturoadHRxmmUfpsj4HFK8Npvga50jnzBYO8UEhSX9i2Q4F
	v1Fl9MGZnFsCdJmu49B9xvmV69hXd7Q/KbUJ/e/JjpY6Gj/eNUVahyDgMpeLjecLHrIumO4ZrYTIw
	F8m4FiMhFGCeWESrZfPKYsMd9PNTHgtPoeu3D+WSfvX28ZMnZf657PrJLpyrZr0un2g2X/srYeSu0
	CjDERcwV/VFtsYqJ0eoDBtSfBiVsJS6jvmHN0x9uAlla6kTBawYaoUPhC+sHGmPu/1rkg7l0hltkY
	2odqvvNktkX+n6v/SPzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsd4-00BRFT-VT; Mon, 13 Dec 2021 21:13:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZb-00BOxc-Fb
 for barebox@bombadil.infradead.org; Mon, 13 Dec 2021 21:09:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Pfe6jlL6AZaRvS39SBQFQkVBNfSIXvX3Hc19e+JIP+I=; b=KAR2zr64TgCkDSZBDVF+wCLc/n
 yoHgqkQSYf69de81es0M+Hm8EL0/R5AlKlXvL6rTHq/bZZAcCyuY7ZCimxylmI/D8FTSutYEEE63A
 WATlZmsoRu+TKOnciJpYSyUwM3VPKH1xNdHM0kQz8ruIv5pMAPU6Nsg4nP/8W7wT1CPf4FXqTdLAP
 84hqRKaltdkW8u0DbDv6gh8J0afm+qsSrwxQCqxVYizbwQwgiuCl9nv89coTgSdOhHmA/eUPRExDX
 IeY6oaBA/lXrHDy66e+qQqM3xA+1lN+21iqN5+UhOKyyh4lASbRRy8tpEQiaBDXRk9FXCJQ8R0vG5
 O/WlX8Fg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZW-001BcX-6Y
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:26 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZL-0002TD-50; Mon, 13 Dec 2021 22:09:11 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGpj-Er; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:09:05 +0100
Message-Id: <20211213210905.3399551-26-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_210922_437981_FD6CC49D 
X-CRM114-Status: GOOD (  14.30  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 25/25] net: efi-snp: Open protocol exclusively
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Open the SNP protocol exclusively. Without it other protocol instances
may poll for packets as well causing packet loss.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/efi-snp.c | 56 +++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 54 insertions(+), 2 deletions(-)

diff --git a/drivers/net/efi-snp.c b/drivers/net/efi-snp.c
index 3c0663c802..31ce272118 100644
--- a/drivers/net/efi-snp.c
+++ b/drivers/net/efi-snp.c
@@ -177,6 +177,32 @@ static int efi_snp_eth_rx(struct eth_device *edev)
 	return 0;
 }
 
+static efi_guid_t snp_guid = EFI_SIMPLE_NETWORK_PROTOCOL_GUID;
+
+static int efi_snp_open_exclusive(struct efi_device *efidev)
+{
+	void *interface;
+	efi_status_t efiret;
+
+	/*
+	 * Try to re-open SNP exlusively to close any active MNP protocol instance
+	 * that may compete for packet polling
+	 */
+	efiret = BS->open_protocol(efidev->handle, &snp_guid,
+			&interface, efi_parent_image, NULL, EFI_OPEN_PROTOCOL_EXCLUSIVE);
+	if (EFI_ERROR(efiret)) {
+		dev_err(&efidev->dev, "failed to open exclusively: %s\n", efi_strerror(efiret));
+		return -efi_errno(efiret);
+	}
+
+	return 0;
+}
+
+static void efi_snp_close_exclusive(struct efi_device *efidev)
+{
+	BS->close_protocol(efidev->handle, &snp_guid, efi_parent_image, NULL);
+}
+
 static int efi_snp_eth_open(struct eth_device *edev)
 {
 	struct efi_snp_priv *priv = to_priv(edev);
@@ -234,6 +260,20 @@ static int efi_snp_set_ethaddr(struct eth_device *edev, const unsigned char *adr
 	return 0;
 }
 
+static int efi_snp_pause(struct efi_device *efidev)
+{
+	efi_snp_close_exclusive(efidev);
+
+	return 0;
+}
+
+static int efi_snp_continue(struct efi_device *efidev)
+{
+	efi_snp_open_exclusive(efidev);
+
+	return 0;
+}
+
 static int efi_snp_probe(struct efi_device *efidev)
 {
 	struct eth_device *edev;
@@ -272,16 +312,28 @@ static int efi_snp_probe(struct efi_device *efidev)
 	edev->get_ethaddr = efi_snp_get_ethaddr;
 	edev->set_ethaddr = efi_snp_set_ethaddr;
 
+	ret = efi_snp_open_exclusive(efidev);
+	if (ret)
+		return ret;
+
 	ret = eth_register(edev);
 
         return ret;
 }
 
+static void efi_snp_remove(struct efi_device *efidev)
+{
+	efi_snp_close_exclusive(efidev);
+}
+
 static struct efi_driver efi_snp_driver = {
-        .driver = {
+	.driver = {
 		.name  = "efi-snp",
 	},
-        .probe = efi_snp_probe,
+	.probe = efi_snp_probe,
+	.remove = efi_snp_remove,
+	.dev_pause = efi_snp_pause,
+	.dev_continue = efi_snp_continue,
 	.guid = EFI_SIMPLE_NETWORK_PROTOCOL_GUID,
 };
 device_efi_driver(efi_snp_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

