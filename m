Delivery-date: Mon, 13 Sep 2021 10:32:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPhNi-0006Ll-4V
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 10:32:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPhNh-00010M-3q
	for lore@pengutronix.de; Mon, 13 Sep 2021 10:32:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TC/ztWH678BSx1u08Q8QQnaTC327gTojnW7FY1dKd7o=; b=01gH+lTn4IJnUT
	mfiF+O7Uo0zq2lminOtrnpZABhf41eZw/h5BdOGrsgZT5UNOwiULO28x6OgAro3w7EAsikyrpmJdy
	J2lBBLKqVrKZtJU4PY0VREz5WRfGs+0Fhn2Ouv1p3ASZpkugmMpGF6lLNL1kZnfSP3b8jFXxgHfsN
	PaE6BX+4yK3z7IueTi/S9WAuYx3Z/WeKyV5BDCkgqgLHghntlZ6RxmO4/eG7NOBEzGIwEUwlTgGDA
	KlmYlStXcMjLcQskeTmPVrL+f3mjwlbRqZKdbc/Lf83fU62EP/X9MP8SvEu+MDUtxKUZkDXsxKjym
	m9rxZlXyGMWMrAzUP4RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPhLr-000lJV-IW; Mon, 13 Sep 2021 08:30:07 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPhLg-000lET-4C
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 08:29:57 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7E25920000B;
 Mon, 13 Sep 2021 08:29:48 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 13 Sep 2021 10:29:42 +0200
Message-Id: <20210913082942.364324-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_012956_335878_9615DC59 
X-CRM114-Status: UNSURE (   9.43  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] base: driver: fix double removal of child devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Child devices like an ext4 file system on a partition may be removed
twice: Once because they're in the active devices list and then once
more, because unregister_device is called for the children of its parent.

As struct bus_type::remove clears association of a driver with its
device, we can set struct device_d::driver to NULL. unregister_device
will then skip the second dev->bus->remove.

Fixes: 29f1c211d86c ("fs: don't free device in remove callback")
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/base/driver.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 0e04ef36868d..0fedb30161b4 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -512,7 +512,10 @@ static void devices_shutdown(void)
 
 	list_for_each_entry(dev, &active, active) {
 		if (dev->bus->remove)
+		if (dev->bus->remove) {
 			dev->bus->remove(dev);
+			dev->driver = NULL;
+		}
 	}
 }
 devshutdown_exitcall(devices_shutdown);
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

