Delivery-date: Wed, 26 Mar 2025 13:37:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txQ0F-004QuJ-1l
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 13:37:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txQ0E-0000Gk-6V
	for lore@pengutronix.de; Wed, 26 Mar 2025 13:37:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZLkpe7tPmeWBIpFmdeuyZB0mis+vxDO2q4WBsKobzlo=; b=Kki32u5tOq+YmAit0ebGoOwqBP
	Ge+f6QxeB2YBGlJh+BRwiE+wUQTvyMNogGsgWVNpWg1n+Zn2pLjIRXeuGja7xn2SOa36srJotgdtt
	3cad1w/bKCuWk4F1ql+SHWCAMY8iQgthL+3iiwuV7DqM9WzCFI07t5mtbkzORgmE5+BjlL0W2iyOn
	/mEnzOwL1VKoAMUrK9dTmETd6NDxg0aqLiv8pOaFixo+Nju7537M6sCAW6KFtPb4Ic57A0vgzCVH9
	8AyKyRhZOeHd7SoZpxsXmh4WJEeGEF/u5tdSzgdHeuN48TQFzTiL45Ywnn1TfJofyPxPDSy56Hgky
	DyzH2koA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txPzg-00000008TO5-1Wv8;
	Wed, 26 Mar 2025 12:36:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txPza-00000008TKd-0H4B
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 12:36:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-0008Io-LC; Wed, 26 Mar 2025 13:36:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-001kYQ-07;
	Wed, 26 Mar 2025 13:36:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txPzY-001Caf-1C;
	Wed, 26 Mar 2025 13:36:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 13:36:13 +0100
Message-Id: <20250326123619.282897-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250326123619.282897-1-a.fatoum@pengutronix.de>
References: <20250326123619.282897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_053622_129521_D8F96830 
X-CRM114-Status: UNSURE (   9.78  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] Revert "ci: container: downgrade OpenRISC toolchain from 14.2.0 to 13.1.0"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This or1k issue turned out to be caused by the QEMU update[1] that came
with bumping the Debian release of the container image and not the
toolchain update.

We don't have the QEMU fix in the container yet, but we have a
workaround in commit b2a21df3b07b ("openrisc: dts: describe all 4 UARTs").

So let's revert the erroneous toolchain downgrade.

[1]: https://lore.kernel.org/all/20241203111513.402641-2-shorne@gmail.com/

Fixes: 6d4c6b01f4c4 ("ci: container: downgrade OpenRISC toolchain from 14.2.0 to 13.1.0")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/Containerfile b/test/Containerfile
index 53a5443e48fe..94b3f618261c 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -61,7 +61,7 @@ RUN korg_crosstool_dl() { wget -nv -O - https://mirrors.edge.kernel.org/pub/tool
     korg_crosstool_dl x86_64 ${GCC_VERSION} arm-linux-gnueabi && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} aarch64-linux     && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} mips-linux        && \
-    korg_crosstool_dl x86_64 13.1.0         or1k-linux        && \
+    korg_crosstool_dl x86_64 ${GCC_VERSION} or1k-linux        && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} powerpc-linux     && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} riscv64-linux
 
-- 
2.39.5



