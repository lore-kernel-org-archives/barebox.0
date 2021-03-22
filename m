Delivery-date: Mon, 22 Mar 2021 12:25:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOIgc-0003N0-W4
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 12:25:30 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOIgc-000692-79
	for lore@pengutronix.de; Mon, 22 Mar 2021 12:25:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8iYHWW3DC6IR1/36oJxTO1Fpe+ObO+AiV3K68YctD/Q=; b=qDuwb3qQpDNotb3us1Y65fkbq
	I6bmdRh+Chlz4Juko453GCy/fxqOZN5SDn2wy0iveareWKQ9QI4J4QQe4LtfRXLOrap4Hkc0RFR7S
	qg4MnY47OE2uN4UFq9HZzUziD0MtjkZoglEPGBI9Uin0z0D+zsPozmE1BMfE5dx4PfkS8zfL9EzBe
	siA3CNlKdcJNtfMnX6RnPMrk30xn2W60N6O/PnGIWV3pGypuGgxDAcKvhvwVCdudO2nupdTKYufAz
	1OT5IFvM7gQ1IJeNk+kih+qzrfBIPxvuk8JxTWErH4KVgNtwSoCpL6zWJHkMBl9SWIlW0JgZmx+gW
	/4hcl9gzg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOIfk-00BRPc-0c; Mon, 22 Mar 2021 11:24:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOIfO-00BRKP-DI
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 11:24:18 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOIfN-0005vH-Vr; Mon, 22 Mar 2021 12:24:14 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOIfN-000174-Mx; Mon, 22 Mar 2021 12:24:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 22 Mar 2021 12:24:12 +0100
Message-Id: <20210322112412.4232-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210322112412.4232-1-s.hauer@pengutronix.de>
References: <20210322112412.4232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_112415_550033_EC14F5AA 
X-CRM114-Status: GOOD (  12.17  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] reboot-mode: drop now unnecessary check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The reboot mode fixup tests if it is the live tree before modifying
anything. This is unnecessary now as the live tree is never passed
to fixups anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/power/reset/reboot-mode.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index df3be03edf..d9b51dfea6 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -71,10 +71,6 @@ static int of_reboot_mode_fixup(struct device_node *root, void *ctx)
 	srcnp = reboot->dev->device_node;
 	dstnp = of_get_node_by_reproducible_name(root, srcnp);
 
-	/* nothing to do when called on barebox-internal tree */
-	if (srcnp == dstnp)
-		return 0;
-
 	if (dstnp) {
 		dstparent = dstnp->parent;
 		of_delete_node(dstnp);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

