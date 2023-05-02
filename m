Delivery-date: Tue, 02 May 2023 09:41:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkdY-0027mL-Qr
	for lore@lore.pengutronix.de; Tue, 02 May 2023 09:41:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkdW-0002wi-PC
	for lore@pengutronix.de; Tue, 02 May 2023 09:41:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ytmiJo/DyhkEaiPo1KPdjXSMDfYPSKgE/xrGsOdt/P4=; b=jUSM78iMdHdoW/IxRx9XpXUb/l
	7mtA2GDpgvJIiInIGTjU9iMfR9Qm2MHtr6htrgHhKv20yD4Ebp3yss3nT2EKrsONThekXp/FqmnoJ
	SegR28+f3tu409OQzEo4RXhslwg00NmtlEjh91egznitDRi1e3Y2msTOKvhr9jBxoRkOdYQPEUF7+
	HlC+Myyp/yqTAXIv7YuYw+ARNJiLu0zRlJc0iY8Dh2r6qj9vYFx8rUS16PL6kOSkpRwMqfnXg9SmF
	fdPuWaNYApZaECeLF3OzbHi58UffPAcff/mN+PihEpIA1F8JV5mMGiInSvqs/oo61AQ52fRbI6q6+
	8qBFoypw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbt-000V0g-2p;
	Tue, 02 May 2023 07:39:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbl-000Utr-0o
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 07:39:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbg-0001y4-2c; Tue, 02 May 2023 09:39:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbf-000XPq-Fs; Tue, 02 May 2023 09:39:27 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbe-001Mds-Bq; Tue, 02 May 2023 09:39:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 09:39:17 +0200
Message-Id: <20230502073925.266116-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502073925.266116-1-s.hauer@pengutronix.de>
References: <20230502073925.266116-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_003933_328998_3B867965 
X-CRM114-Status: UNSURE (   9.73  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/10] MAKEALL: Select arm64 toolchain for 64bit ARM configs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For both 32bit and 64bit architectures ARCH=arm is used, but we need
different toolchains to compile them. Pick the correct one based on
the CONFIG_CPU_64 symbol.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 MAKEALL | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAKEALL b/MAKEALL
index ad95cfe040..dd61f89827 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -104,6 +104,13 @@ do_build_target() {
 	check_pipe_status
 	configure_result="$?"
 
+	if [ ${arch} = "arm" ]; then
+		grep -q "CONFIG_CPU_64=y" ${BUILDDIR}/.config
+		if [ $? = 0 ]; then
+			arch=arm64
+		fi
+	fi
+
 	cross_compile=$(eval echo '$CROSS_COMPILE_'${tmp})
 	cross_compile_set=$(eval echo '${CROSS_COMPILE_'${tmp}'+set}')
 	if [ "${cross_compile_set}" = "" ]
-- 
2.39.2



