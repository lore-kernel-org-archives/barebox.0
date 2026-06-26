Delivery-date: Fri, 26 Jun 2026 10:47:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DM-00A11Q-0u
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DL-0005yx-BR
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oqEJUJlRm40Skj7JDVod15XSe8T1i/Q5ZCOJ7DJOpis=; b=zZDn6+TKQ9AQeQdN70JJ5Imqul
	c9TqGO/XwF97d4irvTjeXoEYLo0haK9g04d8OyeI1HGNR+tdEbtTObnJ3RidJeq5IIIi+hXxTyrDj
	vKqcorKZXYQPMpUEZhYdGDcdZlq0bWZGOSLP0UEaND5qZVn+pneBtbRXz3XHvO4ygjTqZhj6faPAE
	dLb5/xUz7w98cLbeklrKX31Ov2K6wbahlUcFLqvQZ6P0lHruGDA+gqUgRvQ7qseq1ZF2sdp37oBNd
	bgECD1cb0BG9f33TrSYeav79ASlwA0hE0g4bAJn5kjw/jKLAolUMXa6dZXXm7WHwN2E4suKtKMLhx
	02Ha83kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cb-0000000AtDR-0eMF;
	Fri, 26 Jun 2026 08:46:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2CV-0000000At86-3zoF
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CS-0003ZP-7P; Fri, 26 Jun 2026 10:46:12 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:13 +0200
Message-ID: <20260626084608.1388806-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_014616_043736_FF5A022F 
X-CRM114-Status: UNSURE (   9.94  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/26] nvme: fix buffer advancement when chunking due to max_hw_sectors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

max_hw_sectors can be derived by reading from the NVMe driver and
controls how many sectors to maximally read/write at once.

Bigger reads/writes were split by doing the operation in a loop.

However, only the first iteration of the loop worked, because the buffer
was advanced by the _block_ count and not the _byte_ count.

Fix this by advancing by advancing by number of bytes instead.

Fixes: aedcb568afe4 ("drivers: Import a very basic NVME implementation from Linux")
Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 98731ffe7cb2..21aeda78ebfb 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -328,7 +328,7 @@ static int nvme_submit_sync_rw(struct nvme_ns *ns, struct nvme_command *cmnd,
 				break;
 
 			num_blocks -= chunk;
-			buffer += chunk;
+			buffer += chunk << ns->lba_shift;
 			block += chunk;
 		}
 
-- 
2.47.3



