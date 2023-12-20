Delivery-date: Wed, 20 Dec 2023 09:30:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFryb-005rKi-35
	for lore@lore.pengutronix.de;
	Wed, 20 Dec 2023 09:30:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFryb-0000fo-Cs
	for lore@pengutronix.de; Wed, 20 Dec 2023 09:30:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GP3bzHH4joKW537Hw5mVqAfbtBLVPJzM3s0EoER+pgc=; b=CDQW5OgkHAY2fVKKertskb1M0d
	AkLvTfR5B0RqYvEwKv8MazUfEKzbugyBXZoUv8oDWjBu8D4VyaDafR1DYS+NIBclpXoh6k/r8Trb6
	ZEwYkjagcleOS2BiiFRGm/+y+IqRXLxrDZm5GDVv2yD/5Gwlz6WXr6Wh9O8YMLk1nfW/usfrsiAQ+
	O9DaE6kD5+Z1ixKo4TjtUgfqToSxPeSlQdhEtJ6sEMPXDFw8ktN0AQRIz+w3FkWZJTQgJdZTn1Erp
	V4wn06MT/R+J5wmuHngnLYlINm0WUCQaPpdDRd5CgGWx2QcKTCZwFv4itn7ulLbWoPY/0qd+g5Qpv
	qWR99dNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFrxU-00Ga2h-2v;
	Wed, 20 Dec 2023 08:29:40 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFrxR-00Ga2J-2S
	for barebox@lists.infradead.org;
	Wed, 20 Dec 2023 08:29:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=GP3bzHH4joKW537Hw5mVqAfbtBLVPJzM3s0EoER+pgc=;
	b=KxxiH7YReJ5Kq7k9E4UCIjn+CjkIOcggJksfSn6qa+u4R3fuSjJmYXnwK2xXwCbFJBPKppnPHF/Uo
	 Dav7gCMJ7LegK/flhjg/zcRYwbF/qpTQT38hfc3uLoMSAe0xECHuWLkjsYTTHJ0+IuC/AkB8OWfAYY
	 AwUirG0YmF4OUiyDVIOFPWmWhGH39L+34AGbWveKrGLqwc46gpn7lYDpSL2rPZNZLyRsaTB7be886f
	 VsStOqoowZV0OfeyNF9oRrabn8F/KaszklZawnnxWIxU9IXHvwOSa6En+aW49/ZFggMXm8tl5QRHRA
	 G5FznMa7WGzWtwCa3hDVgvBk6zfp0sw==
X-MSG-ID: e7796406-9f11-11ee-a358-005056817704
From: Robin van der Gracht <robin@protonic.nl>
To: barebox@lists.infradead.org
Cc: michiel.schelfhout@protonic.nl,
	Robin van der Gracht <robin@protonic.nl>
Date: Wed, 20 Dec 2023 09:29:08 +0100
Message-Id: <20231220082908.360302-1-robin@protonic.nl>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_002937_943970_7A8D1584 
X-CRM114-Status: UNSURE (   9.96  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] nvmem: regmap: Fix nvmem size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We should add 1 to the max_register index since counting is zero based.

i.e. the stm32mp151 bsec has registers 0 - 95 with reg_stride 4.
Size should be (95 + 1) * 4 = 384 bytes otherwise we can't access bsec
register 95 (last one).

regmap_size_bytes() does take the +1 into account so we can use that.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---

v2: Fix the size calculation in nvmem_regmap_read() as well.

 drivers/nvmem/regmap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
index fa5405d7a8..b923c5787d 100644
--- a/drivers/nvmem/regmap.c
+++ b/drivers/nvmem/regmap.c
@@ -38,7 +38,7 @@ static int nvmem_regmap_read(void *ctx, unsigned offset, void *buf, size_t bytes
 	skip_bytes = offset & (stride - 1);
 	rbytes = roundup(bytes + skip_bytes, stride);
 
-	if (roffset + rbytes > stride * regmap_get_max_register(map))
+	if (roffset + rbytes > regmap_size_bytes(map) * stride)
 		return -EINVAL;
 
 	for (i = roffset; i < roffset + rbytes; i += stride) {
@@ -78,7 +78,7 @@ nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
 	config.priv = map;
 	config.stride = 1;
 	config.word_size = 1;
-	config.size = regmap_get_max_register(map) * regmap_get_reg_stride(map);
+	config.size = regmap_size_bytes(map) * regmap_get_reg_stride(map);
 	config.cell_post_process = cell_post_process;
 	config.reg_write = nvmem_regmap_write;
 	config.reg_read = nvmem_regmap_read;
-- 
2.40.1



