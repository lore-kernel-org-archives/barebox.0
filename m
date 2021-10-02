Delivery-date: Sat, 02 Oct 2021 19:46:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWj5Q-0003Q0-Rp
	for lore@lore.pengutronix.de; Sat, 02 Oct 2021 19:46:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWj5Q-00029Q-02
	for lore@pengutronix.de; Sat, 02 Oct 2021 19:46:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HGckssIq7ulU/O/HHTkIMB4YyaJ75vzQdJ77ZjaPdbY=; b=ctkFUeTzoDZpyp
	UO8KquKB6R5iIww8C5fwTQYpWOOxsRanuNPwAdpfn3CsMNI3GGh/ZIajwJrrVCWwS/vdhcrzsTT1N
	PfSRGGDKZg08qlLs/cCnY8V3XD0/doC03PXF9+2HH1JN/iENWVD0srovaIIChpBH/IaYzrELah/6h
	mHA8l0wBrGJXrShLcfAhAoe5sSXUIp0NvIqAdD5Qp22E07Q9Rpt8bmwa1yNV9wxoKtc0LSLNYeihI
	5lUcVmCb9MvAPE8p1LUeoUuk0k50VUZbI4CPiPnCAnRDp1TgupcLwLctu4NWcyIBNtsHsH0pyhHTU
	RjfAWthBClnhUmQJYmSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWj3j-002YWm-Np; Sat, 02 Oct 2021 17:44:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWj3e-002YWM-5d
 for barebox@lists.infradead.org; Sat, 02 Oct 2021 17:44:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mWj3a-0001wG-I3; Sat, 02 Oct 2021 19:44:18 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mWj3a-00072f-9Y; Sat, 02 Oct 2021 19:44:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat,  2 Oct 2021 19:44:17 +0200
Message-Id: <20211002174417.27020-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211002_104422_255324_E408F733 
X-CRM114-Status: GOOD (  10.43  )
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
Subject: [PATCH] fixup! console: add new CONFIG_CONSOLE_DISABLE_INPUT option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix typo in CONFIG_CONSOLE_DISABLE_INPUT case for simple console.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Sorry, just noticed it when looking again at the diff. Please squash.
---
 common/console_simple.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/console_simple.c b/common/console_simple.c
index 3b95570e5e76..8c404ad264c4 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -95,7 +95,7 @@ int console_register(struct console_device *newcdev)
 	newcdev->f_active = CONSOLE_STDIOE;
 
 	if (IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT))
-		newcdev->f_active = ~CONSOLE_STDIN;
+		newcdev->f_active &= ~CONSOLE_STDIN;
 
 	barebox_banner();
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

