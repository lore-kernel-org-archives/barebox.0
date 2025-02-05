Delivery-date: Wed, 05 Feb 2025 11:27:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfccb-008lIy-1O
	for lore@lore.pengutronix.de;
	Wed, 05 Feb 2025 11:27:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfccb-0001pi-JD
	for lore@pengutronix.de; Wed, 05 Feb 2025 11:27:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ke8hjNGsPbD8ES8AWGRlAtLaT54q2bA/4HRG87UqEdw=; b=0mwfqlO/t5dSzgz4ahqZVzbe6N
	qqxc+NaiMBVJyoAlM/4DYs0FwYhKdLOsGUdZYlKTv29WM2jD9fjUh1W0m1ewvEVlBRYS4WwOE5mex
	ZYpmcDsDtBJs7YIaepG1pMYZFHlLXw404/1enZYqiacU9z21EDXSAKf9bwfgz3f+oa/kLLFNvhG0Z
	u8k0/fIFL/75MmHByPMVZSW0b9EtcLnWr+jsJj+aGeEgVIW/8fssDukSqd1Gr3GL3D8lk84LfSOjV
	uzQyfPkp55OpuIX3Rt3cm8XMU9vUuU+Y0ifn/iIpJpsq92SpDHptb036WIImn9zlJKBhJaJfxnAAx
	xg2Op/jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfcc2-00000002s9i-0VUh;
	Wed, 05 Feb 2025 10:26:30 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfcbz-00000002s70-16Hk
	for barebox@lists.infradead.org;
	Wed, 05 Feb 2025 10:26:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1738751179;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ke8hjNGsPbD8ES8AWGRlAtLaT54q2bA/4HRG87UqEdw=;
	b=xJZKDYVTQu4MjnDEWwsInMAWWPSxpdVZo+jIfQupZui1fwP6JFyX+6AkpTqtrhH6L5qLsd
	clTtkHwNAlpRug9uX/x9geUxcazc42I3gbM3qdzBNNKFxwzRh32i9MaLTtlKt4Uo8E81qE
	VSPXY/j75+7M2Bg/U8lErqqTpxhUv3a9xtudiNKtvFnXUtfZbdfcmfZB5n5vsj24TQ7Xgi
	/w5boG9uyN10dtkSzw1bEGhxDCueo7G57bgADKV86jfH0EmGxyf1hKqsucmcbdtOpXn0K7
	q2DAo6K3MzrT5fLe7FQ8E7uyQ7x22bqIEoRZE0jRbU7dukVbinfDJ5PemeApIw==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:671e:1939:7a9a:a2ba])
	by zdiv.net (OpenSMTPD) with ESMTPSA id e3a5bc63 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Wed, 5 Feb 2025 11:26:19 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Wed,  5 Feb 2025 11:25:49 +0100
Message-ID: <20250205102549.27015-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_022627_768343_7B7A1418 
X-CRM114-Status: UNSURE (   5.20  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: include: rename printk.h to printf.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The include scripts/include/asm-generic/bug.h relied on a printk.h
compatible header which is located in the scripts/include/ and was
not updated when printk.h was renamed to printf.h.

Fixes: d8ea946bcf ("include: rename printk.h to printf.h")
Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 scripts/include/{printk.h => printf.h} | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)
 rename scripts/include/{printk.h => printf.h} (54%)

diff --git a/scripts/include/printk.h b/scripts/include/printf.h
similarity index 54%
rename from scripts/include/printk.h
rename to scripts/include/printf.h
index 363d32f2e5..2ce99c2fa8 100644
--- a/scripts/include/printk.h
+++ b/scripts/include/printf.h
@@ -1,9 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
-#ifndef __PRINTK_H
-#define __PRINTK_H
+#ifndef __PRINTF_H
+#define __PRINTF_H
 
 #include <stdio.h>
 
-#define printk printf
-
 #endif
-- 
2.48.1



