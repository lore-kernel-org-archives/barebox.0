Delivery-date: Thu, 18 Sep 2025 09:45:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9Kz-004NxN-1d
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 09:45:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz9Ky-0001lo-Al
	for lore@pengutronix.de; Thu, 18 Sep 2025 09:45:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C3kFGWP2AhphqiJN+XydK0yKUi7dVy+GuMaAeVTIpnU=; b=1+0d/HK6wr6neCU6W9W9PMt75B
	OAx6JjzhXY2WWX5uhCpOysUzJh3FNxVHp1l/HJamf1gywl91PnJ0kzDjNbK+kFzLFjSV6XArRf5g1
	5vhd/zG5FcMBgPTOwSn/PDnO90CDmUcz5tTSoDvN5swQw+Ds6VufVRoDWPtJ1VejyCvUJnCT2MJ/F
	gjxnhlydMZfpSMiEkv9T6+vmZUktlFhWT9N10dx7j3FFW14VXCeTrhAdPvDyWg6fqFp8Axc3E4B2w
	eUh9/y6wjO9WaalDUgP382SvW7Tc2dHf8D0bl0qb8upHqAUR6ejYUokk36tJ0FIh8Xjj6d1TptUrb
	KTJC2wig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KT-0000000GaWI-0A2L;
	Thu, 18 Sep 2025 07:45:21 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz9KN-0000000GaOg-2Ir7
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 07:45:17 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-b079c13240eso108785766b.1
        for <barebox@lists.infradead.org>; Thu, 18 Sep 2025 00:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1758181513; x=1758786313; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C3kFGWP2AhphqiJN+XydK0yKUi7dVy+GuMaAeVTIpnU=;
        b=luvwDWJxpZ8MD4GuQfpR4RM7N/WFd+keuvFa1/qYBC6RWpFoNjMyixv+Zc1Z/RsWG2
         JNdpfSnMZDB4JWTE5hwDjOWc8uJpEvtrtGpYFQo/iIRwe7hoPadu2+NLQh/aegBRdxzO
         dVNpNLhsbNSD9bfzMIo71m76Yi/ZDBntvS6WTJzybHyt/VNpIkiOHMyNQl+koa9FQQxf
         yZxHz5M0Ectc0F5O1ylDhUBhBpz+hJFSZmKa/crBG+p1D7YYlMcX7TDhzTn1cuN/wP5g
         UIEBEoKZLR7MIt25Q1FPF+4XgBnepvDlVtmWN/R4gHk1Ytqh+x4CBY/22k82rtDXhUFV
         UoXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758181513; x=1758786313;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C3kFGWP2AhphqiJN+XydK0yKUi7dVy+GuMaAeVTIpnU=;
        b=XflWi5NFbUEmf8zeJkkakLnftNXFUGzeWsyYzVr9PHWfwL/wlrZlpT7H7UB9ex5Stj
         PqIZA4ENuWl0ta7eW0oU9NYpbqA9+ChlrO7itule2c1p3GnqClkdUUOz9I3Nk/EXNuRr
         wE6Umi8mCvG7QU32f1AsQu2XzP3EtgAfIYHQq8pryWoGpr7sqXlB7MTK5/W8FLKc3RS+
         oWxfJXR24NIq8SbIakcQ16oWocNhUjWx8wrTVb3QkMcAu0lM4rnty1EUKLtyybZs4hQB
         LME6QivF8jEbQynhZUHGosaQI3bKsZNg4xbdIcSV8x+Ps1I7a1IotG78Fsp8pRQtYbOj
         1arQ==
X-Gm-Message-State: AOJu0YzB42hlI9wBVgSTOQ/l6QYMNHEqXNBeW+xPDuWdzBgsy4EaYOSB
	o1Too7xycqzXUzIJvTHfPHqJE3Xk6xQYo0tEqlSwVaY4SbU+sQVipEsAAWHOEAlJCM+AkjEtijV
	cqrOT
