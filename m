Delivery-date: Fri, 23 Jan 2026 22:59:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjPBJ-004cOc-0B
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 22:59:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjPBI-0001kb-2z
	for lore@pengutronix.de; Fri, 23 Jan 2026 22:59:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tktm1RonXlHOKgnb/kBz9BRMhH4KClV724/nOLv6BlA=; b=hZciNtVl6oc7QMT0kZIl4ORU8D
	KrgkJmrROkUh6Uzzi37tquHGrgu/YNTe6bCCuURHnbWFRh6lHh157ZzLKROAXsYYcyuvgSTA3aagr
	ATwbm7wGqsfHnB3zV5gogIOYYVkolyj8gvY4JBiElXSePcZiXcrAm/lwZAFP5UNvQ++aGjl13AX84
	Hv59Z1TlRhQo5jGs0dR1/fdeTapelXdJjKH3SYEjMCjNQmPTMplALl71VfVZmRRyQQCirg9/Ng83a
	fAWXHPalLQTZvF8YhWiYJXuVS3tnNnvFicCnPfG1tcooLlFRw5yNyYTIApBbqFlzoGenK58TvVaBk
	WHV9jydQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjPAb-00000009X17-4BCI;
	Fri, 23 Jan 2026 21:58:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjPAY-00000009X0m-1rdk
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 21:58:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vjPAV-0001e4-Sg; Fri, 23 Jan 2026 22:58:15 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vjPAV-0029tO-1y;
	Fri, 23 Jan 2026 22:58:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vjPAV-00000002Oog-2E8f;
	Fri, 23 Jan 2026 22:58:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 23 Jan 2026 22:58:13 +0100
Message-ID: <20260123215814.572040-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_135818_508960_E6B181CA 
X-CRM114-Status: GOOD (  10.98  )
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
Subject: [PATCH] fixup! libfile: copy_fd: add size argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

libfile: copy_fd: fix use of zero to mean all content

The function documents that a size of zero means that all data is
copied, but this is currently broken: On first iteration both size and
copied will be zero, so now is set to zero leading to an early exit
without any data copied at all.

One way to fix this is to have size == SIZE_MAX be the way to mean copy
as much data as possible, but let's do as the documentation say and
handle 0 bytes as infinite.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/libfile.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index bc79e58a82e4..0435fc4297e1 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -148,7 +148,12 @@ int copy_fd(int in, int out, size_t size)
 		return -ENOMEM;
 
 	while (1) {
-		size_t now = min(bs, size - copied);
+		size_t now;
+
+		if (size)
+			now = min(bs, size - copied);
+		else
+			now = bs;
 
 		if (!now) {
 			ret = 0;
-- 
2.47.3



