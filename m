Delivery-date: Mon, 05 Jun 2023 08:37:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qW-00BSGs-5F
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:37:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qT-0004D3-Jk
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:37:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/d2YyVbWc6Xf+lg5q1lCbozHxv/wKGjhUIFmGGlBo14=; b=b3yF2MtwjMvx38OstfwOBErQHz
	PJ8pgVJQGTvewe/vgD91IawEkOiQL2mOQhaKOjVnAsLiD1sTSVTjiBt5g+khmiYJ9vsB0NW6F/119
	HODPwZq1Vi0BvPMJWCs00cBVPahXfyk6H5RMU9hA7Yr74a1G/R+LzUePa2rQ991RPS0PK+qT0ZzBr
	9/pF4LED6LGv9QH5La+7quDLHYLAAXUX0JyCYDQCDTupjMJSiUsDtw//wHMmECSEKGLYCq9/fDRAh
	3FLcp1XuifB8PR/NRnT5t4hv6eEKWHi98117zUpKwjz1o9GpZaNLSgjRKdOaPfnT6xZ18H7EkdcxE
	UQ85wqmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pQ-00ENAk-0a;
	Mon, 05 Jun 2023 06:36:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pN-00EN7a-1V
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:36:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pM-0003VV-0O; Mon, 05 Jun 2023 08:36:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pL-005Ct7-6p; Mon, 05 Jun 2023 08:36:27 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pK-005pOO-EJ; Mon, 05 Jun 2023 08:36:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:36:13 +0200
Message-Id: <20230605063623.1254764-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
References: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_233629_503785_3841585A 
X-CRM114-Status: UNSURE (   8.13  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/14] test/Containerfile: drop i386 toolchain
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It's unused and barebox EFI may not work properly for non-x86_64 anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/test/Containerfile b/test/Containerfile
index e637c68b4d08..4ca690714a2f 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -70,7 +70,6 @@ ENV GCC_VERSION=12.2.0
 RUN korg_crosstool_dl() { wget -O - https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/${1}/${2}/${1}-gcc-${2}-nolibc-${3}.tar.xz | tar -C /opt -xJ ; } && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} arm-linux-gnueabi && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} aarch64-linux     && \
-    korg_crosstool_dl x86_64 ${GCC_VERSION} i386-linux        && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} mips-linux        && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} powerpc-linux     && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} riscv64-linux
-- 
2.39.2



