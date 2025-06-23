Delivery-date: Mon, 23 Jun 2025 08:40:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqn-00AB1E-1x
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 08:40:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqm-0001Pc-FN
	for lore@pengutronix.de; Mon, 23 Jun 2025 08:40:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UXDRPiMfGuSILbr3VTK/qHuCkfF0XIcRlBAuT4SJixM=; b=r+d5bJ2Zt9Px1/699AZFyPN7oo
	UPUrD/29qzwvVF1m+9IGscgwWOLCKVNVacvz+g6QZAf22Yqgt0M0Xvd2XxHMwtUGi1/Mjr+fVFGlT
	t7KGli2MUx2C4w03FUkco4QYbrB+hrTptHa9dmGdkthnVpsQ5WJMJtEeiWbUAurPwa6hLRShLLDG8
	EliPrimFzIoiJr5K3/AGnvJrOyYat8NrDZeTaXkDkJYSri31JUMc8ym/N1hl5ZDGGsFMqtATfYOa3
	LAmKam6TkHyVTu/Q83TvMnromrE8pkTltXprPINUwltED16IEdoMaHE4rHZv/oxISa8pMBmuQPNqM
	74T1YvMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTaqH-00000001kbi-0Nic;
	Mon, 23 Jun 2025 06:39:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTadg-00000001jLI-2vWA
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 06:26:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uTadf-0006dU-7G; Mon, 23 Jun 2025 08:26:43 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Jun 2025 08:26:39 +0200
Message-Id: <20250623062641.3529615-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250623062641.3529615-1-a.fatoum@barebox.org>
References: <20250623062641.3529615-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_232644_734324_B5C2EF28 
X-CRM114-Status: GOOD (  10.08  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] test: self: idr: add test for idr_remove in idr_for_each_entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If we have had this test earlier, it would have caught that
idr_for_each_entry didn't guarantee safe iteration while freeing.

Add a test, so we may catach future issues of this sort.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/self/idr.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/test/self/idr.c b/test/self/idr.c
index cc3217bb06e4..bc68a84be4ce 100644
--- a/test/self/idr.c
+++ b/test/self/idr.c
@@ -73,9 +73,17 @@ static void test_idr(void)
 	id = idr_alloc_one(&idr, &cmp[2], cmp[2]);
 	expect(id == cmp[2]);
 
+	id = idr_alloc_one(&idr, NULL, 4);
+	expect(id == 4);
+
 	count = 0;
 
 	idr_for_each_entry(&idr, ptr, id) {
+		if (id == 4) {
+			idr_remove(&idr, 4);
+			continue;
+		}
+
 		expect(id  ==  sorted_cmp[count]);
 		expect(*(int *)ptr == sorted_cmp[count]);
 
-- 
2.39.5



