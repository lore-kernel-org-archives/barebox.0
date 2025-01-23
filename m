Delivery-date: Thu, 23 Jan 2025 16:01:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tayiO-003UUx-14
	for lore@lore.pengutronix.de;
	Thu, 23 Jan 2025 16:01:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tayiJ-00033W-G8
	for lore@pengutronix.de; Thu, 23 Jan 2025 16:01:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2gz9tmwAsAH7byDJekpXRHUFzYPgDdltvDFfqHQ1ZRo=; b=mZTSUcBDS3g82NTA4mn0yW1sXg
	SNIXKWN5tizyFkrPfOZZl+Z0eHMBJGgjmEvgv0dpHOJg1eCLZVlZz+X3+2HkgTaQQdW2ECpv4psxo
	KH7aE9nakkEyV5NgPy8cNHJBSzB187I253Zgi/QT0vSGScX6YKyIuS90QM63Hc5hnqhIGUFctp3ak
	jzBCe8V7hutAtqS6umkMXPID5GCWG98hzTAksN7rGArjin+Enm4oe348imdIw+8lcWxJLCq1uhyPt
	CtRZQDXMGQYgxNaWn/IeAlxWLjh2SeQHlTcNpxvs9kXjfhrXJtJ44KS03ocvFnL+1VYqlKVJ2YwiB
	r0FIsLgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tayhm-0000000CegZ-3r61;
	Thu, 23 Jan 2025 15:01:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tayhi-0000000CecP-0EGD
	for barebox@lists.infradead.org;
	Thu, 23 Jan 2025 15:01:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-0002Hz-Kl; Thu, 23 Jan 2025 16:01:00 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-001Tho-0U;
	Thu, 23 Jan 2025 16:01:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-006Chv-03;
	Thu, 23 Jan 2025 16:01:00 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 23 Jan 2025 15:56:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250123-v2024-05-0-topic-hab-v3-4-e90d0e43c2de@pengutronix.de>
References: <20250123-v2024-05-0-topic-hab-v3-0-e90d0e43c2de@pengutronix.de>
In-Reply-To: <20250123-v2024-05-0-topic-hab-v3-0-e90d0e43c2de@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_070110_108548_4737E58D 
X-CRM114-Status: GOOD (  15.60  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 04/10] i.MX: HAB: add imx_hab_revoke_key support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

Add an helper to revoke an i.MX SRK key. At the moment the helper
supprts i.MX8M devices only, but adding support for other SoCs can be
done easily by providing the .revoke_key() hook.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/hab/hab.c                | 45 ++++++++++++++++++++++++++++++++++++++++
 include/hab.h                    |  1 +
 include/mach/imx/ocotp-fusemap.h |  1 +
 3 files changed, 47 insertions(+)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index f684e9f1cc20ae09c39d52331c6529375e315137..b966410eacfea4763ac9959c17a552cb7580a6f4 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -231,6 +231,27 @@ static int imx8m_hab_device_locked_down_ocotp(void)
 	return v;
 }
 
+static int imx8m_hab_revoke_key_ocotp(unsigned key_idx)
+{
+	int ret;
+
+	/* Prohibit revocation of last possible key */
+	if (key_idx >= 4)
+		return -EINVAL;
+
+	ret = imx_ocotp_srk_revoke_locked();
+	if (ret < 0)
+		return ret;
+
+	/* Return -EINVAL in case the SRK_REVOKE write is locked */
+	if (ret == 1)
+		return -EINVAL;
+
+	ret = imx_ocotp_write_field(MX8M_OCOTP_SRK_REVOKE, BIT(key_idx));
+
+	return ret;
+}
+
 struct imx_hab_ops {
 	int (*write_srk_hash)(const u8 *srk, unsigned flags);
 	int (*read_srk_hash)(u8 *srk);
@@ -238,6 +259,7 @@ struct imx_hab_ops {
 	int (*lockdown_device)(unsigned flags);
 	int (*device_locked_down)(void);
 	int (*print_status)(void);
+	int (*revoke_key)(unsigned key_idx);
 };
 
 static struct imx_hab_ops imx_hab_ops_iim = {
@@ -265,6 +287,7 @@ static struct imx_hab_ops imx8m_hab_ops_ocotp = {
 	.device_locked_down = imx8m_hab_device_locked_down_ocotp,
 	.permanent_write_enable = imx_hab_permanent_write_enable_ocotp,
 	.print_status = imx8m_hab_print_status,
+	.revoke_key = imx8m_hab_revoke_key_ocotp,
 };
 
 static int imx_ahab_write_srk_hash(const u8 *__newsrk, unsigned flags)
@@ -538,3 +561,25 @@ static int init_imx_hab_print_status(void)
 	return 0;
 }
 postmmu_initcall(init_imx_hab_print_status);
+
+int imx_hab_revoke_key(unsigned key_idx, bool permanent)
+{
+	struct imx_hab_ops *ops = imx_get_hab_ops();
+	int ret;
+
+	if (!ops || !ops->revoke_key)
+		return -ENOSYS;
+
+	if (permanent) {
+		ret = ops->permanent_write_enable(1);
+		if (ret)
+			return ret;
+	}
+
+	ret = ops->revoke_key(key_idx);
+
+	if (permanent)
+		ops->permanent_write_enable(0);
+
+	return ret;
+}
diff --git a/include/hab.h b/include/hab.h
index 2cef3841d149972faebcc51bd5c43fab03d1c6fa..7a70c67f048819dec0581f7e7e130fe8477b6fc4 100644
--- a/include/hab.h
+++ b/include/hab.h
@@ -51,5 +51,6 @@ int imx_hab_read_srk_hash(void *buf);
 int imx_hab_lockdown_device(unsigned flags);
 int imx_hab_device_locked_down(void);
 int imx_hab_print_status(void);
+int imx_hab_revoke_key(unsigned key_idx, bool permanent);
 
 #endif /* __HABV4_H */
diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
index c4f94e61e8f8cc3ce2eb702e22ebe7d674c887fd..e6fa96b40ba915594eff1fad2e10b6653c74301b 100644
--- a/include/mach/imx/ocotp-fusemap.h
+++ b/include/mach/imx/ocotp-fusemap.h
@@ -57,5 +57,6 @@
 #define MX8M_OCOTP_SRK_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(9) | OCOTP_WIDTH(1))
 #define MX8M_OCOTP_SEC_CONFIG_1		(OCOTP_WORD(0x470) | OCOTP_BIT(25) | OCOTP_WIDTH(1))
 #define MX8MQ_OCOTP_DIR_BT_DIS		(OCOTP_WORD(0x470) | OCOTP_BIT(27) | OCOTP_WIDTH(1))
+#define MX8M_OCOTP_SRK_REVOKE		(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(4))
 
 #endif /* __MACH_IMX_OCOTP_FUSEMAP_H */

-- 
2.39.5



