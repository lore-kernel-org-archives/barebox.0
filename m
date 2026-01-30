Delivery-date: Fri, 30 Jan 2026 06:18:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtV-006s3b-2j
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 06:18:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtR-0002Sn-Jt
	for lore@pengutronix.de; Fri, 30 Jan 2026 06:18:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uR9KMq1vDNPuV+Ry9W+ALgykUnTr734PDpJAAtbZJ3E=; b=e+Sm515YuRMe9g9DeS49Qcee9e
	GR9/VitB3e+q2GEqAeqgj/46NnSrPg3q8cjdxyHrWGrrQpvz54HAOiZaBRsSCxCe2Z7wyehwXqfxa
	eSq7c3gBVJ7gS+NCvNcpvwlIU+mN/bbCin3uOtpAcCt8OlzZLzs4Gses+hzHfhnXRO9a8j4AXxTcQ
	TQ9dtFsscvtRPu+VGFra5v0TFu+OQaWTp+10AsZoWoQET3dOAhB4mZn9tF1xEqX8AOMiK1rg11KeZ
	voWI1AID8Di14psoMtwqK0J3T2QhS/VE1wp+QeBktkwWSBjYy66xY0dpODauJzcZvp87Knc6BomaS
	98iX/MdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsl-000000012Ac-2rIs;
	Fri, 30 Jan 2026 05:17:23 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsf-0000000123D-2xFx
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 05:17:19 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-43246af170aso1099927f8f.0
        for <barebox@lists.infradead.org>; Thu, 29 Jan 2026 21:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769750236; x=1770355036; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uR9KMq1vDNPuV+Ry9W+ALgykUnTr734PDpJAAtbZJ3E=;
        b=D1m4ml350adlkgsstqjBKapLe5+huB/LgXJ/1SQ+eFH7sw7Op6U74VSLH+lIe4M5cj
         IrLf2xdhWUzIsWE7f+1f8EIVcquD8JUy4NORN3cSD+VyZvorNXnkNJNU+RlDW+Vok7Cm
         Zc+EJvq0h8kxHcSihq+mIvNr+O68QFjVLTQTsACREzd1itJkTCwjGYfn7xZY1Ee5AYR7
         kzEGii3EUq8l72AIQweHosTlXuEwe3A7MpGIPP0ccH0dm0q9+P6sPlMu2THzmPJPQPFV
         NhmLUixG0Bz5FDkbihATpAhuOZ6JkxmT3gU4kcW2r9oqG5jErN5QOzbghLcDVlHT/64j
         nlYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769750236; x=1770355036;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uR9KMq1vDNPuV+Ry9W+ALgykUnTr734PDpJAAtbZJ3E=;
        b=bFkS6ldAXw9T2UV/jXlx2ZpZAUwjU8VZpjZmTp3PgfWo/HDmhN25z8D9ps1Gg4GX6e
         hqKvjCnpV2HfALrf0FQ7pRHAluXfzGIORe2N1tJVQGtWPadaDlPP95Eert3fbfKjqkGD
         IKiDT7A4lHgP3gzri4Wi45LyPK6ORP5r2I5akgcZrsyVPYpPMqCZ5GDUuhTfWIZCnfTq
         3v2BZq3x4ru3OVwZ9QBSrH51qqt3Xnlky/xapAPHbuSuwD6Cbd987zY7KBk1cMS7TDX+
         fzXotpf1Peivnb7RU1Q2jjJjGuOvwcRiw2n0b3iGWN/p5G7vwWxau8dhnAnMqXSISkq/
         JFhQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0lfswFTXFWYUJIfAtZp767/BH8N9O6g3P7KbP3DMVNib6rC9edssd9Hgf0Ufid128YcMXpwjm@lists.infradead.org
X-Gm-Message-State: AOJu0YybJDQI+Rh3sR3OrllgamImzoxQKGHmnbRCRz6albcnUTw8vKp8
	FeTI8lpeIhzQCOhj6qWXeldc72P4cxLARen80yEkuihL5FYbaGDWpiSIPwtF7g==
