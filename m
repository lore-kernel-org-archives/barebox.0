Delivery-date: Mon, 09 Feb 2026 16:31:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpTEe-00Ab9J-3C
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 16:31:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpTEe-0000Tv-1F
	for lore@pengutronix.de; Mon, 09 Feb 2026 16:31:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oklX67lahQKsxvI4O6yJYwTyvckm6JKWsZMSKOTQCTU=; b=0dkZfEgM83H61bRgEBw/ikJtcB
	Drr9cu/mo749m4zbnxuubie/1SJpUdkr1Cibu+xOmbGsmYrKqH7ZU/DnZxEYOP+pQqs4f4u97pYQg
	xv8UWZTYa8fDjWJwLCqr/MOYXRnH2TQxtCeTJa4FRYrGmRuxepXOEvLaJHFmXsLC9ywFedLCppzMD
	4Dxh4zF+dNV/2AhxamdkfqNXbFY8lVhLE3AyVuGwVNcDmGeJVQx/7sGWxkdULIo4EB5nKeBSPfqkT
	j1Ck2avUnr45rV8pTNmC4ke0acQyNGHKwSQaMFk/XCIZo4f5N5++YwVs39p0TyyNnzMXmK5yG37Vn
	9squHudQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpTDz-0000000Fbzu-2A9x;
	Mon, 09 Feb 2026 15:30:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpTDw-0000000FbzD-1Q7h
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 15:30:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpTDu-0000OF-Ik; Mon, 09 Feb 2026 16:30:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpTDv-004uZi-07;
	Mon, 09 Feb 2026 16:30:50 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpTDu-00000007jLT-19IH;
	Mon, 09 Feb 2026 16:30:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Sonnet v4.5" <noreply@anthropic.com>
Date: Mon,  9 Feb 2026 16:30:46 +0100
Message-ID: <20260209153047.1842593-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_073052_374866_CAE3018D 
X-CRM114-Status: UNSURE (   9.79  )
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
Subject: [PATCH] efi: payload: bootm: fix memory corruption on initrd load error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

initrd is a pointer to a pointer and its only used place the pointed at
pointer on stack. Freeing it will this trigger memory corruption.

Fix this by actually freeing the heap buffer.

Reported-by: Claude Sonnet v4.5 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index ea5b1265aeaa..f4e6e6324bcd 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -161,7 +161,7 @@ static int efi_load_ramdisk(struct image_data *data, void **initrd)
 	return 0;
 
 free_mem:
-	free(initrd);
+	free(initrd_mem);
 
 	return ret;
 }
-- 
2.47.3



