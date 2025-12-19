Delivery-date: Fri, 19 Dec 2025 11:38:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsD-00DAcD-1K
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXs1-00061c-I9
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eg3SR3Gzpzc6gYNWpeDQu9dFoE+NsjrndZ68eakQDXo=; b=XRZv6STglMG6vy+EqNhu3G9Nfi
	FxFUhpRLUjFQBE/Nz9qXXOE4bJ1geZ+r+Lg0KAtZ0z7WaZLb85YYqB7RXM+XDRazGqK7ZkEZKNYBK
	t+ysI7mBwAgYJzgqQNc8aQ6yjnALyF15IF5bsObrj1fvChmahnvCttWta5ZjI9s8cGN1Q94FZdHM8
	cCI7FSKysYJXoNc0xuB1JhmLpbMTVVReAO1NqHXTOoQK/8dUJidr5HF13/NOzGLVt702YemFXHypg
	LcQI4jPhZn8Uu6gnUk7TAaKg09QWlO4wsCIM25/HYQ57or1yP12dcXjMH/O24/zvqPzHpjZ3EHMdm
	8x3j7idQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr5-0000000A6EQ-1gA6;
	Fri, 19 Dec 2025 10:37:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqw-0000000A61T-2qfR
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=eg3SR3Gzpzc6gYNWpeDQu9dFoE+NsjrndZ68eakQDXo=; b=lV106li+qJlKaDkBU5phpEQlzl
	8BjIA+zIHJ+kAFsCilnEynjJKbP2LHwULRBqyXVvc+etpHuW1Z5fit6XyoGd3N+EY/+lrnOag+Gmx
	VEL3Dnukz/A/G2ibKJSP7zUeQfbN126CdqN6urLD710o8y7QjcjjNvMFajmoCUoAMKcCSYZ7QEsSZ
	ZD5VVfrzFR+Qb+CKbMiriJCPGDsWb5mvagowXEqrXgj5YI1US6GtlZhaGLxMPV85mosaOzYegJYaK
	v7DdxAmtCEov0koF1PhfVWVxQWgbDPb8OKf2DnHHWHmTG2B5o+W9bnC+uesc8+LsO8nBMxr8gO8T4
	YuDjzdNQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWzP-0000000AbBf-3cX6
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:41:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-0004ct-8Y; Fri, 19 Dec 2025 11:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-006RV3-0D;
	Fri, 19 Dec 2025 11:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVi-0000000320L-0Rxk;
	Fri, 19 Dec 2025 11:14:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Maud Spierings <maudspierings@gocontroll.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:21:11 +0100
Message-ID: <20251219101453.2806980-36-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_094136_089629_825237CD 
X-CRM114-Status: GOOD (  12.79  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 35/49] ARM: i.MX8M: Fix the RAM size calculation for DDR3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maudspierings@gocontroll.com>

The default value in the MSTR register for DDRC_MSTR_DEVICE_CONFIG is
16bit which causes the calculation to be half of the actual RAM. Add the
BIT() define for DDR3 and add it to the workaround for calculating the
correct amount of RAM like LPDDR4.

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
Link: https://lore.barebox.org/20251127-ddr3_size-v1-1-cb26cadcb348@gocontroll.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 44fc50076c854f2a05cbc9801bcc1108bc26b1b7)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 4c4c3528e1a6..935c3d32571d 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -325,6 +325,7 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, const struct imx_esdctl_data *dat
 #define DDRC_ADDRMAP0_CS_BIT0			GENMASK(4, 0)
 
 #define DDRC_MSTR				0x0000
+#define DDRC_MSTR_DDR3				BIT(0)
 #define DDRC_MSTR_DDR4				BIT(4)
 #define DDRC_MSTR_LPDDR4			BIT(5)
 #define DDRC_MSTR_DATA_BUS_WIDTH		GENMASK(13, 12)
@@ -508,8 +509,8 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswid
 		FIELD_GET(DDRC_ADDRMAP6_LPDDR4_6GB_12GB_24GB, addrmap[6]);
 	u32 mstr = readl(ddrc + DDRC_MSTR);
 
-	/* Device config is ignored and taken as 32-bit for LPDDR4 */
-	if (mstr & DDRC_MSTR_LPDDR4)
+	/* Device config is ignored and taken as 32-bit for LPDDR4 and DDR3 */
+	if (mstr & DDRC_MSTR_LPDDR4 || mstr & DDRC_MSTR_DDR3)
 		imx_ddrc_set_mstr_device_config(&mstr, buswidth);
 
 	return imx_ddrc_sdram_size(ddrc, addrmap,
-- 
2.47.3



