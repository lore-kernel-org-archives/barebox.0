Delivery-date: Wed, 22 Sep 2021 09:16:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwUH-0005tc-QY
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 09:16:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwUG-00061m-TQ
	for lore@pengutronix.de; Wed, 22 Sep 2021 09:16:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a50h2q3chz956gxUk2PFSaXbaYNkvXSlF8roZuUNm8c=; b=jIGfZus9CjK0m1
	DO98Ml+bZ+MamGL2Kc+jpRey8pHKZAkF55Gy5x7sIpS+GCBiWbAno0NtubPJO99Ng8K8d4oFkCDr5
	P0x/lGqLOCfYVrFXVVEjT5eY1A0Ck98sFHtUbatei0OGwyH5LnzPx4r8+l7g229+iXg65lRfxesY8
	IK40+qgBCq9lVwRNxfy41/rcwdxjw4Hc96BZHj04t6pDQN+ZtsvBxAcAMakcgjV7dAm/vuC1rBYDa
	sCKlAUTFnbY6OEJ/h/1LoKAAiyDkZEWN6vCrrnHKL9bjlCwelUsAUY1E9h2XtsUllF4YxoAXFm45N
	R1sVMMQTwogwSfob2kcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSwSv-007Gyo-BK; Wed, 22 Sep 2021 07:14:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSwSp-007Gxm-99
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 07:14:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSwSo-0005gZ-0U; Wed, 22 Sep 2021 09:14:42 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSwSn-0008KA-OQ; Wed, 22 Sep 2021 09:14:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Sep 2021 09:14:39 +0200
Message-Id: <20210922071440.31949-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_001443_377799_EF3A90C9 
X-CRM114-Status: GOOD (  10.62  )
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
Subject: [PATCH master 1/2] startup: don't read glob_t if glob("/env/init/*")
 fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

globfree() is a no-op if glob_t::gl_pathv is NULL. A failed glob may not
always initialize this member however, leading to potential memory
corruption.

Fix this by only freeing the glob_t if glob() had succeeded.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/startup.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index d170cb8a7c5a..871696968a14 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -345,9 +345,9 @@ static int run_init(void)
 			run_command(scr);
 			free(scr);
 		}
-	}
 
-	globfree(&g);
+		globfree(&g);
+	}
 
 	/* source matching script in /env/bmode/ */
 	bmode = reboot_mode_get();
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

