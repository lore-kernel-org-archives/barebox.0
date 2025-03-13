Delivery-date: Thu, 13 Mar 2025 08:45:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdGK-00DTVr-2b
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 08:45:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdGI-0007Wk-Hv
	for lore@pengutronix.de; Thu, 13 Mar 2025 08:45:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KvUpwJ1zQp3mQ4sXNN2UKeX7PwgRqO4sMOJGgcOcsto=; b=2+xPQaVe47qYVUX+UTiLjRotYo
	o8VfUw9+K7CTATX7ScjbHMF/nUtdvZBIWeFapm3qnVR5SCbO9KqDw+0gUqt8yPwXB1cRXDZ8zMJJo
	Op5K2PfqTQW3x9CgOiPj3lEpUkHaUafGa3Iggr4IznhEdr19fZwF5Ysnjd4QuB9Vh0C3NT4n4Pxpj
	2Sy4/majuBk26yOBp0sGBsmnRr0UzMLIR7P6OY+yMxhHfgHYb5GP16XzN7V0RU153zqzQ1kNJWgpk
	qGxPeXuZYJJ40s/drz56T869JFJtELNuLatYF0DG2YGM6naa42FNd02dURVc3P6E7jAMx/RS6cgtC
	xcG8ZS4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdFg-0000000APqP-1qxc;
	Thu, 13 Mar 2025 07:45:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tscuN-0000000AMBM-2g7d
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 07:23:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscuM-0004HG-5w; Thu, 13 Mar 2025 08:23:10 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscuL-005Upx-3A;
	Thu, 13 Mar 2025 08:23:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscuL-000anm-2p;
	Thu, 13 Mar 2025 08:23:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 08:23:09 +0100
Message-Id: <20250313072309.141338-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_002311_716522_4A10EAE8 
X-CRM114-Status: UNSURE (   9.49  )
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
Subject: [PATCH master] FIT: early exit if digest fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fit_digest will hash the list of images in the configuration, so
fit_check_signature() can compare it against the signed hash.

So far, parse errors while computing the hash were ignored. This is not
directly exploitable as the hash would be incomplete and fail the
signature verification, but it makes the code more difficult to reason
about.

This unused assignment to ret was detected by clang-analyzer-19.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/image-fit.c b/common/image-fit.c
index 959384abd275..6eda041935be 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -338,6 +338,9 @@ static int fit_verify_signature(struct device_node *sig_node, const void *fit)
 
 	ret = fit_digest(fit, digest, &inc_nodes, &exc_props, hashed_strings_start,
 			 hashed_strings_size);
+	if (ret)
+		goto out_sl;
+
 	hash = xzalloc(digest_length(digest));
 	digest_final(digest, hash);
 
-- 
2.39.5



