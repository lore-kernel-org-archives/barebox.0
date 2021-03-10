Delivery-date: Wed, 10 Mar 2021 14:30:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyuw-0001TZ-V0
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:30:26 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyus-0004Q7-AU
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:30:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4wOGcpSAdzw3isD+WOebxbp6gzHTbCYmqaNn3RXj8sA=; b=D7OfCFvVSCPrXJvQLUQ1RTyz2
	ja0EwULr1XUs77KZ3JwhiYjLY/XepCTM7pbg6dfXeU1KQ5IUKiMb2ux2RJJeYCI1fEViMkN3ZGPtB
	DzwXfyV4yjRIlr1R6H4QjE3QUvr0bbWjj1H2VmLICA6ebTtKDBay8IMvS+ibSAcEJmCggx2YFzM1k
	2susftUbICRjf0jZSPZMi3Wdfa+qj50CQu9F/uliDYKQHA43yFHQd/8hR/dsYEuVnvdqLAGRrHHhr
	lwxF0Ty9Slc0upWwf03lp3GzRrPatLVnxiJ4OESfi7NBmUBByurymdyIIChR4+gxjX1fsO3bNAgQO
	p/yITPuuQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJyto-006v7m-Tr; Wed, 10 Mar 2021 13:29:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJyt9-006unQ-Rc
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:28:41 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fj-MA; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006bq-IP; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:14 +0100
Message-Id: <20210310132829.7662-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310132829.7662-1-s.hauer@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132836_151621_345EFE1F 
X-CRM114-Status: GOOD (  14.83  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 02/17] firmware: make device_node argument non const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

firmwaremgr_find_by_node() takes a const pointer to a device tree node.
Most functions that take a device tree node take a non const pointer
though, so we can't call them from there. It might be worth looking
into making the pointers const for other functions, but we are not
there yet. Make the pointer non const for now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/firmware.c  | 2 +-
 include/firmware.h | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/firmware.c b/common/firmware.c
index 58509d5da6..d2d6d6f97c 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -61,7 +61,7 @@ struct firmware_mgr *firmwaremgr_find(const char *id)
  * handler. This allows to retrieve the firmware handler with a phandle from
  * the device tree.
  */
-struct firmware_mgr *firmwaremgr_find_by_node(const struct device_node *np)
+struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
 {
 	struct firmware_mgr *mgr;
 
diff --git a/include/firmware.h b/include/firmware.h
index 19777d9bf7..4e69412832 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -27,9 +27,9 @@ int firmwaremgr_register(struct firmware_handler *);
 
 struct firmware_mgr *firmwaremgr_find(const char *);
 #ifdef CONFIG_FIRMWARE
-struct firmware_mgr *firmwaremgr_find_by_node(const struct device_node *np);
+struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np);
 #else
-static inline struct firmware_mgr *firmwaremgr_find_by_node(const struct device_node *np)
+static inline struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
 {
 	return NULL;
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

