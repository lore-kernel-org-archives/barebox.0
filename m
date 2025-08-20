Delivery-date: Wed, 20 Aug 2025 12:30:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5F-002aP7-0V
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 12:30:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5D-0007U8-2P
	for lore@pengutronix.de; Wed, 20 Aug 2025 12:30:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HPY6JCJfh+xW2SZ/vLgk0/ZJJhAQXXpKYqjyVnvGkk0=; b=dtzT3wEltRbWeQ9sYiar3ejHTc
	IsTJNl8XiUki4CkUH99Ikv8ljIuZbwVpq5gfhIZcGNWeHdD1/SnTGqiQb2NYOTX+mYxCDMEyRjokv
	8yWmb3U7n5MAdlo1BFikrWrj0fsXo+xBMtalI/GmT0lcRHrL53L0D9j3g5wo58Vq2wYdX+jNcUa5y
	GJwJSIAGzQ/GpFqM4sfiNZJIBAs3Z/PnHmsTjdKCdzq7Td9GLfBcdlC5FMTspaRH/BcKmgMwYFg/S
	nDZH7pVE+H6X6iueALYLse/tbX04xoNr8EJvwD3HoGy92yPBVIhLeLzOnSQHBKpbsnz1Fct7ta9Ke
	jmHoGghQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uog4h-0000000D9Gm-43Qf;
	Wed, 20 Aug 2025 10:29:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQw-0000000D0pq-3C1q
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 09:48:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=HPY6JCJfh+xW2SZ/vLgk0/ZJJhAQXXpKYqjyVnvGkk0=; b=jYseUD06/7K0SjFQqKzCY/fkiY
	GaoJL9wmP014DzQCNGhCPmX6PK3vSokuHbbTK8sReKmTF+Ta/Mn7lR49xfO0KaT9RFQWlTtnk1b3/
	/HswgYjb3V7ZsXsRZ5sG/2r7YmKs3NSmlwg8Imh4QSnD5lZ0DLZh5H3pCqfM3qvFpOzPepMJP1UfY
	8LWZPMTxihml7Q5EoxRy979Lv49kouvh3ZSbYLhQq3HhRCBIqHMrNe74HrA5mSA+A3//5DUR0jms+
	BheXvHnDpmVzkfZAUfKE2RCNfDLj6M1umd4LfihZtTLpUqCjoi5VfHGM1rv8RMrPvomViHXsohTff
	fOgluwvA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQt-00000000HWd-0XHF
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 09:48:41 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uofQq-0000DY-KD; Wed, 20 Aug 2025 11:48:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 20 Aug 2025 11:48:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-v2024-05-0-topic-fit-overlay-v6-9-9d1b3bab2ee2@pengutronix.de>
References: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
In-Reply-To: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_104839_421852_EC840F46 
X-CRM114-Status: UNSURE (   8.52  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v6 09/12] of: overlay: add more debugging prints to
 of_overlay_matches_filter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add debug output to spot early returns easily.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/overlay.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 6b19c7c88ea5e99040bddca172c47251e8ddda84..d2cf2fa3f371c5f96027c92c30a0316e0caa860a 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -288,16 +288,22 @@ static bool of_overlay_matches_filter(const char *pattern, struct device_node *o
 	free(path);
 
 	/* No filter found at all, no match */
-	if (!have_pattern_filter && !have_content_filter)
+	if (!have_pattern_filter && !have_content_filter) {
+		pr_debug("No match, because no filter was found\n");
 		return false;
+	}
 
 	/* Want to match pattern, but we do not have a filename_filter */
-	if (pattern && !have_pattern_filter)
+	if (pattern && !have_pattern_filter) {
+		pr_debug("Pattern match requested, but no pattern filter found\n");
 		return true;
+	}
 
 	/* Want to match content, but we do not have a content_filter */
-	if (ovl && !have_content_filter)
+	if (ovl && !have_content_filter) {
+		pr_debug("Content match requested, but no content filter found\n");
 		return true;
+	}
 
 	if (apply)
 		pr_debug("pattern %s, overlay %p: match against filter %s\n",

-- 
2.39.5



