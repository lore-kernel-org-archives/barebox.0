Delivery-date: Wed, 27 Oct 2021 08:46:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfchT-0005Nw-JN
	for lore@lore.pengutronix.de; Wed, 27 Oct 2021 08:46:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfc2Y-0003uz-0L
	for lore@pengutronix.de; Wed, 27 Oct 2021 08:03:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4dl9319t3vQhIHrFKcr/Pb0T4gLIM58fwrtp6MUvIxY=; b=YSJI5tG75sqODe
	ijcuRXUkCNKJWeysrwgTIuiFJNeZGto8ULc8apa4NzitkdBpGxEZP/5S5JvR33TeZMYG7TfZJymSY
	CSerIidhw+N6tu6XTg7LiQVczUufBPcaiItc1SXQqsdnZxfRRngBeEiIoWQ5j6Tob221P/owOeu53
	9bQxyf9m1O6B4GzcrnsCuA7KoJzosgodX+zoZent7ATD2H4Rp+Bed4BxXiQKh9sC2NXMrfBFtgq5b
	8UXA2LkZ6rZQDrL61gQuDUqGOuCiLt/J0iodLl9ZTbwIypztzcq2nHKua22Hlg5OpyUAkv+NswuPs
	NLDb9zsXeZDrSwGfUkvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfc0h-003xSJ-FL; Wed, 27 Oct 2021 06:02:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfc0c-003xR5-EN
 for barebox@lists.infradead.org; Wed, 27 Oct 2021 06:01:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mfc0V-0003s0-Tq; Wed, 27 Oct 2021 08:01:51 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mfc0V-0007il-KM; Wed, 27 Oct 2021 08:01:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 27 Oct 2021 08:01:50 +0200
Message-Id: <20211027060150.28184-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211026_230158_502780_46507C80 
X-CRM114-Status: GOOD (  11.43  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! scripts: Add common library functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

scripts: common: mmap mutable memory in read_file_2

imx-usb-loader expects the file buffer contents to be mutable as it
will patch out references to plugin and DCD segments.

With the consolidation of the different file read helpers, the
buffer is no longer always malloc'd, but a read-only shared
mapping is attempted first and if it succeeds, imx-usb-loader
will seg fault during fixups.

As we don't want to modify the underlying file, switch to a writable
private mapping to remedy this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/common.c b/scripts/common.c
index bff08b0810c2..b780b099419c 100644
--- a/scripts/common.c
+++ b/scripts/common.c
@@ -46,7 +46,7 @@ int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_si
 		goto close;
 	}
 
-	buf = mmap(NULL, max_size, PROT_READ, MAP_SHARED, fd, 0);
+	buf = mmap(NULL, max_size, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0);
 	if (buf == MAP_FAILED ) {
 		buf = malloc(max_size);
 		if (!buf) {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