X-Gm-Gg: ASbGncuem2OUtMb1/gQtyddYklbFY1I19QO3wRnVCxTjRfOrEj6I2X7Z2n6bYRTc/ut
	2xrWKi2oCiqmw68FNILei1mMmYKrzhimLtKVr0dB1xu2HITrcYoYdnvhlDP/TLv0zJCIWKG4e2V
	hu7aQqSrf4sVVcdYdCKCnRTVgCDqPcyMq+a3rhN6jCJ6xOx4/uNFaFzTTLlLOU2Sp1WiZEbfbAy
	YW7S+e8+5w/s3Ga7DdyGoCBxHyoCUxfgKIijS1OhwpTVS9XQUlYT2b/xHiiafDbMPUj0q+G39Px
	RORCaJ5nNCNk0sio4SUs5EWWMRBVpyHXMb5qu8hRVto7dmXrMVFUpW/qiYonU8OiuRGi4dyl2Ok
	Rs3yTbJJZYfCBqcnisGdawPe8Ju4JlHJCDvbUTx9GYM/Mfo9mcf7M6hDKZUVjSsYuZBxR2IAhQp
	mfmA6u8eec
X-Google-Smtp-Source: AGHT+IF89I/ey8FqIHGrzphiu4DDFvHFipQ4omGWbBQxsXjMsltmus3XMUYp1Edh/8XlYQZDNuhQRQ==
X-Received: by 2002:a17:906:7314:b0:b09:2331:f139 with SMTP id a640c23a62f3a-b1bb0c442e2mr491457266b.14.1758181513447;
        Thu, 18 Sep 2025 00:45:13 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fcfe888bcsm140703166b.71.2025.09.18.00.45.13
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 00:45:13 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 18 Sep 2025 09:43:19 +0200
Message-ID: <20250918074455.891780-10-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250918074455.891780-1-tobias@waldekranz.com>
References: <20250918074455.891780-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_004515_611327_DCB4B444 
X-CRM114-Status: GOOD (  15.42  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 09/11] test: pytest: add basic dm-verity test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

>From a consistent dm-verity device (good):

- Ensure that we can read from the underlying filesystem.

>From a dm-verity device where the data device does not match the hash
tree (bad):

- Ensure that unmodified parts are readable
- Ensure that reading from a modified block results in an I/O error

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 test/py/test_dm.py | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 test/py/test_dm.py

diff --git a/test/py/test_dm.py b/test/py/test_dm.py
new file mode 100644
index 0000000000..a9debd85b5
--- /dev/null
+++ b/test/py/test_dm.py
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+import re
+import pytest
+from .helper import of_get_property
+
+
+
+def test_dm_verity(barebox):
+    _, _, returncode = barebox.run("ls /mnt/9p/testfs")
+    if returncode != 0:
+        pytest.xfail("skipping test due to missing --fs testfs=")
+
+    barebox.run_check("cd /mnt/9p/testfs")
+
+    # Since commands run in a subshell, export the root hash in a
+    # global, so that we can access it from subsequent commands
+    barebox.run_check("readf good.hash roothash && global roothash=$roothash")
+
+    barebox.run_check("veritysetup open good.fat good good.verity $global.roothash")
+    barebox.run_check("veritysetup open bad.fat  bad  good.verity $global.roothash")
+
+    barebox.run_check("md5sum /mnt/good/latin /mnt/good/english")
+
+    # 'latin' has not been modified, so it should read fine even from
+    # 'bad'
+    barebox.run_check("md5sum /mnt/bad/latin")
+
+    # 'english' however, does not match the data in the hash tree and
+    # MUST thus fail
+    _, _, returncode = barebox.run("md5sum /mnt/bad/english")
+    assert returncode != 0, "'english' should not be readable from 'bad'"
+
+    barebox.run_check("umount /dev/good")
+    barebox.run_check("veritysetup close good")
+
+    barebox.run_check("umount /dev/bad")
+    barebox.run_check("veritysetup close bad")
-- 
2.43.0