X-Gm-Gg: AZuq6aKGnGLxMu7jIyKEM3pw3+C6dWC4hIefCVSDSRTyy0/rWPr+2unl78RLeE8Ch2h
	HnCwqsQFn7yZIkfRby9QKTHqRq974LGuXiLilS3JldwoCRfD4VXz5+lg+TRaGZNRi07BTiH/+hc
	1aFpXcjrymnO/JIvpPiqnfWcRygIZVUIOopPu+YWxvI5kYh+Yld5+KWK4OTnixZA67D2CLK2ncD
	DZ+4NxIq7GsYb8406ffFXYlYP3P/DrzX+s6N/UumGQUnUZ80reFvGp8Aa/s6HQAQr4z1kBPNOz/
	3CcKDcgooIRpGt4XLe1hrQBdk7uTRLoYXgYEjozOCEUrKwpN07UKZeoOazAb4BI3+FUecE+OcIX
	MBEX3xtzLv0ri86izB1sFYwxOM9rJGlt4eSDzIN2ohFGf0x3EgdNwsxfG8V64ejClsuStt33X/F
	RkO8+lhCnsqelEpa5Kx3Ty5KFMNoyGMo3SV1MT1QHAmyVk/Pi/0FzKFxo5bq0cIylHpZHFV5+Vf
	LD3ac1qvuwJuo4iN4xk0Uv5FRnMZPD3dRVUrbD7oJfW6vSQ2O/R+K20p/5jhSgyW+MVOpFEN2Sy
	847nLgBW8KoXeSMyBIFCd94gJ8dm/rcQmDhs/ZoZAg==
X-Received: by 2002:a05:6000:2384:b0:430:fd0e:a502 with SMTP id ffacd0b85a97d-435ea2102b6mr7081791f8f.22.1769750235620;
        Thu, 29 Jan 2026 21:17:15 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-ad12-b37c-7013-7685.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:ad12:b37c:7013:7685])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e4762sm18943088f8f.6.2026.01.29.21.17.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 21:17:14 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 30 Jan 2026 06:16:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-barebox-kickpi-v2-7-d27cf94a39b6@gmail.com>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
In-Reply-To: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769750228; l=4338;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=np2Vvjldy7I4J3H3ZjkUmd6ayiVONorHN1VFbGHevbI=;
 b=n/rFAu90jzosLtZX+pjxJHlCTuk64XSkFxhFhWzuFU1XEzqDp3mSreSBMglCqNeM5AEhNfKt4
 0pQXiSesMfpDpbrhApLyYtEwMEZbclsaavzEiin9hUGZ1bhFpGZXIx5
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_211717_877869_FEE7E843 
X-CRM114-Status: GOOD (  11.00  )
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
X-Spam-Status: No, score=-2.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 07/14] pmdomain: rockchip: Add RK3562 power domain
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add basic power domain controller support for RK3562 SoC including
GPU, NPU, VDPU, VEPU, RGA, VI, VO, and PHP domains with clock gating
configurations.

Note: This implementation does not handle nested power domain
hierarchies if present on this SoC.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 47 ++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index a30ff8fb22..4916515f27 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -32,6 +32,7 @@
 #include <dt-bindings/power/rk3399-power.h>
 #include <dt-bindings/power/rk3568-power.h>
 #include <dt-bindings/power/rockchip,rk3576-power.h>
+#include <dt-bindings/power/rockchip,rk3562-power.h>
 #include <dt-bindings/power/rk3588-power.h>
 
 #define readx_poll_timeout_atomic(op, addr, val, cond, poll_time, timeout_us) \
@@ -133,6 +134,21 @@ struct rockchip_pmu {
 	.active_wakeup = wakeup,			\
 }
 
