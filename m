Delivery-date: Fri, 28 Mar 2025 18:16:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tyDKD-005Mtu-1I
	for lore@lore.pengutronix.de;
	Fri, 28 Mar 2025 18:16:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tyDKC-00017f-SR
	for lore@pengutronix.de; Fri, 28 Mar 2025 18:16:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gNUBLX6MaEvXjm4AvOTsuUcZynkUbHYroUi71/dmnmM=; b=PPJUEviSplHPilAixNqCmFBwsr
	X2T/HNOD+C3NJCaUlFvpzxRYbsk49w0VQh9YT2qUahd4wb3Pc++x27NjxGfXwEFp0ACZTi5ayzsFZ
	pe2k85tPgpD6Wk5HU8WGPln2bqyMW3aFLIjkyNk0hay7cCDfLNY8YrafnIaa/0v65jOWYLUvvVqsH
	9T0KgK8ahWnWCZ2C64jdeTxO6n++tInLHeP4wgdeMpI77XGGEK+AjGDuOPeMnfEQrssGTc3f02zn/
	4ke4Lc95mJHEnjqi/DKCMYydCoNHjvuGuMuYqfRNDN4d/DgI6FQZMnk2zDMJ68Lxf2hn3EeomvL/O
	mCABX5uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tyDJi-0000000DyM0-2gaW;
	Fri, 28 Mar 2025 17:16:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tyDJg-0000000DyKk-1tqd
	for barebox@lists.infradead.org;
	Fri, 28 Mar 2025 17:16:25 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tyDJd-0000z9-2H; Fri, 28 Mar 2025 18:16:21 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Fri, 28 Mar 2025 18:16:17 +0100
Message-Id: <20250328171617.1945875-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250328_101624_487682_488BEA59 
X-CRM114-Status: UNSURE (   9.36  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] bootchooser: fix state_prefix nv variable in error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The correct variable for the state prefix is
`nv.bootchooser.state_prefix`, not `nv.state_prefix`.

Fixes: cc532a3f733 ("boot: add framework for redundant boot scenarios")
Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 common/bootchooser.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index 3e7bda9ab0f..6c324fb155e 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -381,7 +381,7 @@ struct bootchooser *bootchooser_get(void)
 			}
 			free(state_devname);
 		} else {
-			pr_err("State disabled, cannot use nv.state_prefix=%s\n",
+			pr_err("State disabled, cannot use nv.bootchooser.state_prefix=%s\n",
 			       state_prefix);
 			ret = -ENODEV;
 			goto err;
-- 
2.39.5



