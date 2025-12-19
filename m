Delivery-date: Fri, 19 Dec 2025 10:07:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWWSq-00D99l-1a
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 10:07:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWWSp-00030B-TX
	for lore@pengutronix.de; Fri, 19 Dec 2025 10:07:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MOK0j+9PgC8aNKnjhEbfB/HDPAlMNjpfmDDpwxaHa8w=; b=hrRBUWmyw+l+qp9RAS/T9XQiYf
	qwQje1nJEsHriDvV0eFRS2w21LRJWZFGohWebz7b8FP7wkJaMsFXbrwa+PkXv9Ni5K+V/toR6+gXG
	24pv04kJ241nxYeMH5tpwlSlWMFMxJJkzuNM+W7nGpavy0nzP+DYnqGviRoopvcpziNk7pT4acpMP
	9UcCCsE5X+EdTo86zEogf1MdLfDgmJT0DSGQuc6ZXxkj6hg+ZXL1ahLui3KxyeDrciPZW2znNiZWp
	j5Kbtt/agAldyw5WNyntwAtCyw6MQpmuCmeR03N/X9WzUhG+unu+zPR3z8l8rPkeYacUqGjDHHy7N
	U49/EvyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWS9-00000009uJS-2Mje;
	Fri, 19 Dec 2025 09:07:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWS6-00000009uIY-1qXr
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 09:07:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=MOK0j+9PgC8aNKnjhEbfB/HDPAlMNjpfmDDpwxaHa8w=; b=c9y00orRePv+ZvmEC/wxdTDhXF
	scofyp7hZpdIIqjVQXLrH19QPaL9Q9aNNkOjvJX3f+SciuZUhenhDqtgpwQgufgGCi947JW5JjoFf
	KGEH2Ou7az2YQz5y8gcdXAvuCvAJ5xdPem2rLje9tYCVeigS2yHGSq7V73ff+9TWhz06Bj3XpJyX2
	92aj8VZBwYYIToNlR5MzE58gTvv5iEFF2K/PcZPTsD18ElkiOGYIljCj8FrnR3L9yL4043D8IqeYD
	YpwxqHKANAP9nc4NCLxKV6mWdpA/vUTFoZJ+PTqnuJZEM2SDX2/ORQ8yuUJ8qQUAE/7LrK0CN2MO3
	+Wr6eOhQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWVaa-0000000AS4j-2wcd
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 08:11:54 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vWWS1-0002hO-CY; Fri, 19 Dec 2025 10:07:05 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 19 Dec 2025 10:06:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-v2025-11-0-topic-imx6-field-return-v2-3-2696ac61ae2d@pengutronix.de>
References: <20251219-v2025-11-0-topic-imx6-field-return-v2-0-2696ac61ae2d@pengutronix.de>
In-Reply-To: <20251219-v2025-11-0-topic-imx6-field-return-v2-0-2696ac61ae2d@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_081153_248147_E4AD0BEA 
X-CRM114-Status: GOOD (  11.23  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] i.MX: HAB: extend field_return support to imx6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extend the helper for imx_fuse_burn with support for i.MX6 devices.
Create a helper function for i.MX8 and i.MX6 rom the old i.MX8M
function, as they all share the same pattern.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 drivers/hab/hab.c                | 22 +++++++++++++++-------
 include/mach/imx/ocotp-fusemap.h |  1 +
 2 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 1c747e8a3e..3c9739871b 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -262,7 +262,7 @@ static int imx8m_hab_revoke_key_ocotp(unsigned key_idx)
  */
 #define MX8MP_FIELD_RETURN_PATTERN	0x28001401
 
-static int imx8m_hab_field_return_ocotp(void)
+static int imx_hab_field_return_ocotp(unint32_t field, unsigned int value)
 {
 	int ret;
 
@@ -274,13 +274,20 @@ static int imx8m_hab_field_return_ocotp(void)
 	if (ret == 1)
 		return -EINVAL;
 
-	if (cpu_is_mx8mp())
-		ret = imx_ocotp_write_field(MX8MP_OCOTP_FIELD_RETURN,
-					    MX8MP_FIELD_RETURN_PATTERN);
-	else
-		ret = imx_ocotp_write_field(MX8M_OCOTP_FIELD_RETURN, 1);
+	return imx_ocotp_write_field(field, value);
+}
 
-	return ret;
+static int imx6_hab_field_return_ocotp(void)
+{
+	return imx_hab_field_return_ocotp(MX6_OCOTP_FIELD_RETURN, 1);
+}
+
+static int imx8m_hab_field_return_ocotp(void)
+{
+	if (cpu_is_mx8mp())
+		return imx_hab_field_return_ocotp(MX8MP_OCOTP_FIELD_RETURN,
+						  MX8MP_FIELD_RETURN_PATTERN);
+	return imx_hab_field_return_ocotp(MX8M_OCOTP_FIELD_RETURN, 1);
 }
 
 struct imx_hab_ops {
@@ -310,6 +317,7 @@ static struct imx_hab_ops imx6_hab_ops_ocotp = {
 	.device_locked_down = imx6_hab_device_locked_down_ocotp,
 	.permanent_write_enable = imx_hab_permanent_write_enable_ocotp,
 	.print_status = imx6_hab_print_status,
+	.field_return = imx6_hab_field_return_ocotp,
 };
 
 static struct imx_hab_ops imx8m_hab_ops_ocotp = {
diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
index ae10dcef2a..3fd9d6df24 100644
--- a/include/mach/imx/ocotp-fusemap.h
+++ b/include/mach/imx/ocotp-fusemap.h
@@ -103,6 +103,7 @@
 #define MX8M_OCOTP_TZASC_EN		(OCOTP_WORD(0x480) | OCOTP_BIT(11) | OCOTP_WIDTH(1))
 #define MX8MP_OCOTP_ROM_NO_LOG		(OCOTP_WORD(0x480) | OCOTP_BIT(22) | OCOTP_WIDTH(1))
 #define MX8M_OCOTP_RECOVERY_SDMMC_BOOT_DIS	(OCOTP_WORD(0x490) | OCOTP_BIT(23) | OCOTP_WIDTH(1))
+#define MX6_OCOTP_FIELD_RETURN		(OCOTP_WORD(0x6E0) | OCOTP_BIT(0) | OCOTP_WIDTH(1))
 #define MX8M_OCOTP_FIELD_RETURN		(OCOTP_WORD(0x630) | OCOTP_BIT(0) | OCOTP_WIDTH(1))
 #define MX8MP_OCOTP_FIELD_RETURN	(OCOTP_WORD(0x630) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
 #define MX8M_OCOTP_SRK_REVOKE		(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(4))

-- 
2.47.3



