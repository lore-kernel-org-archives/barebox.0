Delivery-date: Wed, 13 Aug 2025 23:45:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umJHK-000Iau-1i
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 23:45:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umJHJ-0004vo-D2
	for lore@pengutronix.de; Wed, 13 Aug 2025 23:45:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EUK50Oa6afqWPx2RZ+N+sjCKkpwox8ZTwLtUjQj3pBU=; b=aJsRijdV+LgFEgkVvB3Quoeic1
	YHqf3+ac1rCmnC4ajCcVTTuxFPyM3/rvlkB3E29WA7pdGREdzrb9gEmc7dO9XmeZyhJNstJwEdR4s
	SYN+K4Pg/I0Pd82FP19478Stl67fugvZ4SKcHuHUxCjPd/9SKV4T2yDtUpBkhk+msVuFFIewWxrZ6
	YR3IWgQx05jXzeV9CeBPSdwRQ+6VZeWkz8S4nh9bNdMliDQAWe2aEoj8Xq8L6gnp/RgeRXnxfV/m5
	aARNWeIx7eAT6CE8SKIahwP3myIdWE+KfWMHxswr8tz5KWbP3pv+PzDLvtZC6hKSYe82CW/UPpKgB
	jxDGZsfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umJGU-0000000F400-3Iib;
	Wed, 13 Aug 2025 21:44:10 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umJDj-0000000F3Yt-3EC3
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 21:41:21 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-55ce5247da6so235749e87.2
        for <barebox@lists.infradead.org>; Wed, 13 Aug 2025 14:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1755121277; x=1755726077; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:message-id:date
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EUK50Oa6afqWPx2RZ+N+sjCKkpwox8ZTwLtUjQj3pBU=;
        b=fU6RrIod0hMppR5ZZ8urei32MrQnarIR1LW/DxrzDtC4mqIMe7rJg5Y4iEsGAVkU/i
         7A+gBgSHXj4RPY0Fx/w8jblI8alu6B+NhOZaRfomZxdXYcuUAVMxeas5w4BVSXgbVVhk
         fW6Eh5F1gYkHs6wv2ReQX7hxTNvCuB2qBsatPQbm8z9ztxWerdDp3waoqVnzYTxIVHKe
         VrBuvc4lJOKYjH11CFZJx8sOhLKBPrcLwjNRuDuHrusX1K8QyMu4S04NFjFVjg48Rfwe
         yNauKoLrRz4coN82B2yHT4QKKeBB1Vu+g7U66Vey2LisUXVNlhQvwaUmmN+3M/ZSJR4G
         Aj6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755121277; x=1755726077;
        h=content-transfer-encoding:organization:mime-version:message-id:date
         :subject:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EUK50Oa6afqWPx2RZ+N+sjCKkpwox8ZTwLtUjQj3pBU=;
        b=D84M4nXMGm68DZgGVgS+pVNSF3NQ4sBQgD0ysIjdC0li6LhZJSBq+QgeJ95DwI0E//
         koaO8xpKxXcHSrI10lweWBvV3/eQldg1xhrYXcHlpQ8o6VRyv8RaM9RyLYB6yxSTGaIa
         aihwjp/p8ulTVbu7eNHAQ9Sc4t49Xs+3zEqAXr4j+Xz5VEdiiuEzB4nwUOqRXsbadld6
         ucAsm+hD6h2coqW2AjNiMFNYhvRQlWcuvGLxWOzkXeGrazhphLEqs+p7QUFyUgNABuuR
         wGmuCBupa3Be1TpMcr+1ImsU4RkVgSNbMDMwe90biQ6Bpb1EF4AxyYROJNAbH6iGpjLa
         S/wQ==
X-Gm-Message-State: AOJu0Yw0hnfqURAVFzOD7aFLPng2zaqyzm+oE05eilNyfsQdM6AH1Sv3
	gtHDHVp85o1jCDlXU3ttVXyTGiKtrpMlhJufp2Vyeo8QMvY+3WyCD/y3C4jbusZDkwoW+vHsSLU
	BwJzawMk=
X-Gm-Gg: ASbGncv5K3vqxGoF9OrF6FRYWjIWwK1fOZrvhxc3PCDnJ8Xh5jyvoEjjk5ZQsT4NMNI
	uw6bIb4t/V8DDCWsK9sRxPQG3PrwQv1xjwxTnVcvekk3kaw+z9pJj/g1aFsLOll3Dw8PlpUqz0L
	44qvrNOQWdwkVI2VJOSJkJV4WVx3ocY+Px6NwhVNd9xIsMeLHdBTWCYK6reX9/62I0VE9KJgva+
	BoaV8gzc02ZWcQe+zB9vvqeEAzgtr1frctI45IHMwq4FP/CdUMB7opBKlMZBJGm/P2inyEBZQko
	PMU0pMi6F+j46XYkPWplUs6XnpQTB3g21Mk/9y7gjCVzXFz4oLYPeYjcM0zaxqE/0qY5MIydawb
	j+GhnAXRwm14cSyjRLzqus/Ip8b5liSR5UMog+wfApwicNKl26v/uFAzVxQ==
X-Google-Smtp-Source: AGHT+IHY9lgv00aeqLTUP10fpuoDvFrNzcnttntWid8BqZViR161kd0Zk2hjwSXAuGowmwSIXJnAxQ==
X-Received: by 2002:a05:6512:3b09:b0:55b:920c:33eb with SMTP id 2adb3069b0e04-55ce5034722mr285698e87.42.1755121276996;
        Wed, 13 Aug 2025 14:41:16 -0700 (PDT)
Received: from wkz-x13.. (h-176-10-159-15.NA.cust.bahnhof.se. [176.10.159.15])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55ce59da0b3sm54713e87.5.2025.08.13.14.41.15
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 14:41:16 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Wed, 13 Aug 2025 23:40:45 +0200
Message-ID: <20250813214103.254178-1-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_144119_933854_1747FA46 
X-CRM114-Status: UNSURE (   9.85  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] efi: fix probing of EFI devices with parents
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The refactor in the referenced commit sends in the match function as
the context data - instead of the handle we are looking for.

This meant that efi_find_device() always returned NULL, leading to all
EFI devices with parent handles not being probed.

Fix this by sending in the handle instead.

Fixes: 4a5a9b58b568 ("drive: bus: make use of new bus_find_device helper")
Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/efi/efi-device.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 0e6f75659f..f0e22bd140 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -40,8 +40,7 @@ static struct efi_device *efi_find_device(efi_handle_t handle)
 {
 	struct device *dev;
 
-	dev = bus_find_device(&efi_bus, NULL, efi_device_match_handle,
-			      efi_device_match_handle);
+	dev = bus_find_device(&efi_bus, NULL, handle, efi_device_match_handle);
 	if (dev)
 		return container_of(dev, struct efi_device, dev);
 
-- 
2.43.0



