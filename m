Delivery-date: Thu, 12 Mar 2026 15:45:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hHX-00ArO9-0u
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:45:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hHX-0004Or-9l
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:45:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tyLa/iD8IPOF9Sllkh0DJzns9i0A80jm1H425GbqtDA=; b=ntw8Uixv5bUCb0SXXPphCkNqdu
	4SwpskA8Q3Px+1NhyqkdYfxn1t6j5smvpvROkDL/gZ0n1X4NRbfD0jivIzPricnR4r2l3Y5BpFKY8
	xfwB02pOSGZsQhuG2itXNymJED9sbUgRCDNDNSTTYbz0miQWjdWH9HPdkr6LOeUtRB9pANaR7k9YZ
	j/Un+NKGKy6/qUKf1ANgpLxazBRcgTS2rHU8icNNeHcO44smBQ/Ai9H8CfabHqz9mB/EnFSX3k/HQ
	hPOlqTHkSWOlcd0XSdJRQxtOpgwmKx9L6ZGrn8nXFUwiSkTe+YXJLKGXggjbHQtTpSD9idPtCdFor
	zhRKg00w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hH7-0000000EETv-2e73;
	Thu, 12 Mar 2026 14:44:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hH4-0000000EESA-3aiH
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:44:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hH3-00048Q-9J; Thu, 12 Mar 2026 15:44:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hH1-0052Ni-2O;
	Thu, 12 Mar 2026 15:44:29 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hH2-000000093bb-4AlB;
	Thu, 12 Mar 2026 15:44:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:24 +0100
Message-ID: <20260312144428.2158727-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144428.2158727-1-a.fatoum@pengutronix.de>
References: <20260312144428.2158727-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074430_894928_0D4D6768 
X-CRM114-Status: GOOD (  10.77  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] libfile: drop TFTP-specific hack in open_fdt()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that TFTP internally does the equivalent of closing and reopening
a file when seeking back, switch to using that in open_fdt() instead
of open-coding it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/libfile.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index f5cea7b94998..0670ef0584cb 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -976,7 +976,7 @@ int open_fdt(const char *filename, size_t *size)
 	if (ret)
 		goto err;
 
-	ret = pread_full(fd, &fdt_hdr, sizeof(fdt_hdr), 0);
+	ret = read_full(fd, &fdt_hdr, sizeof(fdt_hdr));
 	if (ret >= 0 && ret < sizeof(fdt_hdr))
 		ret = -EILSEQ;
 	if (ret < 0)
@@ -988,13 +988,12 @@ int open_fdt(const char *filename, size_t *size)
 		goto err;
 	}
 
-	close(fd);
-
-	/* HACK: TFTP doesn't support backwards seeking, so reopen afresh */
-	fd = open(filename, O_RDONLY);
-	if (fd >= 0)
-		*size = fdt_size;
+	if (lseek(fd, 0, SEEK_SET) != 0) {
+		ret = -errno;
+		goto err;
+	}
 
+        *size = fdt_size;
 	return fd;
 err:
 	close(fd);
-- 
2.47.3



