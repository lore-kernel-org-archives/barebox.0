Delivery-date: Thu, 20 Mar 2025 06:21:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Le-001l8w-2V
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:21:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Ld-0004HX-L7
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:21:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LVY2mBXeL9TSLhWyfridKfTp5TuaqTT3dpuKOCar5ek=; b=SSUI+uvk/Vmsw8cNF7vMiuNdxm
	X75iEeCj89LCJg9a+fKMVobDu/g7M/BTRIVDgcCWQVgQR3/1Sy/8C+IYUHb0Bq2pz+On4dcgcFgGP
	VBkwUfq1EyDXPgw4u474ICJpA4cUDA82AtUf7W17Tke20t9759jU5gut13IZFT6GJ0IDsxu/Xgml8
	CjKTCxCbvJQIj0mWRiitxNKxMKeIzpDApTKz0u2shzfigDe53zVfcOGbf0uFvckjogTrZ7uYllXtb
	IdPSHnIx6vU/R9XpwOmq1kGP3ikfSmvbFjZsJ/Dr3CvJjsat/1KLuVLmgXvh53qb4C3NZJ03JhuSo
	hqAEXyiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8LG-0000000BD2A-2Kk3;
	Thu, 20 Mar 2025 05:21:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8LE-0000000BD0z-2W8Q
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:21:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8LD-0003zL-CJ; Thu, 20 Mar 2025 06:21:15 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8LC-000hvz-2U;
	Thu, 20 Mar 2025 06:21:15 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8LD-007Gmv-0L;
	Thu, 20 Mar 2025 06:21:15 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:21:13 +0100
Message-Id: <20250320052114.1732651-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_222116_637633_F43D11D7 
X-CRM114-Status: UNSURE (   8.80  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] scripts: define le32_to_cpup and friends for host/target tools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already define le32_to_cpu and friends, but were missing so far the
p-suffixed variant, which accepts a pointer.

This is easily implemented with a bit of macro boilerplate, so let's do
that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 scripts/compiler.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/scripts/compiler.h b/scripts/compiler.h
index d8d0e1b906df..d6807b027e03 100644
--- a/scripts/compiler.h
+++ b/scripts/compiler.h
@@ -160,6 +160,27 @@ typedef uint32_t __u32;
 # define be64_to_cpu(x)		(x)
 #endif
 
+#define DEFINE_CONV_P(endian, bits) \
+	static inline __##endian##bits endian##bits##_to_cpup(const u##bits *p) \
+	{ \
+		u##bits val; \
+		memmove(&val, p, sizeof(val)); \
+		return endian##bits##_to_cpu(val); \
+	} \
+	static inline u##bits cpu_to_##endian##bits##p(const __##endian##bits *p) \
+	{ \
+		__##endian##bits val; \
+		memmove(&val, p, sizeof(val)); \
+		return cpu_to_##endian##bits(val); \
+	}
+
+DEFINE_CONV_P(le, 16)
+DEFINE_CONV_P(le, 32)
+DEFINE_CONV_P(le, 64)
+DEFINE_CONV_P(be, 16)
+DEFINE_CONV_P(be, 32)
+DEFINE_CONV_P(be, 64)
+
 #ifndef min
 #define min(x, y) ({                            \
 	typeof(x) _min1 = (x);                  \
-- 
2.39.5



