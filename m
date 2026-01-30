Delivery-date: Fri, 30 Jan 2026 06:18:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtS-006s1g-0j
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 06:18:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtN-0002QC-U8
	for lore@pengutronix.de; Fri, 30 Jan 2026 06:18:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I69kG2mGA/JvcdEOmJOCpUHIzUIVWuxOTl5P72f/L4w=; b=CfNlcwvL38QlRYOCAp51cS0dq8
	T9cLw+JY+o6A9P2Og0EBnWoOadn9xXsGu5Z3MBkvCcdg3yVJ2jd5caHH/b93QJxrimxw+KiUTSZ0Q
	Ta8VyXtwgbLHDIwo+NjEWBZxY9X/0xQfhjPfj8nLff34woKqd0VFNt+ZzGFGzUQ7cKaTR1ZYj6Xpr
	fF0wQ0qy+xjOXXn9hYHwHCOpNi4zKIMN22/wlOJGxg+EAEm6HDtaU6JIULaSZwM2AZsaSBiR6Go6m
	BbXUG8CabngkeFGSLSN0D4MqGQdcQAhpkVZNYMCXDsn3faS6/CTLpZpDLR2BXe0sqQwXvz83Ith9R
	xXgyAgoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsp-000000012Gt-3oVa;
	Fri, 30 Jan 2026 05:17:27 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsj-0000000126x-15uY
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 05:17:22 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-47ee07570deso14180145e9.1
        for <barebox@lists.infradead.org>; Thu, 29 Jan 2026 21:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769750240; x=1770355040; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I69kG2mGA/JvcdEOmJOCpUHIzUIVWuxOTl5P72f/L4w=;
        b=eo8tN5tFe7QDHWfbDO14cBqy10FH3wjXZzNvb30880MgnHiVF7r2HBWv7WN3EcLXkk
         0bSydyQ4oDoEeieI77s9Lbb2JWVy2/B+2icEHDAMPMhu5XkCLQkiizvh1jNmzk08mOOy
         Lnb9+qEy1sQt2W+/t/2825SIwDOEpVuwlNvQfmwKBfNEiuW5xpw1s+2Ud9AsGaMIMqm7
         JLRscYa7zIW1g6oTyc8Avk9s46JMrGtNe3x+Or5rYSwBS3o2StX1C0mUBcqQxIjGkyrz
         724dBu8d7QqYIrUapUUkCCr4rrLV/n8jDWfnnbZP1hxlA85/Mcxf3GHT6c/RsNMrriqC
         rJZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769750240; x=1770355040;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I69kG2mGA/JvcdEOmJOCpUHIzUIVWuxOTl5P72f/L4w=;
        b=EYL/m43xwka7ljtaTGM225dOm90Vc/fZIM271ebXyfWQftYt90VbUCmh+anInf0Hjr
         bMwqrQXJTtf3pV9e1rXO8tOGzwHNU2Xb74HKB7esHJXQxtC3G7/9bhlPvbV1wV/1R0uS
         YlT4o/WJ7iXb+a4Rk3pza29zl4iHm9nqN/qskE9Sn2A4q9i4ZmIogw0tN/2bMTcrsHah
         RgX5+hsMEUlnO5XYm1fhIMTZEm4C6ROiSut5gYbO3bc2TMU3XyjqjXidmoPvqPz6xwCM
         TFZHAd0OoNWWN1NtlG32A2nSaEbSKOYeu5j9kYoqL6rgabUW/jShag1leWA+7z2zab0m
         +YRw==
X-Forwarded-Encrypted: i=1; AJvYcCVP42PboR+XaubjeWpNFaWYIV8F0sdwJng8J6qzWAu9tUvFj03FRcBKvGBAfFOQyM98uRyCpRn7@lists.infradead.org
X-Gm-Message-State: AOJu0YxXTSKEoqMDrpyWibBc8yhXKSWLHl4Pptsx/nahaZCLUbNBhj29
	aW37z7Hc7WlW9Ve9DQjb3yHKKPuewI11nt7lE4Iqg/KH2pfkmT6ZXFqy
X-Gm-Gg: AZuq6aJomhzDBdcHocxn57Ui0qXZ98h/D1En+PCWoMtKcWAeSEph6Q8UNC1oWYy3JdX
	mY4+DvrWweiHYJs4HiRm1EpN6MegUgQYa+qSY0UeZC29cC+vU5dWitbQSmuYQtj+aS7URKPS+N2
	rd+fl0u6UnctM+DkXilbU9DkB0FRu66kj5vtJILJ6Nwl4Rw90SnRghOW8i8Qckw4Kz50E2wL8lv
	D0BqYY/RECCbrN5e+eQZkogu81Hyzp4Fygl/2WXfXFIz0uA1cnQ429L9/48XSZludGbiuTPjLAY
	HUE5mgD5ruSEAKNjroHOgLv+H5oSOBwreV8zAhlA/cMTlSZgWUcGzApENJXQ/NkoJ/A3jA1311N
	eAT6PWY2Vj3AKe6K1rjxHVjVM8d0lfEeS8hHAnzJYBFc2qUYAe0C90mvB8eN5Jdekc1vaCJ9K2k
	GJAmBf2w2f1z3cA/OTWqa+S6piA0Q44j6yhpqZAAxM61PsRujUk940tw34BhBKhTgS920thRjzi
	W1TPHPBN8HeHYIWM/w6agRJei8zOQAjtjZDPxUWKfAi3Qd3SWuV1qTR3oQGrYqO1+NLgd5Jwmzb
	hpGnanlydHKmYYx12KBXHkgt6qUg/1RUiEVAPivGCnfdGbqtTeJN
X-Received: by 2002:a05:600c:1f92:b0:47a:8088:439c with SMTP id 5b1f17b1804b1-482db4a873emr19785985e9.35.1769750239617;
        Thu, 29 Jan 2026 21:17:19 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-ad12-b37c-7013-7685.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:ad12:b37c:7013:7685])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e4762sm18943088f8f.6.2026.01.29.21.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 21:17:19 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 30 Jan 2026 06:17:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-barebox-kickpi-v2-12-d27cf94a39b6@gmail.com>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
In-Reply-To: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769750228; l=3628;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=G8nnb+MkLuzehn9M9qdbQqdC0ZjiJqi/1UozlhNU7mQ=;
 b=rIM0sa1wmgmTQHDjmEL6wFvFOj0xwKE8k3kBfrtKcv6Hf+OeshIAh02p55bja6vEzG/HeQbMh
 i+vi21Mibp5AxSMhWn/URCF+hdfTe8fEMSYh0K94fq6IIdxuYKkleru
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_211721_779531_694CF399 
X-CRM114-Status: GOOD (  14.16  )
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
Subject: [PATCH v2 12/14] nvmem: rockchip-otp: Add RK3562 support
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



