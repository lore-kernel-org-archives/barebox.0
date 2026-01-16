Delivery-date: Fri, 16 Jan 2026 20:43:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjV-0024Qm-2o
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 20:43:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjR-0001bG-9y
	for lore@pengutronix.de; Fri, 16 Jan 2026 20:43:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uR9KMq1vDNPuV+Ry9W+ALgykUnTr734PDpJAAtbZJ3E=; b=Lht4p052jSuEg+MkfZZcekPnQQ
	moB9xsESBZbAcjj9rM4nnpCfSQ0Y+0YlRr5sMnFir8cilBtzWZ8X4CW4bEwNzT7Y/A3m3bff2d9uo
	+5n5a44yorBWrO0yPZ/AFJDtxJWWKuTscMrz/29q3IpDlYkNcEIRr3Qlh4h+Dskdpdr6hsuCM03zd
	X++/A7lvKse016nhgFh7aUeUruNziA2/iGzg/4BoArSUVIS4PmxKZ7oWeKAI4Jfxl+6vEIdGb/uIQ
	DFsdQ/PMMgBEl+mQgDo9nEl4vgUqZsIxPxq4khfkmB5cvXFNxzMBxb5t+6FZDvOK6I9IkU80zBuov
	2xbtDgVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpij-0000000EhqM-0Esg;
	Fri, 16 Jan 2026 19:42:57 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpie-0000000Ehje-2YGI
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 19:42:54 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-b870cbd1e52so350922866b.3
        for <barebox@lists.infradead.org>; Fri, 16 Jan 2026 11:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768592570; x=1769197370; darn=lists.infradead.org;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uR9KMq1vDNPuV+Ry9W+ALgykUnTr734PDpJAAtbZJ3E=;
        b=ZdpNfPIsgk0UyMAA7b6X/GT0KsmMllCl1jhhWLSVrmj/rfzqI9lzguZWsZ2IH4U8OD
         gPcgukrRtvHTXLlqNlCW+tNBtC26PK0cSob3wLbfZ56lZMTuLVYH5OjVHBlg3hvcsURA
         u2Uyx4FIL9ESCYlDgR60TfuY9GHB5cVFzybRd9EaHyYOCjb9+s7aJVwT+X+HKC5DM3jR
         cSbZSo3s4uZ9EDw3agx6P1kBY8eaEZAccST2H/c1ceXvVbpV1ZLZR07lYNy6K+FUjOgN
         Qy+zpBdGZd92xbXtYx/4z81/FEjSqEnKOS+eeYViReKTfHDjAIXL8HJax6N2aNePxgyO
         O0vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768592570; x=1769197370;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uR9KMq1vDNPuV+Ry9W+ALgykUnTr734PDpJAAtbZJ3E=;
        b=HPizhZNYXfGpDpPIu7stZCxK/QrZB4uDypClE9J5zffqx2MFxFPlQX4hrkAxRH6TFB
         ieYUdHL7KoEucMutdTOYKWADm/XR6t8F3eABA2b5n9BxK9fyoyoGkusaLRAmllfHZyUx
         /JIXJZs535rzCqCTyDydr7N11mbzArfVRzuHXZRVxw5ulBf9vDZtG2DmGENFeERL7RLh
         HY/Tr3jYu5wGYK2JZIeVGgziSg8V4t4q4ZkdO9Bd9jWtrPYifLGkz+OTJttgtIz1NJzh
         Mex3e3Nix9nszHYZ2HK1AuNKhrhA/NOB1HWog1MBUbKH0tPsU1/FUPGbov3beF1GJXof
         Ou0A==
X-Forwarded-Encrypted: i=1; AJvYcCWNSJXP2eXD+I/McQ7NdmgGa7jXXjg+m96CTqM0Sm8aLS3/nxqQZnMLZF45/IOqnhwboBlwtcTF@lists.infradead.org
X-Gm-Message-State: AOJu0YxpY1+OQTgIpVzwlNEWmHCx6PhonizgjMofSdw5nDAQtjzSEBhY
	uqFmkE6PRT0DZCrcmuA8gko3RLOfcr5hu1Hi9EXikDBgUiNmWQg7NcfO
X-Gm-Gg: AY/fxX5YTrUAN1nUiazCTkXGR3tS+EGrGxSYv4UUZ01gziNH/OiVL0wtwTT82BaIhuK
	WBdOFVErhUuKC0s9Iky97qd+jkjuUEpViIMzqyDl48TBGkU72brmYYgZNVULsrrZhzSwcs500Y6
	8VCR7/zXjJD5tKwdxUXZ9M1/Mo9FXY31fQJlpab6Hv776ZUpw3iH+SIEFA5Dn8IiLPq/hlYm1Co
	L+ixeYdDPqK71szJfAp55Agixi6ErNGxQ9Ty5q6ARWmCnIkLCKXCJBXaad7nYg76UBfNZm061WF
	64r8WAczeyForMLDW+2biHCDLuvom5tw91aFkILblCIVnXg7p29VLWIe2NrzS3kb/WSZ/V3xzEI
	VZmVn2LznwrO2L9CDN56sFGlSmrwsdsy952hsKNFBbD6y7QEhSUTNWGOwB8Tf6V1nt3rditP1Oz
	Sw1Z4+W3EqYEq4vzcqiG1lTdcRYGOE7vW1UaM2pL3EytAIzXiZ0TC+gYsWXMy9z9p/VWiN+NSKT
	6XOog7Dr/QygKbEXEawQQZXNKE4IIMc6QmFcZI952PqN9rHDLm0g1i4B3DmwIErJWkyZEqb4Ceu
	R8LvM3dM6Et7QyLFxUNKjRIqWHtQRBWZEnlnCl8RLWqsJrvKlNcK
X-Received: by 2002:a17:907:70a:b0:b87:1e50:95c2 with SMTP id a640c23a62f3a-b8792d67e48mr388976066b.3.1768592570476;
        Fri, 16 Jan 2026 11:42:50 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-f96f-90ee-b1eb-797e.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:f96f:90ee:b1eb:797e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fb0sm328166266b.43.2026.01.16.11.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 11:42:50 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 16 Jan 2026 20:40:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-barebox-kickpi-v1-7-d11fbccd527a@gmail.com>
References: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
In-Reply-To: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768592564; l=4338;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=np2Vvjldy7I4J3H3ZjkUmd6ayiVONorHN1VFbGHevbI=;
 b=9vn+oEntzWRChTn8gNYjIKuZZ6ltV0sQpCkblxJRKOs01cwwRVWjUisbstHCWE4AqDxebvCZr
 giLhqdkjkc3CSodYJ2PvlXxf/Lv6iFC16xR9cVc4O075xBtG+gN6ugt
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_114252_717445_4BF35CE8 
X-CRM114-Status: GOOD (  10.70  )
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
X-Spam-Status: No, score=-2.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/14] pmdomain: rockchip: Add RK3562 power domain support
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



