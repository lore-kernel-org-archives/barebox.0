Delivery-date: Wed, 05 Jul 2023 16:43:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH3jc-00GKRq-HP
	for lore@lore.pengutronix.de; Wed, 05 Jul 2023 16:43:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH3ja-0001Ts-A5
	for lore@pengutronix.de; Wed, 05 Jul 2023 16:43:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vDB1I4J1KS/bFsMA9RMEZCpWlpCivHAgDYqpkJ8rbN4=; b=MEZSNkbmLBz4pHIee3mhpf6Ds1
	GyKaIks37Mfgk2/lUKtiAbwg3KdVmyxs3spB0u99NTnSBldoMMdApMCAeNUDlqMxwQA3xS7HcqPCd
	c5w1HV8/wm8ig8WXKCUeBczErVrJznVoW4yF3Tbwzg8YW8Af8fZ1gwIZBJ8ItDftXg9zur9gksLSv
	WI5OLnwTC4pnQKtaHpMD776TPWyVJPzF7Q6309kdCpRX+fugFhxZK8hFutnnv04/3qjENOaMPQa2O
	UhH77JFWtX8U2pWR2JQzRSsSaFDDbDoet/EqAPo6EHiOWchcY8NJQ441cjV7clIGmihNFJwPDRSC1
	ZmWGfGJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3iF-00GApj-0Y;
	Wed, 05 Jul 2023 14:42:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3iB-00GAnC-0p
	for barebox@lists.infradead.org;
	Wed, 05 Jul 2023 14:42:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1qH3i8-00012E-A3; Wed, 05 Jul 2023 16:42:28 +0200
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed,  5 Jul 2023 16:42:15 +0200
Message-ID: <20230705144219.504194-2-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230705144219.504194-1-r.czerwinski@pengutronix.de>
References: <20230705144219.504194-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_074231_320396_4E901D00 
X-CRM114-Status: GOOD (  10.94  )
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
Subject: [PATCH 2/6] i.MX: HABv4: fix event status comparison
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of only printing events belonging to a certain level, print all
events that have a higher status than the current event. This fixes
event printing for i.MX8M based boards.

Fixes: 8b35facbb971 ("i.MX: HABv4: Improve HAB event printing")

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/hab/habv4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index b6baa92c67..26463c8ce0 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -236,7 +236,7 @@ static enum hab_status imx8m_read_sram_events(enum hab_status status,
 		}
 	}
 	while (i < num_events) {
-		if (events[i]->status == status) {
+		if (events[i]->status >= status) {
 			if (internal_index == index) {
 				*bytes = sizeof(struct hab_event_record) +
 					be16_to_cpu(events[i]->hdr.len);
-- 
2.41.0



