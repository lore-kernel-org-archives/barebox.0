Delivery-date: Mon, 13 Dec 2021 22:15:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsf1-005gLq-Dx
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 22:15:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwsez-0004lO-Kn
	for lore@pengutronix.de; Mon, 13 Dec 2021 22:15:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJ88RqgyDmi6YLpbWJz2YTBYXFxTwewcTZrvw5VydNY=; b=oZjJWkO/en3o/v
	pkyfn6S96u+Y6wltXczL0minkvVitRoJp1gRKXJFn1q19Copqy89J/biF3vs4qjMgX0NDjCfrfi3P
	OurczzJIEStd+aB1zoe/3Kt54mWsae8wky3iZRaO5v6Qb/YKGK9AB/BMm7rsJ7JcZpa/LOrEEQ0cD
	Y6gXs9aCzk1m0Sd5+cryQW5df8aMbPz+20MO9PrWeC3utiZQawrd2PzHWxZEY1xdmE9NcxSAEF9kB
	SU/rQoSG33sxsfogSBj0MKKyS/e6zu8PdAQ2r7YJlY6iY+XfTxKbcYre8biRj4CHV3V+6mh7aqO3Z
	jIyJwLTbGVoROzuPMolQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwsdb-00BRP7-Kv; Mon, 13 Dec 2021 21:13:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZc-00BOyE-OH
 for barebox@bombadil.infradead.org; Mon, 13 Dec 2021 21:09:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=9zaCA2R01ANYhKtPLjZnXOsK96+rysXqTvB6bHtb4bw=; b=kvyQqagr7WiUu9DeFzhndKprvT
 7pCrEruMGTVSd3e1lGThzWAD/y+I/1fmBaHvxWxXtaXvAGX4vgyHP3gVUYKPFAfxfPCCW+8SBFG9k
 NzxuoEzvSTDEGql0nr1FZy5lgyJzcODPfe2WKa4205KRWAo2w80JQVkFEgXTAEouubwSgna3jDEbl
 jXEe8BAdtISsnP71fxRhi1pHueHZy/5IHosT7P2wAg5vcKIFdE6DpIRE9qytm9KgPjDQNellAIvpH
 CH6dA9Lt0Sycm9adlswByRqh0fnXNMbUzJpo8fWItNRCEw++wUGEtuI1I0ZuO3RPyTT/Xq79T53xW
 PjBiE0hg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwsZW-001BcW-9H
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 21:09:27 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZL-0002TB-4u; Mon, 13 Dec 2021 22:09:11 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mwsZJ-00EGpd-E4; Mon, 13 Dec 2021 22:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Dec 2021 22:09:03 +0100
Message-Id: <20211213210905.3399551-24-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211213210905.3399551-1-s.hauer@pengutronix.de>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_210922_457946_920763EE 
X-CRM114-Status: GOOD (  10.16  )
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
Subject: [PATCH 23/25] net: efi-snp: Check for carrier before sending
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have carrier informations available, so check them before sending a
packet.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/efi-snp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/efi-snp.c b/drivers/net/efi-snp.c
index def2714bee..3c0663c802 100644
--- a/drivers/net/efi-snp.c
+++ b/drivers/net/efi-snp.c
@@ -134,6 +134,9 @@ static int efi_snp_eth_send(struct eth_device *edev, void *packet, int length)
 	void *txbuf;
 	uint64_t start;
 
+	if (!priv->snp->Mode->MediaPresent)
+		return -ENOMEDIUM;
+
 	efiret = priv->snp->transmit(priv->snp, 0, length, packet, NULL, NULL, NULL);
 	if (EFI_ERROR(efiret)) {
 		dev_err(priv->dev, "failed to send: %s\n", efi_strerror(efiret));
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

