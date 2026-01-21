Delivery-date: Wed, 21 Jan 2026 12:38:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWXJ-003kK6-17
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 12:38:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWXI-00044B-BL
	for lore@pengutronix.de; Wed, 21 Jan 2026 12:38:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F8PRpb21gRBgzyutXVMXSWBWtxRGSmddYXc7zowgzQM=; b=w/k0/sSDW4V0/Yg+wrCJs8yGWn
	U8tkO17mXgEQZXEKaXIKb54tH3xS9QGGCV5go8skJ18Us4wkWJIxwxGMQbY9L4R7bvYWW539Yq4E6
	I4+45hDFWazPiZ7cbhmbzEIksNmwFmD6K/sI2wpd/0ERI7YQoWSbRnEdXsoNMF4sjbZKbJWNbzuHA
	QpeQACbcURrfyKPol+npV1jpoCTyZTYe9OD6C3894bsrJBm7B2HN3x+HXIHIOdId1XlSWzvFkbJ/i
	0ZghLtvmZh5dALW2wgeQhY/EtllGFh18+6wPabNnFZg98+kpLZfNd1+//Xn3DC7GWoTyOI5j0mc6l
	kq01ul/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWWw-00000005MSH-1ren;
	Wed, 21 Jan 2026 11:37:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWWs-00000005MQh-32KL
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 11:37:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWWq-0003rL-50; Wed, 21 Jan 2026 12:37:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWWq-001k2F-22;
	Wed, 21 Jan 2026 12:37:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWWq-00000006G8i-2HHy;
	Wed, 21 Jan 2026 12:37:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 21 Jan 2026 12:36:48 +0100
Message-ID: <20260121113738.1485637-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260121113738.1485637-1-a.fatoum@pengutronix.de>
References: <20260121113738.1485637-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_033742_787953_08FBA176 
X-CRM114-Status: UNSURE (   9.51  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] bootm: delete initrd reserve entry on bootm_boot return
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Repeating dry runs with an initrd will eventually lead to exhausting the
reserve memory entries as OF_MAX_RESERVE_MAP is only 16.

Make sure to clean up after ourselves if bootm_boot returns without
actually booting.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index e3bd2eecb0cc..c554fa9e4015 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -1247,6 +1247,8 @@ int bootm_boot(struct bootm_data *bootm_data)
 err_out:
 	bootm_reset_overrides();
 	release_sdram_region(data->os_res);
+	if (data->initrd_res)
+		of_del_reserve_entry(data->initrd_res->start, data->initrd_res->end);
 	release_sdram_region(data->initrd_res);
 	release_sdram_region(data->oftree_res);
 	release_sdram_region(data->tee_res);
-- 
2.47.3



