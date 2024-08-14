Delivery-date: Wed, 14 Aug 2024 18:15:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seGek-009aio-1x
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 18:15:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seGej-00030M-UY
	for lore@pengutronix.de; Wed, 14 Aug 2024 18:15:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sAmoHz4pClL5sZRZ+XVWtfY1DCPnqNuEMxpJo2WbtWM=; b=tY/kML9VezcSuP4vYd5BonDEmi
	wKahBRrei7VqBIZovSVagc3TBkHuJnQ/9fiZdXLTDq8p0D5SWu31xJZRdFsWt4+7LuanW6j4/JW+t
	e5Ln4IzZBgVC5XAAgr/420mluSJIFMEJRLCxZcWRA+ug8bqnPe5lvj3WXiEnvIJwS+Nt/KIwrx86X
	iHMxi7+G6c4Vc9TMrlM53M7iGz6HjsxEfsT/uECniVrRunX/+VQsJIUxOc9lAkkerPSTVFpQwUPNH
	XTr7pHWSoQSAR5Ri12Bt4hX0iFkHYGMTzdu19aaCevtz0OFG5z2x8UXEdMC2FP0NphvEE+5sOP4ws
	/GS5aIBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGe5-00000007cFX-10O5;
	Wed, 14 Aug 2024 16:14:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGe3-00000007cEn-1mAn
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 16:14:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=sAmoHz4pClL5sZRZ+XVWtfY1DCPnqNuEMxpJo2WbtWM=; b=ETy3ZbHsJvG30EtZveYtEvXmU7
	5LqYb2SMbe/r9PxtIUILKvES4yZ4Je5lfmwIpiqXeDEKMQ0Ip9XsOOCS5tIXOOozPzME3KB6XSZQl
	Tx1gUzqOMkvSur+ojyQ1Ey43FIkv+/PwtGwp32Y0UOgcUK3fogMl/AW7Z48UHT+0JT8sab3Rw3BNF
	2v+ydWc3uQArAbVCn0jAHY7ytXnUDz+N5EZP8oRqc8QWL3bI6xuYeAzSjfiZ0d9Vlaku2IqEsYh7y
	OluMk0o8SCHAKcEx7o7yWTWLu8TOHpFbTXPwmU/EhyahCEE6PEXmCtL8ZzfI+U4UTCAdNkDUnYbWU
	aJe1svEw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGe0-000000087zG-0A81
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 16:14:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seGdw-0002m7-Uk; Wed, 14 Aug 2024 18:14:36 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seGdw-000Ohx-Hm; Wed, 14 Aug 2024 18:14:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seGdw-002NJg-1U;
	Wed, 14 Aug 2024 18:14:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Stafford Horne <shorne@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Aug 2024 18:14:35 +0200
Message-Id: <20240814161435.566270-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240814161435.566270-1-a.fatoum@pengutronix.de>
References: <20240814161435.566270-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_171440_237535_2C990F26 
X-CRM114-Status: GOOD (  10.59  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] ci: container: downgrade OpenRISC toolchain from 14.2.0 to 13.1.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The newest toolchain bump breaks OpenRISC start-up under QEMU: The console is
now completely silent. Steps to reproduce the hang:

  CONTAINER_GCC13=bdfdd5effcc169ebf8a9df2f1a5956ef34549682f78b450a97aceea2afd76f7a
  CONTAINER_GCC14=fa35adeae1ab49b4dc09fc3bf4d68f92541a0d1f41e0df91a4879fd331e4b592
  CONTAINER_BASE=ghcr.io/barebox/barebox/barebox-ci@sha256:fa35adeae1a

  export CONTAINER=${CONTAINER_BASE}@sha256:${CONTAINER_GCC14}
  export LG_BUILDDIR=build-openrisc
  ./scripts/container.sh ./MAKEALL -a openrisc -O $LG_BUILDDIR
  ./scripts/container.sh pytest --lg-env test/openrisc/generic_defconfig.yaml \
	--interactive

Running the same steps, but with the older toolchain boots successfully:

  export CONTAINER=${CONTAINER_BASE}@sha256:${CONTAINER_GCC13}
  export LG_BUILDDIR=build-openrisc
  git checkout v2024.08.0
  ./scripts/container.sh ./MAKEALL -a openrisc -O $LG_BUILDDIR
  ./scripts/container.sh pytest --lg-env test/openrisc/generic_defconfig.yaml \
	--interactive

The hang happens somewhere before the jump to _start in arch/openrisc/cpu/start.S.
Until that's fixed, let's pin the OpenRISC GCC version to the old v13.1.0.

Cc: Stafford Horne <shorne@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
@Stafford, do you have an idea what could cause this?
---
 test/Containerfile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/Containerfile b/test/Containerfile
index fe3e3a6186b0..aca2c5fcde81 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -56,7 +56,7 @@ RUN korg_crosstool_dl() { wget -nv -O - https://mirrors.edge.kernel.org/pub/tool
     korg_crosstool_dl x86_64 ${GCC_VERSION} arm-linux-gnueabi && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} aarch64-linux     && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} mips-linux        && \
-    korg_crosstool_dl x86_64 ${GCC_VERSION} or1k-linux        && \
+    korg_crosstool_dl x86_64 13.1.0         or1k-linux        && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} powerpc-linux     && \
     korg_crosstool_dl x86_64 ${GCC_VERSION} riscv64-linux
 
-- 
2.39.2



