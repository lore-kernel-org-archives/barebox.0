Delivery-date: Fri, 16 Jan 2026 20:43:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjX-0024Rp-26
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 20:43:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjT-0001ci-1v
	for lore@pengutronix.de; Fri, 16 Jan 2026 20:43:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I69kG2mGA/JvcdEOmJOCpUHIzUIVWuxOTl5P72f/L4w=; b=zz0dapmufb3e8ZCWzgq3wsLao1
	CPU5rFmrQEQq+IxcjiPcQWtedZwDpnpTMqr0o+wkbkgNwMOONd1Wba112ct//b/FgMVGbbsd2WvbA
	N0kV6H6vR0tiHhD4yt0yE5CMb0Kl6gVCQZZHJ4R1M1SeJUh//Zwow9V0mfoISnBnB1QpTHiZ6Z1nr
	n8rncdeXmAh3XZO0fL703JwKVKxjrNFCC3f0BBeZh8mg+W8TYW+3pklNPUOI+c3lwmS14LY/l8OGp
	pIniKdYVXpSwUBGLMGSxCSxHzwB1/+pRzzQ0Qx1VC674FnaLpbq8pTRHqFEsEjZRq5u+JNJr2Ijtv
	7+nEGnFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpim-0000000EhvK-1jOM;
	Fri, 16 Jan 2026 19:43:00 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpih-0000000EhnB-45Tv
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 19:42:57 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-b8707005183so398776366b.0
        for <barebox@lists.infradead.org>; Fri, 16 Jan 2026 11:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768592574; x=1769197374; darn=lists.infradead.org;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I69kG2mGA/JvcdEOmJOCpUHIzUIVWuxOTl5P72f/L4w=;
        b=MNMuXzfZmpgoy2cESJgzh186iT/0N27Srao0yBRUZS3YiIztRRA7UA4bHOVEGIjO1L
         H5BJwudikI3tPA12R2BaQRUxk05TwUQHCS+MScRWBH3vetFW0j/jG9taRd6urMXQGTqg
         o/ZZ7ZfbV9XIXeF1PTPZM4xkcZSeGYXOotInnlS6MgO8uo2wLk1hWld9kY5IV/uN9tOM
         fKyaxyLDsUvWHGVImrJMyukpPXhwMPHeEL3F70HijGel+CsyaVmHzmo34H+tSzGupSJJ
         5RIK/4IKDyVWIFUtv4vjfCKxk4qZi9gtCQjPg27iTxIbpqtAJQZLRBOllcAA7q4CnMba
         cVPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768592574; x=1769197374;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I69kG2mGA/JvcdEOmJOCpUHIzUIVWuxOTl5P72f/L4w=;
        b=d0nliUzTc80cezBcSZ2lSunvO6g04YPI6//D/dDlIP4H1b1d7mTP5PRmgbeFjJLqv3
         tDRVbLrDfUFrX+v45jAJdzSHB1W1RnlpYnMsBTR0yGespgH7nzNhnvX96OqRRSN7qPTW
         FMnFg92pX+AFSivvSRG9ziWsF21QSQFPARu+jG8qdd1rHwiXuH1t1+sAsvRPHRvx1qqM
         ll5E2YeaOF4/EtjDQ+dJYbs3wU68mJG6m6puaTjAkHadynlVQ4fvIVyCjq6YiaOHg7y6
         BXoHBVR6JHtrKxhLDvdpzan/mXMTk29U1w/fUVgpPilyb1vUFldWpTHejNh9c7mOovnA
         2Dmg==
X-Forwarded-Encrypted: i=1; AJvYcCXdzOF4spM4+WQHY8mO2ueYiDEEGiFNgEnTdNzl4cZFpRq7p5NloWG26ww6qJYJ413CA6WXTWRJ@lists.infradead.org
X-Gm-Message-State: AOJu0YzKMENMxGkzvNH/rz8h90gxYz/oj8875YshzVAzACAVciWd3+Kk
	IKGPrQqauoJGOrfEOk5E0iq7NRo16ggEUj5bVvBOSUVScGgd/iNHpvrUe8nxvQ==
