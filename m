Delivery-date: Mon, 09 Jan 2023 16:13:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtqU-006lfQ-QB
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 16:13:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtqS-0003tB-A0
	for lore@pengutronix.de; Mon, 09 Jan 2023 16:13:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kb9IDNvgi561nw8tZp4Oz9+e5kdtiI9bKFclafxLSdQ=; b=kgXf7mh2Sy7fLBb6lkC31Yef1Y
	QewBmhhCyYq2tBX4Uja5l9XmyazqFA64rZP3PDpakKzbnj4nDP/9+QnjsPgGBPMv5qqjFJYYz/ig0
	+rNdw8ieJlhNHe9nBhd00iC0ST3amCGow3m9uyB96skGdKNRvWSYTxlk9GywJLmn9AqQdq9GXPH8B
	Z0ZB6kZcXAaF/VyG4ILWTHo5/79ihfRB+KXmZdJactZ4AMgtHYTrfUf7r+Qv52/Ryo25pJQ5Thqn5
	aTdoAKinfmidurAbM79Dkj5YczXM75n0iS1P+EdKd0wxHr+MtYdD35WMXf0wvG0FsgipSYd5LlLHL
	G3Ntvgvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEtpA-0028Un-6k; Mon, 09 Jan 2023 15:12:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEtod-00289l-2Q
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 15:12:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtob-0003NB-Rc; Mon, 09 Jan 2023 16:11:57 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtob-004sbc-9N; Mon, 09 Jan 2023 16:11:57 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtoZ-008bxr-MC; Mon, 09 Jan 2023 16:11:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 16:11:47 +0100
Message-Id: <20230109151152.2052493-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109151152.2052493-1-a.fatoum@pengutronix.de>
References: <20230109151152.2052493-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_071159_128609_51A6324B 
X-CRM114-Status: GOOD (  10.55  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] include: driver: make dev_(get_priv|is_probed) argument const pointer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This enables us to use the helpers in functions that themselves take a
const pointer to document their usage.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index 0ea5799d0dfb..7b04d61d168a 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -627,12 +627,12 @@ static inline struct device_node *dev_of_node(struct device *dev)
 	return IS_ENABLED(CONFIG_OFDEVICE) ? dev->of_node : NULL;
 }
 
-static inline void *dev_get_priv(struct device *dev)
+static inline void *dev_get_priv(const struct device *dev)
 {
 	return dev->priv;
 }
 
-static inline bool dev_is_probed(struct device *dev)
+static inline bool dev_is_probed(const struct device *dev)
 {
 	return dev->driver ? true : false;
 }
-- 
2.30.2



