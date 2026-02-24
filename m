Delivery-date: Tue, 24 Feb 2026 12:02:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuqB5-0059mJ-2c
	for lore@lore.pengutronix.de;
	Tue, 24 Feb 2026 12:02:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuqB6-0000lj-2j
	for lore@pengutronix.de; Tue, 24 Feb 2026 12:02:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h5FaaPPsTikQt7O5wdpAcJIDPyu9z4LjEmJOT+s0ERM=; b=hl1H8c1LncGLpPM425vqu4aWfq
	7lDmH1zhhInsm0oJFrJR8/8NzqlHCU5T6O4ugmoBvL7JlxF2tnKDfNMDZGcIPOK5uWMWPaejFe5C4
	H5cGZ8vZBTXwHVRKnojHz2K6Si2Ge4mxIfHBYNLANxxSLC4KeQQGUWrUgIx2tOaoOgDp6j0mQFlAv
	GEU7noZZQxmXaQZLswn4aSDeZzFzOujKkr8Nb51lE0qJfD4YVrX6tuqZzg0F3Bfv4gTN9ao2rJHZg
	W/nzO8BeUUqbqNKtVboKW8jaLtY/memghOA99xdwt999eJ166qOpOqzxn2mYzRSHeEv5ezvgJ1URx
	Jmf5Znfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuqAG-00000001vmR-0Tt8;
	Tue, 24 Feb 2026 11:01:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuqAE-00000001vlZ-22WU
	for barebox@lists.infradead.org;
	Tue, 24 Feb 2026 11:01:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vuqAB-0000Jx-9y; Tue, 24 Feb 2026 12:01:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vuqA9-002Nsr-2M;
	Tue, 24 Feb 2026 12:01:11 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vuqAA-00000009ejx-46eq;
	Tue, 24 Feb 2026 12:01:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Tue, 24 Feb 2026 12:01:07 +0100
Message-ID: <20260224110110.2301531-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_030114_521913_AF85B458 
X-CRM114-Status: GOOD (  11.17  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! libfile: factor out zero-page resistant read_file as __read_full_anywhere
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

libfile: fix error masking in __read_full_anywhere

When the second read_full() call fails with a negative error code,
the function returns now + error_code, which is a positive value
that looks like a successful short read. For example, 4096 + (-5)
returns 4091 instead of propagating the -EIO.

Check the return value of the second read_full separately.

Reported-by: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/libfile.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index f6eeaebe4cd1..f5cea7b94998 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -807,7 +807,7 @@ int cache_file(const char *path, char **newpath)
  */
 int __read_full_anywhere(int fd, void *buf, size_t size)
 {
-	ssize_t now = 0;
+	ssize_t nbytes = 0, now;
 
 	if (unlikely(zero_page_contains((ulong)buf))) {
 		void *tmp = malloc(PAGE_SIZE);
@@ -822,9 +822,12 @@ int __read_full_anywhere(int fd, void *buf, size_t size)
 
 		if (now <= 0)
 			return now;
+
+		nbytes += now;
 	}
 
-	return now + read_full(fd, buf + now, size - now);
+	now = read_full(fd, buf + nbytes, size - nbytes);
+	return now < 0 ? now : now + nbytes;
 }
 
 #define BUFSIZ	(PAGE_SIZE * 32)
-- 
2.47.3