X-Gm-Gg: AY/fxX4hE+aP+iRdzAIymnusfbYy9+YU3ce+Rjbs3qjgyNUHHh0BUEg3JVPIFr8w5nc
	uOj96hvEBNmKw5XqXo2FlN6Bf/QF8Izbes51aYpVpP0iJKxIdLzaZaRZH/uob9EY4h2llDQOv+l
	Bi7cg70Qk+vdSC18BXMiZXaVjXG19HkpxSkYyOrrNqK5+rfZwkw/XXcYEYH4Mjpw1Ogvo78Z19G
	Z5FcIQ/koH+WbOTBaSysa0X9DfBeDZvBH2wYos4CpZwHnfCe5QHm4EmSogY7UeeijICTYo3RVPj
	hRPjBsQZn6dd9K9GfS9ws3oeD9O3tTCEO9pUlOCACc3DVADr98EOtr3sKwabIvGYYqUpiAopHgu
	Dlt8Eu8WO9KDuXNADTQNYLeRIaoscduLuzu0CSY8RhZ/N6R85HIGbIQ0EwHzfK+mJoDRJyd2vFZ
	0haEhVOW8ek9rV3Ww48mkdfYqOcC4RC9bfTTRuwtj4LLc8hYLLJ1Q/Sp19wZdE3v2QOMJBBOBsq
	Cq64ksqP+aX+YaKflEdvOvdtAUmpzbsaXpRHOmRIowa/7/oGz/WPkGxMd7n5lRTyNs07n0RkobW
	bA0CrJigYtX4i44XZQWKIP/5Jsw3FwtDL5cV4IX/hA==
X-Received: by 2002:a17:907:d716:b0:b87:efa:8786 with SMTP id a640c23a62f3a-b87932b09damr321729266b.55.1768592573906;
        Fri, 16 Jan 2026 11:42:53 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-f96f-90ee-b1eb-797e.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:f96f:90ee:b1eb:797e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fb0sm328166266b.43.2026.01.16.11.42.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 11:42:53 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 16 Jan 2026 20:40:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-barebox-kickpi-v1-12-d11fbccd527a@gmail.com>
References: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
In-Reply-To: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768592564; l=3628;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=G8nnb+MkLuzehn9M9qdbQqdC0ZjiJqi/1UozlhNU7mQ=;
 b=NGB84LX0LFYtAdvEkTyUQkTVEYwdJ8fX0qXHwxUHNLnSsjuJ3jzmN+6bPT+4L3vKzJbEtDkgV
 F8UP31CRwRGCmN5/Sj58TW3KewO1Y+RVzYhbT7dvUbVsCQxcZsZIbEP
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_114256_049242_F3A05E20 
X-CRM114-Status: GOOD (  13.65  )
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
Subject: [PATCH 12/14] nvmem: rockchip-otp: Add RK3562 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add RK3562 OTP support using rk3562-specific data configuration.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 drivers/nvmem/rockchip-otp.c | 89 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 89 insertions(+)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index 33b242c5bc..d2145bba52 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -51,6 +51,21 @@
 
 #define OTPC_TIMEOUT			10000
 
+#define RK3562_NBYTES			2
+
+/* RK3588 Register */
+#define RK3582_OTPC_AUTO_CTRL	0x04
+#define RK3582_OTPC_AUTO_EN		0x08
+#define RK3582_OTPC_INT_ST		0x84
+#define RK3582_OTPC_DOUT0		0x20
+#define RK3582_NO_SECURE_OFFSET	0x300
+#define RK3582_NBYTES			4
+#define RK3582_BURST_NUM		1
+#define RK3582_BURST_SHIFT		8
+#define RK3582_ADDR_SHIFT		16
+#define RK3582_AUTO_EN			BIT(0)
+#define RK3582_RD_DONE			BIT(1)
+
 #define RK3568_NBYTES			2
 
 /* RK3588 Register */
