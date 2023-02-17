Delivery-date: Fri, 17 Feb 2023 18:35:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4dY-00AIBQ-Q1
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:35:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4dX-0005iC-69
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:35:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A7iwRWX2zaNEjYtIqTMj0PBhYDk/DQlnHSeIFTlxwkk=; b=AyZX3+2YHDNYcfaIYY/XuYI2O/
	N8LnSq8TDgk3It5BEEly/BXoQ8E9RHyiag4H/WzatrObmhmJXkSd1eY8PALvRSMQlxaqYsghpA2m8
	MtLbHWeci603zDqQc+0H92huhZaraYwCRi/zQDK6oiEaljg7Rxgo+OKsI3t5NKQY5Jyz9OOMef2uv
	h5lqwnSpVYYtL1Hy2ZIgkDqQ6cCN5Lwga90nu2nTkxYiy+CGP8RqzsmmSHpHKCRA8CpjVHVRCqQrq
	W2PhcmLGyx3xlv8Or0LLnEbP7p+mhy1zrcSi76oPvuUDNVxKno+mwcEd6dkC51Zd87RRBa+J+Le0i
	TgHBgRfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4cV-00FGxQ-AI; Fri, 17 Feb 2023 17:34:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zn-00FFNb-6o
	for barebox@bombadil.infradead.org; Fri, 17 Feb 2023 17:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=A7iwRWX2zaNEjYtIqTMj0PBhYDk/DQlnHSeIFTlxwkk=; b=ZO9EOczJeyUCCdMWYicqTSUBJo
	zz4SvLDIzryE9Fq4pCFxIbmPAoHGbRK4blN6AXNRu3CAdImJ2CFlOqdWmAimDE5SXR/vsgzj6AS9W
	anRBzCBw5DJJSagX+Q3Nxza/odlYOQ6clHs479xfzj0TkQfKal1VSwkaoiWoXGGi1gdNHO7/5G6NX
	abiui4lk8Q7CrkOvCIIpJ8vF7/+VcKZDTSMopPBR6Z3ISZLUmx6uvR5Ixj4Kz86rQMu0pNakUHNRs
	MJ2gszhnBuwe4JAteohMHlkyfLU9qdSN5IR48c1ffttyGEydm1thcm13n3xNBgttroPSZGbsIv4zV
	xO01si4Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pT4Yz-00Ai1Q-1t
	for barebox@lists.infradead.org;
	Fri, 17 Feb 2023 17:31:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4Zb-0004Eq-7r; Fri, 17 Feb 2023 18:31:03 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZZ-005dUG-EB; Fri, 17 Feb 2023 18:31:02 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZV-007ixS-VA; Fri, 17 Feb 2023 18:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:39 +0100
Message-Id: <20230217173057.1839835-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_173107_993275_801B493C 
X-CRM114-Status: GOOD (  10.00  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 02/20] scripts/dtc: update-dts-source.sh: don't fail if libfdt/ exists
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Script is apparently meant to be run without deleting the existing
contents, but that fails because libfdt may already exist. Thus give
mkdir a -p argument.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/dtc/update-dtc-source.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/dtc/update-dtc-source.sh b/scripts/dtc/update-dtc-source.sh
index 604ed254f542..141d36294294 100755
--- a/scripts/dtc/update-dtc-source.sh
+++ b/scripts/dtc/update-dtc-source.sh
@@ -46,7 +46,7 @@ last_dtc_ver=$(get_last_dtc_version)
 # Build DTC
 cd $DTC_LINUX_PATH
 git ls-files . | grep -vE '^(update-dtc-source\.sh|Makefile|\.gitignore)$' | xargs git rm
-mkdir libfdt
+mkdir -p libfdt
 cd $DTC_UPSTREAM_PATH
 make clean
 make check
-- 
2.30.2



