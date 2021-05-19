Delivery-date: Wed, 19 May 2021 09:40:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ljGoT-0003eZ-SI
	for lore@lore.pengutronix.de; Wed, 19 May 2021 09:40:17 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ljGoT-0003im-4N
	for lore@pengutronix.de; Wed, 19 May 2021 09:40:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=08/qfaJar6Q+dza0r991W6dk2hEo+/X7HCN6sMFcQ5c=; b=AfJS1QxLYOuycmcy1/XziqZzE
	J1ykJWXPtQISiawELc0KbHOKfZgBaJbGV1GET7UXTCXo7mxYpXhZwyIvtsurV/Vvup5zfm0ONj/ia
	Uqdnk+2M6pBELaBIur/fQSw4o1KwrSYWfLuhA/yX0JgnK2PBU2Km8Ncwrfd0GDAme8FRfE4WzIBZc
	oVJjpunLmiq0aLfO2DWduK4fE32UGD/PHoPNxXmsYbTQucY3E1gWwRfKc1jbyt0xre1d0bpgsAksK
	cJvGzHyDFAXduKUqzhI9z1Yfe34qjPibN7MJHxhQFtY6mWlystM4DZNg9g2dKnqG0u7a211WbEezW
	1jCwVFNuA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljGnS-003CiL-FD; Wed, 19 May 2021 07:39:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljGnI-003ChP-LN
 for barebox@desiato.infradead.org; Wed, 19 May 2021 07:39:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=oj8dKEsVFsgKX1f4YaPnkqvqxPkIiuUFmx3iXwLw8PA=; b=Fie/qETrcTAfPExTSDk25QmJ7H
 V93ncFSCL7Exc67wyyeVqcpdPAR+EsQiAIbD189xg4vX+ABVsdbNk7wPe/JWqMJJen6w1InvPdeyh
 LcNPcD0LSGsL4aiHLptNYmybL65SPe3XV3OSAJbMcEcObiAuiVAVKTFEia8YjC5/QUnqrPvlJ8RnE
 97ZzT0Lnt3/xNld3QDKK5zNs3HaUEiBZW32CFnCYV5a5P2+/N3WxDrUHxnVs5dfT74yez5ijueQZ7
 DeTPM8dMSa9Xo1YDkVCKcXCztkCIcb8sjUbRUntaP2ws2NaRkKtIs2NR4BFMyqFsU1stN7uV+R33C
 5IRl4Mzw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljGnE-00FE47-BT
 for barebox@lists.infradead.org; Wed, 19 May 2021 07:39:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ljGnA-0003bQ-Lo; Wed, 19 May 2021 09:38:56 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ljGn9-000191-Pg; Wed, 19 May 2021 09:38:55 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ljGn9-00BWx7-MS; Wed, 19 May 2021 09:38:55 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Michael Graichen <michael.graichen@hotmail.com>
Cc: barebox@lists.infradead.org,
	m.tretter@pengutronix.de
Date: Wed, 19 May 2021 09:38:54 +0200
Message-Id: <20210519073855.2748231-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <AM9P192MB0870DC1573A4088BB839A208AB2C9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
References: <AM9P192MB0870DC1573A4088BB839A208AB2C9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_003900_433707_B2411C4F 
X-CRM114-Status: GOOD (  19.41  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] mci: arasan: wait for data available only on read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Only READ data transfers actually send a data available interrupt.
Therefore, check if the transfer is a read and wait for the data only in
this case.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---

Hi Michael,

On Tue, 18 May 2021 08:09:47 +0000, Michael Graichen wrote:
> > This looks familiar. I have a similar patch that sets SDHCI_INT_DATA_AVAIL
> > only if the command is a READ, but I didn't yet have time to verify, that this
> > is the correct fix.
>
> Can you please send it to me?

Here you are. I am not sure, if the fix is correct. I also added another
patch to handle situations where data is NULL, but I am not entirely sure
about that one either.

Michael
---
 drivers/mci/arasan-sdhci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 520bf30ff952..399966e8cf10 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -277,7 +277,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
 
 	mask = SDHCI_INT_CMD_COMPLETE;
-	if (data)
+	if (data && data->flags == MMC_DATA_READ)
 		mask |= SDHCI_INT_DATA_AVAIL;
 
 	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data, false, &command, &xfer);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

