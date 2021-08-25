Delivery-date: Wed, 25 Aug 2021 16:58:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIuLy-0004z7-8N
	for lore@lore.pengutronix.de; Wed, 25 Aug 2021 16:58:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIuLu-0003cF-0i
	for lore@pengutronix.de; Wed, 25 Aug 2021 16:58:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=60Yj9Qvvk3T7tl/pkg8PDh0RFTNsYNii/GBYOau4rd0=; b=0OdMt69yknZ9OY
	cab9DSqvZHnRJJHnYad5S1eFHAY16wvSHBTrGoT+mDn2NhCFWzBc/oMEHS2XjHUV2yV3huKEFMT4R
	rDlWOo00JsbjheRb9WomxFB8+6Ex6p3dsJcadXYNm142O4uCE436XQWUni3UNh0IJxKouDhYhelcI
	dxD55K6KTG6e79gOIgCfr0bvuuS/6dbY8xCfOEPo3ullPD8B2f9Wpr0J49iXcH0g1MKMVVKO/twgw
	s207xitnVnN47i2ze2ZZwl+bS5fHXZcua1zBH8Nn0Xbyy56+FLqCkRi7VKUfdbDvQdw8wvGtFY9fH
	ihFzGIvOkJHwmEpGq9hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIuJn-007MWT-Nh; Wed, 25 Aug 2021 14:55:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIuDE-007JMd-B8
 for barebox@lists.infradead.org; Wed, 25 Aug 2021 14:49:10 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mIuDC-0001zj-FT
 for barebox@lists.infradead.org; Wed, 25 Aug 2021 16:49:06 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1mIuDC-0001If-6u
 for barebox@lists.infradead.org; Wed, 25 Aug 2021 16:49:06 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 25 Aug 2021 16:49:04 +0200
Message-Id: <20210825144904.4929-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_074908_461540_E0C8D22E 
X-CRM114-Status: GOOD (  11.72  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] state: backend_raw: fix ignoring unpack failures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is required to inform the state framework that the state variable
set have changed and we need to write the new variable set. Without this
fix the new variable set is never written since the state never sets
dirty=1 and so state_save() will return early without saving the new
variable set.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
I keeped the continue instead of break out early so the user gets
informed which variables do not fit.

Regards,
  Marco

 common/state/backend_format_raw.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/state/backend_format_raw.c b/common/state/backend_format_raw.c
index 5a71149d34..ea962606cc 100644
--- a/common/state/backend_format_raw.c
+++ b/common/state/backend_format_raw.c
@@ -183,6 +183,7 @@ static int backend_format_raw_unpack(struct state_backend_format *format,
 	const struct backend_raw_header *header;
 	const void *data;
 	struct state_backend_format_raw *backend_raw = get_format_raw(format);
+	int ret = 0;
 
 	header = (const struct backend_raw_header *)buf;
 	data = buf + sizeof(*header);
@@ -191,12 +192,13 @@ static int backend_format_raw_unpack(struct state_backend_format *format,
 		if (sv->start + sv->size > header->data_len) {
 			dev_err(backend_raw->dev, "State variable ends behind valid data, %s\n",
 				sv->name);
+			ret = -ENOSPC;
 			continue;
 		}
 		memcpy(sv->raw, data + sv->start, sv->size);
 	}
 
-	return 0;
+	return ret;
 }
 
 static int backend_format_raw_pack(struct state_backend_format *format,
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

