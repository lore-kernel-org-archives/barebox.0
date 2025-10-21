Delivery-date: Tue, 21 Oct 2025 09:58:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vB7GB-00ABDz-2w
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 09:58:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vB7GB-00074t-Co
	for lore@pengutronix.de; Tue, 21 Oct 2025 09:58:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2ayvJGLC/ubmdn7vulgnJXE47Zfisl3Tlmb8baoRb/w=; b=AG1X8Rdn0x5wQX9Izoi1eFdBAZ
	GNaK0jgu1Gg0bPpE0FUzR/yDnG9l0YSUHzZOamk81pT10YPtLsLdetUWcIA3+2hekCeyotr5Uua5U
	W1t429//P4YD8PaQGXXnOFQTT8BtuBj4do/4XqUH2ylDbYPVraZNSeTNK485ICbLSDw/sUWmE8POD
	/A05muabhh/EiBvycjjaNO7aSXgwcnDLoGjk0EhTNfCzqWpqEnzRu4xvXpGiHoCsTCkGDnMMXsBAj
	o+m5SqJC6Y/nPNbbIPLlazlCfOtyfcZ20aKQQMHyQVDYCHblj1c8aRhmzkLIY/k4qE75VLjPCpzjZ
	fZntdF8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7Fd-0000000GC2U-0DxA;
	Tue, 21 Oct 2025 07:57:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7Fa-0000000GC1c-2IeS
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 07:57:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vB7FX-0006yh-Fp; Tue, 21 Oct 2025 09:57:43 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vB7FX-004gQM-0y;
	Tue, 21 Oct 2025 09:57:43 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vB7FX-0000000Gqyw-0qtd;
	Tue, 21 Oct 2025 09:57:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Oct 2025 09:57:42 +0200
Message-ID: <20251021075742.4016898-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_005746_584936_2BFF87C3 
X-CRM114-Status: GOOD (  10.08  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] MAKEALL: print --shuffle seed used for initial make *_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We run make *_defconfig once initially, so that we can get a .config to
grep for CONFIG_ARM64 inside. The grepping occasionally[1] fails in CI:

  grep: build-arm-multi_v8_defconfig/.config: No such file or directory

This might be because of the shuffling of the dependencies, but because
make itself doesn't fail, we don't get the shuffle seed in the log.

Let's collect it and print it to help track down this issue.

[1]: https://github.com/barebox/barebox/actions/runs/18654962634/job/53181695019

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/MAKEALL b/MAKEALL
index d47f0204f1f1..b953da9cccdd 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -135,7 +135,11 @@ do_build_defconfig() {
 	[ -n "$logdir" ] && mkdir -p "${logdir}/${defconfig}"
 
 	MAKE="make -j${JOBS} ARCH=${arch} O=${BUILDDIR}"
-	${MAKE} ${defconfig} &>/dev/null
+	shuffle=$(${MAKE} --debug=basic ${defconfig} 2>&1 | sed -n 's/.*Enabled shuffle mode: //p;T;q')
+
+	if [ -n "$shuffle" ]; then
+		report "Probing ${arch} ${defconfig} (--shuffle=$shuffle)\n" >&2
+	fi
 
 	if [ ${arch} = "arm" ]; then
 		grep -q "CONFIG_ARM64=y" ${BUILDDIR}/.config
-- 
2.47.3



