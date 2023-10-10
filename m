Delivery-date: Tue, 10 Oct 2023 16:34:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDoy-003BGg-H2
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:34:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDow-0008Jd-7o
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:34:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mIKfIcnOJGPAlY453N1TXjLf8f5zRiLLEzKo5xBtn8Q=; b=cbhHTc99TxvVFUnZSoSgVpDLVC
	SQYnrg8N7Nii+2hDn5XrrDyG50Y4+tCTlSQC0BiPhv0IbYWBU7O31hhUpBdJqd4F3Y+ggitLrk83W
	acZ/mmTKDJeFllZto7ug0/snou6D2L9S3P+dCPGbkUVRvh487ItwD9DvpiCIgDZre0dEi/JMbFQBA
	vb+0vUFUhaO1g///cwqOTqUMfm3+CK72UHNOUFELxpEznLeUiiua5tfXM4LEF5C3uazIQWis85l4P
	l6Vv9J4DElkYH1ek0by80E5+SbEsuN0WPIUoIJG/hnPB6bdoRa3/I3VyjS4DeBvNqcDFYgbVz5I2S
	NKlQfzeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnb-00DZVF-1K;
	Tue, 10 Oct 2023 14:33:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnY-00DZQ4-0A
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:25 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-1V
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:32:50 +0200
Message-Id: <20231010143314.2031253-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_073324_090966_597C8A8C 
X-CRM114-Status: GOOD (  10.60  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/26] i.MX: HABv4: fix event status comparison
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Instead of only printing events belonging to a certain level, print all
events that have a higher status than the current event. This fixes
event printing for i.MX8M based boards.

Fixes: 8b35facbb971 ("i.MX: HABv4: Improve HAB event printing")

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/hab/habv4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 9f54aed5f508..bbfbf697b520 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -224,7 +224,7 @@ static enum hab_status imx8m_read_sram_events(enum hab_status status,
 		}
 	}
 	while (i < num_events) {
-		if (events[i]->status == status) {
+		if (events[i]->status >= status) {
 			if (internal_index == index) {
 				*bytes = sizeof(struct hab_event_record) +
 					be16_to_cpu(events[i]->hdr.len);
-- 
2.39.2