@@ -183,6 +198,65 @@ static int px30_otp_read(void *context, unsigned int offset,
 	return ret;
 }
 
+static int rk3562_otp_read(void *context, unsigned int offset, void *val,
+			   size_t bytes)
+{
+	struct rockchip_otp *otp = context;
+	unsigned int addr_start, addr_end, addr_offset, addr_len;
+	u32 out_value;
+	u8 *buf;
+	int ret = 0, i = 0;
+
+	addr_start = rounddown(offset, RK3562_NBYTES) / RK3562_NBYTES;
+	addr_end = roundup(offset + bytes, RK3562_NBYTES) / RK3562_NBYTES;
+	addr_offset = offset % RK3562_NBYTES;
+	addr_len = addr_end - addr_start;
+
+	buf = kzalloc(array3_size(addr_len, RK3562_NBYTES, sizeof(*buf)),
+		      GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	ret = rockchip_otp_reset(otp);
+	if (ret) {
+		dev_err(otp->dev, "failed to reset otp phy\n");
+		goto out;
+	}
+
+	ret = rockchip_otp_ecc_enable(otp, false);
+	if (ret < 0) {
+		dev_err(otp->dev, "rockchip_otp_ecc_enable err\n");
+		goto out;
+	}
+
+	writel(OTPC_USE_USER | OTPC_USE_USER_MASK, otp->base + OTPC_USER_CTRL);
+	udelay(5);
+	while (addr_len--) {
+		writel(addr_start++ | OTPC_USER_ADDR_MASK,
+		       otp->base + OTPC_USER_ADDR);
+		writel(OTPC_USER_FSM_ENABLE | OTPC_USER_FSM_ENABLE_MASK,
+		       otp->base + OTPC_USER_ENABLE);
+		ret = rockchip_otp_wait_status(otp, OTPC_INT_STATUS, OTPC_USER_DONE);
+		if (ret < 0) {
+			dev_err(otp->dev, "timeout during read setup\n");
+			goto read_end;
+		}
+		out_value = readl(otp->base + OTPC_USER_Q);
+		memcpy(&buf[i], &out_value, RK3562_NBYTES);
+		i += RK3562_NBYTES;
+	}
+
+	memcpy(val, buf + addr_offset, bytes);
+
+read_end:
+	writel(0x0 | OTPC_USE_USER_MASK, otp->base + OTPC_USER_CTRL);
+out:
+	kfree(buf);
+
+	return ret;
+}
+
+
 static int rk3568_otp_read(void *context, unsigned int offset, void *val,
 			   size_t bytes)
 {
@@ -328,6 +402,17 @@ static const struct rockchip_data px30_data = {
 	.reg_read = px30_otp_read,
 };
 
+static const char * const rk3562_otp_clocks[] = {
+	"usr", "sbpi", "apb", "phy",
+};
+
+static const struct rockchip_data rk3562_data = {
+	.size = 0x80,
+	.clks = rk3562_otp_clocks,
+	.num_clks = ARRAY_SIZE(rk3562_otp_clocks),
+	.reg_read = rk3562_otp_read,
+};
+
 static const char * const rk3568_otp_clocks[] = {
 	"usr", "sbpi", "apb", "phy",
 };
@@ -366,6 +451,10 @@ static __maybe_unused const struct of_device_id rockchip_otp_match[] = {
 		.compatible = "rockchip,rk3308-otp",
 		.data = &px30_data,
 	},
+	{
+		.compatible = "rockchip,rk3562-otp",
+		.data = &rk3562_data,
+	},
 	{
 		.compatible = "rockchip,rk3568-otp",
 		.data = &rk3568_data,

-- 
2.43.0



