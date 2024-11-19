Delivery-date: Tue, 19 Nov 2024 19:36:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDT5q-003w8r-2q
	for lore@lore.pengutronix.de;
	Tue, 19 Nov 2024 19:36:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDT5q-00087v-AY
	for lore@pengutronix.de; Tue, 19 Nov 2024 19:36:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3PDk5595JgZz3mgkaSchoc1aS+qU/78bdSrwuJCiaIo=; b=Tl6cNcGxchlFz7BqrEr8TZlHOt
	bbcpu83iNajU0ojZNetlVi2SVeqODH7Fa11PfN/KfX69sZV0n4QodmVem4HwdpC+yjGydiMyX/OwY
	SoVr+zvjqlMB4zkkNoa/HYm4BRCpqzizOgsUddgw/S+fB90BslPAYIci1jPNBt6kO5saf7sPpTzWH
	vmY52B6umW0vIAIgyeqqeh58aBBJ2awUwOvgPp56MnjvFkqG4mbgkNkFpVJlHFGgymbspokkI7Tdw
	/eCdV3U+vgM7/CqGRjaAW5A8fTjS2saUTcxOETGQnbKxSrT4YEDJiwLCApvL/BA5xcDFUifvZRvA2
	ag9BiR4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDT5F-0000000DPMb-0Aqx;
	Tue, 19 Nov 2024 18:36:17 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDT5C-0000000DPLB-0SyS
	for barebox@lists.infradead.org;
	Tue, 19 Nov 2024 18:36:15 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3824709ee03so1874718f8f.2
        for <barebox@lists.infradead.org>; Tue, 19 Nov 2024 10:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732041370; x=1732646170; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3PDk5595JgZz3mgkaSchoc1aS+qU/78bdSrwuJCiaIo=;
        b=aHc2hX6OOLQ6bmauVN2G0/N3RJ7L5gRYi5b/0MKTx7f7rqu70iQAr9rVoynoQBywiq
         iDbfN2IuXFbgE9T4pNcD9WixldIqI5A1XOt1nFt6Ma7KBB1tiaN2MG2RUNS6bmbDLPEF
         D8+0K2eZfDMonXYu+I8W8cAO7KVDoQboTm8SoJFCdR7klvH0OVBVOCHR+EbCMJgOqz2h
         10Cytkqk247mOwUUf4K/qHz9gvL733jfjc3yb9ffASYH6ItYUZJr+aMCZ4XRQmkkvNQp
         YUZDRYYEIEnNHgiSnWbHtNNfJ6YHO8N+MS5AoJG5JMnDlqwFWydr2QFCOPAbtU6+rLzz
         rwMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732041370; x=1732646170;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3PDk5595JgZz3mgkaSchoc1aS+qU/78bdSrwuJCiaIo=;
        b=wsJf0Ah5iC6JEl7BLyhMIATiqrS+K62Xg72xmBZYex+ulgrD7iPiELoRrdvFmwlSj8
         d+R2mAXd4SD5ymAhwE0KkJjgJCaeerMWfH+Dvvw8nJNO1sUxDV4RQz1FIz1qitKR8pab
         v19qiwryQraqdRC2Nj9s/ZIA/2XHKIw7swxKewtkndxP0v7OPSJjJwqCa4TrbSQic5i3
         aNfAvfKZK1A/WrFbT029dm/WQy/lc872fhDJ2amaqZL+mzA/mgUnqHF4ids7cp9C8zcT
         7fRvDhKzh1KXpyuAS99+DFgz3GswesvXt8e5CbZ2/ZVaOWEpFKHSvH/6rJYXw9H09vta
         xBpg==
X-Gm-Message-State: AOJu0YwFZxJd1V/KiuGLOr5b/m26qnqSR1aAw0x0dYXz6FXvoLFF/xW1
	3AUtFu4RIAjxuQjEudLSMTlEtLYc+4G0yMaHUj25CMmh0s1ct+pByH/EZJeS
X-Google-Smtp-Source: AGHT+IFeUUn++9Gl634fMTshGy5unslX8tKCRhXDUGhgZ81vrOD/oyGEHE3qD2G79dboljNf+PU0Dw==
X-Received: by 2002:a5d:64ec:0:b0:382:5112:562f with SMTP id ffacd0b85a97d-38251125758mr1649178f8f.11.1732041370195;
        Tue, 19 Nov 2024 10:36:10 -0800 (PST)
Received: from localhost.localdomain ([197.53.14.60])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38241f341d9sm8495694f8f.22.2024.11.19.10.36.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Nov 2024 10:36:09 -0800 (PST)
From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
To: barebox@lists.infradead.org
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Nov 2024 20:35:30 +0200
Message-ID: <20241119183530.1629261-1-abdelrahmanyossef12@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_103614_146771_4C22B48E 
X-CRM114-Status: UNSURE (   9.90  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] of: fdt: fix overflow caused by fdt_prop extending beyond fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While parsing FDT, fdt_prop sometimes extends beyond FDT resulting in
heap-overflow.

dt_ptr_ok() checks a pointer is within bounds of the FDT, so we can use it
here to fix the issue.

Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
---
 drivers/of/fdt.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 75af1844f3..a756483578 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -257,6 +257,11 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 
 		case FDT_PROP:
 			fdt_prop = infdt + dt_struct;
+			if (dt_ptr_ok(fdt, fdt_prop)) {
+				ret = -ESPIPE;
+				goto err;
+			}
+
 			len = fdt32_to_cpu(fdt_prop->len);
 			nodep = fdt_prop->data;
 
-- 
2.43.0



