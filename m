Delivery-date: Mon, 09 Jan 2023 09:37:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEnfC-006THz-R6
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 09:37:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEnfA-0000sD-Vz
	for lore@pengutronix.de; Mon, 09 Jan 2023 09:37:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=34Tz1hlMOKfONaky3Zhvv6V28HUZsaObUCxAzB9j5h8=; b=5D7AZlMeMKgbP6gwtC6lxmT2v4
	hIRJhUzQ5HqTtGpv8QCV86KQNBZoCs/xAUWhdktUs3O9fXI9IUknA216obCz7n/SgC25v1kORfuFm
	mwU0uDxeN8XQQqubnC1wloEmFGltTqyJYvYe5WWORgl3EGdRnH57+qYiInzp3FsWCICAk6g5XEQRq
	olWFS0h6zucaxP2wXw/Jg2j/66wXA1knYAH1k2ZpjsQ4Tgi3zXY+cLrAr5i/uXLnfdKNHvFpfTcaj
	LcANwP9kY5SQvjhDekwKm9dN6vyDQvrbKHgW6AARbnaT6U9YUNA5e0+7a6ga7B7A4DjmZtUi+Qp9x
	Qz36BR9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEndh-000PIb-Lo; Mon, 09 Jan 2023 08:36:17 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEndc-000PGm-42
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 08:36:13 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 071581BF20D;
	Mon,  9 Jan 2023 08:36:03 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  9 Jan 2023 09:35:58 +0100
Message-Id: <20230109083600.1820078-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_003612_484285_933A82BD 
X-CRM114-Status: UNSURE (   9.90  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] driver: have dev_name(unregistered device) behave as expected
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For drivers that create new virtual child devices, error paths often
tend to use dev_name() on the uninitialized device via the dev_ family
of logging functions. Many such uninitialized devices have a name set
already though, but just lacks registration, which leads to dev_id
returning dev->unique_name, which may be NULL. Change dev_name to
return dev->name if dev->unique_name is NULL.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/driver.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/driver.h b/include/driver.h
index 693d5cb3e580..4d500ed21e34 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -191,7 +191,9 @@ static inline const char *dev_id(const struct device *dev)
 
 static inline const char *dev_name(const struct device *dev)
 {
-	return dev_id(dev);
+	if (!dev)
+		return NULL;
+	return dev_id(dev) ?: dev->name;
 }
 
 int dev_set_name(struct device *dev, const char *fmt, ...);
-- 
2.38.1



