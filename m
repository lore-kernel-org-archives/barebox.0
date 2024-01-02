Delivery-date: Tue, 02 Jan 2024 18:02:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKi9i-000qKc-0T
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 18:02:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKi9g-00074I-WA
	for lore@pengutronix.de; Tue, 02 Jan 2024 18:02:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LaXhM1l6/ZG5iw/PjHXPS7z27ZW0QqsSE5Q2OFflGvg=; b=Oy/oP5GywCOV/kPmS8ySrIHXji
	0FYffi/VdOg8YmS7JTRPdNOAnmIQordy974U8BFds41kVAeYkYbGTAh8G/pZDNczElYXDB0wvTlfZ
	cBp7z1hHlG0saj1ERU426Q+0lLfeOKrRj8c8uKNT0sp59mZT3RlqOp3tzvp+2vxDvw/sleITW/Geh
	8Kf9HptEfV/UFOmQmXhscxw8frlAeB1ZOtl4ERpo6ogvZX1vO9WSUG9xXVg7rhx9iOeN+j8nrgH8e
	24SLzrsFMqhEUSDRI8ApKZjZMmVebngpAbpoxKvGV2MmsnWWO/Aj01/0WAeIOEj9LS0YZI1Xy4IEv
	4bZfQcbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKi8e-008XvI-1W;
	Tue, 02 Jan 2024 17:01:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKi8W-008XrF-0e
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 17:01:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8V-0006H8-2e; Tue, 02 Jan 2024 18:01:03 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8T-003DrX-I8; Tue, 02 Jan 2024 18:01:02 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8U-006ocT-1i;
	Tue, 02 Jan 2024 18:01:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jan 2024 18:01:00 +0100
Message-Id: <20240102170100.1596372-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
References: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_090104_369862_BC070EE0 
X-CRM114-Status: GOOD (  13.33  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 7/7] nvmem: regmap: Fix nvmem size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Robin van der Gracht <robin@protonic.nl>

We should add 1 to the max_register index since counting is zero based.

i.e. the stm32mp151 bsec has registers 0 - 95 with reg_stride 4.
Size should be (95 + 1) * 4 = 384 bytes otherwise we can't access bsec
register 95 (last one).

regmap_size_bytes() does take the +1 into account so we can use that.

Fixes: b4abbd8a6cbb ("nvmem: add nvmem_regmap_register helper")
Signed-off-by: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 was here: https://lore.barebox.org/barebox/20240102105330.GA1318922@pengutronix.de/T/#t

v2 -> v3:
  - use regmap_size_bytes() without multiplication with stride after
    fixing its implementation.
---
 drivers/nvmem/regmap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
index fa5405d7a86a..24712fbb0f33 100644
--- a/drivers/nvmem/regmap.c
+++ b/drivers/nvmem/regmap.c
@@ -38,7 +38,7 @@ static int nvmem_regmap_read(void *ctx, unsigned offset, void *buf, size_t bytes
 	skip_bytes = offset & (stride - 1);
 	rbytes = roundup(bytes + skip_bytes, stride);
 
-	if (roffset + rbytes > stride * regmap_get_max_register(map))
+	if (roffset + rbytes > regmap_size_bytes(map))
 		return -EINVAL;
 
 	for (i = roffset; i < roffset + rbytes; i += stride) {
@@ -78,7 +78,7 @@ nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
 	config.priv = map;
 	config.stride = 1;
 	config.word_size = 1;
-	config.size = regmap_get_max_register(map) * regmap_get_reg_stride(map);
+	config.size = regmap_size_bytes(map);
 	config.cell_post_process = cell_post_process;
 	config.reg_write = nvmem_regmap_write;
 	config.reg_read = nvmem_regmap_read;
-- 
2.39.2