+#define DOMAIN_M_G_SD(_name, pwr, status, req, idle, ack, g_mask, mem, wakeup, keepon)	\
+{							\
+	.name = _name,					\
+	.pwr_w_mask = (pwr) << 16,			\
+	.pwr_mask = (pwr),				\
+	.status_mask = (status),			\
+	.req_w_mask = (req) << 16,			\
+	.req_mask = (req),				\
+	.idle_mask = (idle),				\
+	.ack_mask = (ack),				\
+	.clk_ungate_mask = (g_mask),			\
+	.active_wakeup = wakeup,			\
+}
+
+
 #define DOMAIN_M_O_R(_name, p_offset, pwr, status, m_offset, m_status, r_status, r_offset, req, idle, ack, wakeup, regulator)	\
 {							\
 	.name = _name,					\
@@ -202,6 +218,9 @@ struct rockchip_pmu {
 #define DOMAIN_RK3568(name, pwr, req, wakeup)		\
 	DOMAIN_M(name, pwr, pwr, req, req, req, wakeup)
 
+#define DOMAIN_RK3562(name, pwr, req, g_mask, mem, wakeup)		\
+	DOMAIN_M_G_SD(name, pwr, pwr, req, req, req, g_mask, mem, wakeup, false)
+
 #define DOMAIN_RK3576(name, p_offset, pwr, status, r_status, r_offset, req, idle, g_mask, wakeup)	\
 	DOMAIN_M_O_R_G(name, p_offset, pwr, status, 0, r_status, r_status, r_offset, req, idle, idle, g_mask, wakeup)
 
@@ -1099,6 +1118,18 @@ static const struct rockchip_domain_info rk3399_pm_domains[] = {
 	[RK3399_PD_SDIOAUDIO]	= DOMAIN_RK3399("sdioaudio", BIT(31), BIT(31), BIT(29), true),
 };
 
+static const struct rockchip_domain_info rk3562_pm_domains[] = {
+					     /* name           pwr     req     g_mask  mem wakeup */
+	[RK3562_PD_GPU]		= DOMAIN_RK3562("gpu",         BIT(0), BIT(1), BIT(1), 0, false),
+	[RK3562_PD_NPU]		= DOMAIN_RK3562("npu",         BIT(1), BIT(2), BIT(2), 0, false),
+	[RK3562_PD_VDPU]	= DOMAIN_RK3562("vdpu",        BIT(2), BIT(6), BIT(6), 0, false),
+	[RK3562_PD_VEPU]	= DOMAIN_RK3562("vepu",        BIT(3), BIT(7), BIT(7) | BIT(3), 0, false),
+	[RK3562_PD_RGA]		= DOMAIN_RK3562("rga",         BIT(4), BIT(5), BIT(5) | BIT(4), 0, false),
+	[RK3562_PD_VI]		= DOMAIN_RK3562("vi",          BIT(5), BIT(3), BIT(3), 0, false),
+	[RK3562_PD_VO]		= DOMAIN_RK3562("vo",  BIT(6), BIT(4), BIT(4), 16, false),
+	[RK3562_PD_PHP]		= DOMAIN_RK3562("php",         BIT(7), BIT(8), BIT(8), 0, false),
+};
+
 static const struct rockchip_domain_info rk3568_pm_domains[] = {
 	[RK3568_PD_NPU]		= DOMAIN_RK3568("npu",  BIT(1), BIT(2),  false),
 	[RK3568_PD_GPU]		= DOMAIN_RK3568("gpu",  BIT(0), BIT(1),  false),
@@ -1300,6 +1331,18 @@ static const struct rockchip_pmu_info rk3399_pmu = {
 	.domain_info = rk3399_pm_domains,
 };
 
+static const struct rockchip_pmu_info rk3562_pmu = {
+	.pwr_offset = 0x210,
+	.status_offset = 0x230,
+	.req_offset = 0x110,
+	.idle_offset = 0x128,
+	.ack_offset = 0x120,
+	.clk_ungate_offset = 0x140,
+
+	.num_domains = ARRAY_SIZE(rk3562_pm_domains),
+	.domain_info = rk3562_pm_domains,
+};
+
 static const struct rockchip_pmu_info rk3568_pmu = {
 	.pwr_offset = 0xa0,
 	.status_offset = 0x98,
@@ -1390,6 +1433,10 @@ static const struct of_device_id rockchip_pm_domain_dt_match[] = {
 		.compatible = "rockchip,rk3366-power-controller",
 		.data = (void *)&rk3366_pmu,
 	},
+	{
+		.compatible = "rockchip,rk3562-power-controller",
+		.data = (void *)&rk3562_pmu,
+	},
 	{
 		.compatible = "rockchip,rk3368-power-controller",
 		.data = (void *)&rk3368_pmu,

-- 
2.43.0



