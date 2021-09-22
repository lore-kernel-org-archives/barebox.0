Delivery-date: Wed, 22 Sep 2021 09:16:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwUJ-0005tz-0k
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 09:16:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwUI-00063N-3x
	for lore@pengutronix.de; Wed, 22 Sep 2021 09:16:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZm6GrMxd14to7XBCH1XnQD2IksWGsokfXUWPnhDMms=; b=OI33fCUuFwas74
	DMPMGfn7ZTXk+jZ/hSuXCFdE+CWg+GRffCSLvHTSEzTxADNSm89XgdfJYlY1PsPdqSydPqxhYQmI2
	uOPt2LmczTox7yraeqXt+FrJG7qDm8pUA1QayR7R/ibdU2Z/GdQG4aSXXQjVkUtTmaCnw6X5TEuja
	bmZ+DcrB3uorzeYp1sQ5BtbvsZkNYC5RiCD6yI7RD5emLkt0vV5aSgwxGX2pbC+b/w0lv0TchyLEO
	7TGyiiRLrYCKtqqX5QXZk5diY2TqhlETr23BuEhbZnKlwCQ278xyh6IKWA2o/H+m6mYo7Q10egNF+
	LZ4ymrwBq5gBgIoN8u3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSwSz-007GzT-1W; Wed, 22 Sep 2021 07:14:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSwSq-007GyH-EX
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 07:14:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSwSp-0005h0-8E; Wed, 22 Sep 2021 09:14:43 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSwSo-0008KG-Vf; Wed, 22 Sep 2021 09:14:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Sep 2021 09:14:40 +0200
Message-Id: <20210922071440.31949-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210922071440.31949-1-a.fatoum@pengutronix.de>
References: <20210922071440.31949-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_001444_531555_B323E746 
X-CRM114-Status: GOOD (  10.13  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] common: menutree: prevent read of uninitialized
 memory in error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

globfree() is a no-op if glob_t::gl_pathv is NULL. A failed glob may not
always initialize this member however, leading to potential memory
corruption.

Fix this by initializing glob_t.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/menutree.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/menutree.c b/common/menutree.c
index c28284b47a0c..9a14005ea209 100644
--- a/common/menutree.c
+++ b/common/menutree.c
@@ -84,7 +84,7 @@ int menutree(const char *path, int toplevel)
 	struct stat s;
 	char *box;
 	struct menutree *mt;
-	glob_t g;
+	glob_t g = {};
 	int i;
 	char *globpath, *display;
 	size_t size;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

