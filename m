Delivery-date: Mon, 15 Aug 2022 08:41:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNTn9-0069P9-HP
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 08:41:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNTnA-0008Qh-Gj
	for lore@pengutronix.de; Mon, 15 Aug 2022 08:41:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6JKr07kjfrW20cUBSxB/dSCRogZ14FdZdXAJo/CBTB0=; b=vLkZMf4gWGT2ANW/QcWAhwjz8k
	2i3Iuwy0Ovy9L4s9OL7qmtKaXMKwOPgqU7onzcaElNwP2siMvZBOaufeAUVrfZGpOwHeF+Gg2izG+
	aGp9kRRaO0+St+fEbRyh5p6HfhjlNcVgZoWyXC4g1Sdzs2xdnxVWLJLervy0Y+xmikuqycusUTvRf
	TvroOGmpNkEPU3z+dfue7OkRriMguZH2NHEDYuRTzhXMtR65wC4Wu5CUwVGYM5bdJNJD+iHlU0Ssh
	M8w6xC8dc9I0G8EBTfh4JY4OPbGlYDyF41PMIS55k05Eghhxs/vxVIBilb+27rahsRq0MdAWeIkdn
	xl4fVD5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNTlq-00C4x4-BP; Mon, 15 Aug 2022 06:40:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNTlc-00C4vG-Je
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 06:40:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNTlb-0007v0-Am; Mon, 15 Aug 2022 08:40:03 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNTlY-003rqr-Bb; Mon, 15 Aug 2022 08:40:02 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNTla-002x8a-0c; Mon, 15 Aug 2022 08:40:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 08:40:01 +0200
Message-Id: <20220815064001.702879-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220814_234004_789091_673F58F2 
X-CRM114-Status: UNSURE (   9.53  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] pstore: disable double memory reservation fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Device tree fixup ramoops_of_fixup registered directly after
of_add_reserve_entry already takes care to create a /reserved-memory
entry, so adding one to the FDT reserved memory list is redundant.
Thus keep only the /reserved-memory entry.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/pstore/ram.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 0d8bb8f418f4..b484ecd55201 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -639,7 +639,6 @@ static int ramoops_probe(struct device_d *dev)
 			  ramoops_ecc);
 		globalvar_add_simple("linux.bootargs.ramoops", kernelargs);
 	} else {
-		of_add_reserve_entry(cxt->phys_addr, cxt->phys_addr + mem_size);
 		of_register_fixup(ramoops_of_fixup, pdata);
 	}
 
-- 
2.30.2



