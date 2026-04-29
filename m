Delivery-date: Wed, 29 Apr 2026 12:20:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wI223-0004DC-0J
	for lore@lore.pengutronix.de;
	Wed, 29 Apr 2026 12:20:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wI222-0005WF-II
	for lore@pengutronix.de; Wed, 29 Apr 2026 12:20:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2KuQ+e4tW3qM0FED5oxQXI5PMKqvICPV2lwZ5HcHweg=; b=LQ0ugmkpG5ZwIcLkaWhpusMAVT
	IcmU0TLexo7nZmvdAjQ1x+uJDh2JXiyAeG9IAZowKNJjpmdtYgRlyI/vkhBjD5+9KvW+5adMa/uNH
	tPdnFjFTG77sA2wwzL0hWE6TKIIFN747GNLWQSkvpy9YYz5PQSyw2iMqebCNhNhF5vcSmyvHDvkZR
	qoG37Mi+vuW+209EzqKQtuySM8rDONbOrJe4xbeyb9twXxrk40ioLVNBa/otHNcpvGcgAI50LNfTH
	XNXFdQamy6wJw0eVKHus7PVFY81zKL73CzDyhL9a0jgzNEF/VUkiXPyseww023tgHCS3j/xzfKxR0
	+y9RhwnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI21T-00000003ROy-2CoG;
	Wed, 29 Apr 2026 10:20:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI21S-00000003ROb-15uw
	for barebox@bombadil.infradead.org;
	Wed, 29 Apr 2026 10:20:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=2KuQ+e4tW3qM0FED5oxQXI5PMKqvICPV2lwZ5HcHweg=; b=gOv9cx7ZmLkL/da+5DQ3fs8Ae8
	VI+QoS0pxzz1lAUB+M5/KlcZV5iVLy1FGCFLj0dYaeYQUAJ7tWt3tl58Mvq3j5yC1cuJ14iMMSYQh
	Eg0TXVjNF54IepNu+xYON4Vt8WoWdB04rXKEAzpgyqrwURUqFde+KVraLTOV7z6tb2V57GbSTdg8o
	EcCtYK66NMkg1rXdNok4zSE3PfoA4gQGNkgrejRUST9xIhS/wQcXPvuwAkXmfTRsllgc62LBmkNYm
	g8DUcY5bUKFuQR7w3879cl2N+zf2FuXG1VBm7P8PjuWJbVfeDYcMcC4jhnPfu1bHG/pYkk1jVw2ix
	JBE/w9lg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI21P-000000055rt-1HwH
	for barebox@lists.infradead.org;
	Wed, 29 Apr 2026 10:20:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wI21M-000579-Gr; Wed, 29 Apr 2026 12:19:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wI21M-007psH-0m;
	Wed, 29 Apr 2026 12:19:56 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wI21M-00000000qpg-0cvM;
	Wed, 29 Apr 2026 12:19:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Apr 2026 12:19:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260429-rkimage-resign-v1-2-1478086c369e@pengutronix.de>
References: <20260429-rkimage-resign-v1-0-1478086c369e@pengutronix.de>
In-Reply-To: <20260429-rkimage-resign-v1-0-1478086c369e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777457996; l=788;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=XnzLzGm8mdLCuA7+76j9gjGfGQjay0qgag15ge9zzno=;
 b=3u0GAB6wg+0WyTtXEcIq10/j1vdE/S2phliL5txFrMMppOc1cRjGLgLf3SJ8XT/eaKMWhxYG+
 xOmCDNBpK+ICZsY5JQ5fVsgF9IwhsnglHYTG7I1mF8d6FKUMXk8nlPI
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_111959_473344_7874AA92 
X-CRM114-Status: GOOD (  11.05  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] rkimage: unconditionally fill newidb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The rkimage tool checks if the incoming image already is a Rockchip
image and only if it's not creates a idb header. This seems to be a
remnant of some never completed support for adding a new signarure to an
existing image. Drop this to cleanly implement resigning in the next
step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rkimage.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index 04d98daa6d..2dd5fceab3 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -473,8 +473,7 @@ int main(int argc, char *argv[])
 		close(fd);
 	}
 
-	if (!(n_code == 1 && has_magic(code[0].buf)))
-		create_newidb(&idb);
+	create_newidb(&idb);
 
 	if (key) {
 		int ret;

-- 
2.47.3



