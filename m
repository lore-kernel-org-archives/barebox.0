Delivery-date: Tue, 11 Nov 2025 14:33:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIoUy-000AHU-35
	for lore@lore.pengutronix.de;
	Tue, 11 Nov 2025 14:33:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIoUy-0003UQ-CA
	for lore@pengutronix.de; Tue, 11 Nov 2025 14:33:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=H7SNoPl0/CcwqggwQgn8Ffik4jQbyJpIQZ7te+EMnRk=; b=z5BKROB+9Ge92I34Bg6X9AZAH7
	8dQBwznXsEN7eAEfCObVc3hsLY1Y3v5DQV/ad1ntEp2pvGw+MjJ9fDvhqs55vTkETi0JIz+uwILvJ
	sUOX63jY+ZbFpQ4qrLTztyjEAj6Ty/LNjFWJ3lW6o8rfAb/MA1NFQbD5MuI1r+stW7uf1gCNLS/oF
	MG8owEGOMvQGOrJAY+q9JpN4jyoLbhyd67MBqkEEjLI6g+kQ5vIuMTTrxcnLbdRDWu7+NiYd1N90b
	vycYCNxm+MHyNXWLrQ0pSYWOYhSfHedK79RJs/qvJFCZgUZIM/NBcpScRzrzhwSMZ08IKbYooLrMj
	FiFf2Law==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIoUP-00000007FLY-0lRW;
	Tue, 11 Nov 2025 13:32:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIoUM-00000007FLA-4615
	for barebox@lists.infradead.org;
	Tue, 11 Nov 2025 13:32:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vIoUL-0003Mk-8Q; Tue, 11 Nov 2025 14:32:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vIoUL-008D1K-0F;
	Tue, 11 Nov 2025 14:32:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vIoUK-0000000BNXH-471Z;
	Tue, 11 Nov 2025 14:32:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Nov 2025 14:32:45 +0100
Message-ID: <20251111133245.2711874-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_053251_034857_57D31808 
X-CRM114-Status: UNSURE (   9.64  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mvebuimg: replace errant sizeof(4)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

trailer is a 4 byte array and sizeof(4) == sizeof(int) for most
contemporary architectures, so this went unnoticed.

Remove this hidden assumption by using sizeof(trailer).

No functional change for probably all architectures barebox was so far
compiled on..

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/mvebuimg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/mvebuimg.c b/scripts/mvebuimg.c
index 8e9b1f911250..b896b5888f78 100644
--- a/scripts/mvebuimg.c
+++ b/scripts/mvebuimg.c
@@ -191,7 +191,7 @@ static int mvebuimg_v1_write_binhdr(int fd, size_t *offset,
 	*offset += ALIGN_SUP(s.st_size, 4);
 	trailer[0] = is_last_header ? 0 : 1;
 
-	summ->method.update(&summ->method, trailer, sizeof(4));
+	summ->method.update(&summ->method, trailer, sizeof(trailer));
 	ret = pwrite(fd, trailer, sizeof(trailer), *offset);
 	if (ret < 0) {
 		pr_err("failed to write trailer of binhdr \"%s\"\n",
-- 
2.47.3



