Delivery-date: Mon, 11 Aug 2025 14:30:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfx-009Kps-1F
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfZ-0006g3-IP
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IObJcQCEivxxW/5TisPiuI1wOuf41dit3xr3PQBvL88=; b=i4rho09M0elAy5D93YYbH0brUS
	ehC8ny6TBQyMPXgnpRvZVpqgFf6tsfriXLimQcj5YavvWmo8QeGWfGbr+Or9ErQw4a93+bki4FSEd
	0haIqtG2/0FfqGMqmPnsr863J3BSjpbaJ/ZeObOnB8CKRZH2Fbnanl2ASd40tOyFxVZEffD3ka//o
	dN5rbpx+0PYIozhoMLzcF9eO4FjDTq1a1cLbor3yQoHhKVQ/adVjqje69jxcXcqqAXCGV2F3ecNwA
	udxigKOIMkZlGiRd3E8uDSurYgZl6mFzg8pDgBQERpqZtDsyk020R4HWZ0CdiITvtDKPEAYnps9/H
	4lmQNZWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReE-00000007eUr-2kT3;
	Mon, 11 Aug 2025 12:29:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdo-00000007dk5-3WLK
	for barebox@bombadil.infradead.org;
	Mon, 11 Aug 2025 12:28:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=IObJcQCEivxxW/5TisPiuI1wOuf41dit3xr3PQBvL88=; b=QrmmAHTc08bSs1AWeqNYYk+ER3
	lnLI/WmYTARC9piVk4bo4U/ZfH/rSdA6UTT3biL4CqUdCvcFhNNgNOaND6WoL++1jDHCYPfNCq/xc
	aG/5CzglzFOSbzaQ1CqdDHTWrsmgJFM7zx4HchxZivOXta1jEIvF7hpQQv0uosSX6NVHxIaKKhyum
	8PYzWgAXvco3k8uuG0qCROZpC8Ey8U3Z6870pyel/IGVllIMYAeIZs1MG89Ai1wHWFMcj0RLPJP74
	LcHa1zkD8EtzbJQtYd2PlNhqWYIG7/QgJp9uuCc66AJNPIURswF9Yi7g3zR+baouXuMQc4wGWW9Jc
	ZyZeRQLg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdl-0000000FPVi-1MgN
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdk-0004WP-7r; Mon, 11 Aug 2025 14:28:36 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:21 +0200
Message-Id: <20250811122824.1667791-42-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_132837_468494_0AE42277 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 41/44] fimware: arm_scmi: export scmi_list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This list will be used by the upcoming bfetch command to
determine whether the running barebox has SCMI support at runtime.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/firmware/arm_scmi/driver.c | 2 +-
 include/linux/scmi_protocol.h      | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 0048cc012223..bbb62dd5191a 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -38,7 +38,7 @@ static DEFINE_IDR(scmi_protocols);
 static DEFINE_SPINLOCK(protocol_lock);
 
 /* List of all SCMI devices active in system */
-static LIST_HEAD(scmi_list);
+LIST_HEAD(scmi_list);
 /* Protection for the entire list */
 static DEFINE_MUTEX(scmi_list_mutex);
 /* Track the unique id for the transfers for debug & profiling purpose */
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index c9cacb7f617a..b73b88cea94b 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -691,4 +691,6 @@ scmi_driver_register(struct scmi_driver *driver)
 struct scmi_protocol;
 int scmi_protocol_register(const struct scmi_protocol *proto);
 
+extern struct list_head scmi_list;
+
 #endif /* _LINUX_SCMI_PROTOCOL_H */
-- 
2.39.5



