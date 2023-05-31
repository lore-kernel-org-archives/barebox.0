Delivery-date: Wed, 31 May 2023 08:30:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4FLj-003sDx-Ot
	for lore@lore.pengutronix.de; Wed, 31 May 2023 08:30:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4FLh-0007IK-DR
	for lore@pengutronix.de; Wed, 31 May 2023 08:30:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZdpSdTjUgydsevi7M/6DCL8aZbmMyFotTL2tdFhGxK4=; b=OrQlT3eCSYLVoz6mmO7yENfFt9
	EcdaaH31aWM3tsWeiyBHoBsQPiRYp1hzr63sH5GZj3dSgCE0PRRFrCq11/8A6tSI5kmYxVmB8weSC
	np1mbzc4i5p8dIjE7FcbAWDfvXBsJZRWtuByem7hhD5JUtB2ejdbYCcuxRA9u7816f6w4pwesL28u
	6iCFEGDajreIM3EMa0D08XncyoWt0+7sYya0zYWMmd31yR4AnmJaAlvlC1tXkS6tZvUuCs5Kdqz1O
	sDKUhA8nnB7COkuOhq2FV0cUQB4awh+BxLdxfeESwXmOBtyrO2e8NfOUUiTA0JyD3poYV4gaZ/YQ7
	C2FEdJwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4FKZ-00GI3d-1X;
	Wed, 31 May 2023 06:29:11 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4FKW-00GI1q-1E
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 06:29:09 +0000
X-GND-Sasl: ahmad@a3f.at
X-GND-Sasl: ahmad@a3f.at
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9427060005;
	Wed, 31 May 2023 06:29:04 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 31 May 2023 08:28:52 +0200
Message-Id: <20230531062853.670751-3-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.5
In-Reply-To: <20230531062853.670751-1-ahmad@a3f.at>
References: <20230531062853.670751-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_232908_567356_FC6437C1 
X-CRM114-Status: UNSURE (   7.89  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] include: minmax.h: implement compare3 helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Define the macro for use in comparison functions. The macro has the same
semantics as systemd's CMP() macro with the difference that it returns
constant expressions if possible.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/linux/minmax.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/include/linux/minmax.h b/include/linux/minmax.h
index 396df1121bff..9b6ddad7b3f6 100644
--- a/include/linux/minmax.h
+++ b/include/linux/minmax.h
@@ -166,4 +166,24 @@
 #define swap(a, b) \
 	do { typeof(a) __tmp = (a); (a) = (b); (b) = __tmp; } while (0)
 
+
+#define __compare3(x, y)	((x) < (y) ? -1 : (x) > (y) ? 1 : 0)
+
+#define __compare3_once(x, y, unique_x, unique_y) ({	\
+		typeof(x) unique_x = (x);		\
+		typeof(y) unique_y = (y);		\
+		__compare3(unique_x, unique_y); })
+
+/**
+ * compare3 - 3-way comparison of @x and @y
+ * @x: first value
+ * @y: second value
+ *
+ * returns -1 if x < y, 0 if x == y and 1 if x > y
+ */
+#define compare3(x, y) \
+	__builtin_choose_expr(__safe_cmp(x, y), \
+		__compare3(x, y), \
+		__compare3_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y)))
+
 #endif	/* _LINUX_MINMAX_H */
-- 
2.38.5



