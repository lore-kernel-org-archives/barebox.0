Delivery-date: Tue, 10 Jun 2025 20:19:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP3ZQ-005syN-1L
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 20:19:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uP3ZP-0008Ne-TR
	for lore@pengutronix.de; Tue, 10 Jun 2025 20:19:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mL/SrcrpUcaFZeevnuKymueWWN4OGe0sp9OKF592e4w=; b=Z6wc8f/QjEFE8JvR9lESzLACeu
	1tCp/CJ6giks3N6Z9X7kft4uX9bTY6XI8RjOR8YP6CDWGFMr14WKTlLQjDOfx1cCPtKVb+zP4/cfh
	Kjph85khWxDzphFi8R0SjFZrKX4RDD0rdbgJju/kqAVon7vU3oT03pvIo9DUq+hMVbO62/8rAp1vQ
	5jJKPC69LYvHg0tDGPn9vbmSmsfRd/ZkrO9nBhVFsOyQ93paq4pFiNabANm17mIgitrAREX+3W2VF
	1rq+ZepJx1pCJ6GWc43SPToismve8PP3fQheui1uXlnCHR0x5jlJxyq68BiGEIvGXvT9yhVeBI1Yz
	hUuQ06OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP3Yy-00000007mQl-32yM;
	Tue, 10 Jun 2025 18:19:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP0fE-00000007FZI-1FBS
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 15:13:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uP0fD-0002LS-1J; Tue, 10 Jun 2025 17:13:23 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uP0fC-002nZd-2j;
	Tue, 10 Jun 2025 17:13:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uP0fC-00CHqK-2J;
	Tue, 10 Jun 2025 17:13:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 10 Jun 2025 17:13:21 +0200
Message-Id: <20250610151321.2926513-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_081324_332674_A53F021D 
X-CRM114-Status: GOOD (  11.44  )
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
Subject: [PATCH] sripts/k3img: determine size of files, not links
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The input files to the k3img tool might be links, in that case we need
the sizes of the actual files, not of the links pointing to them, so add
the -L option to the stat command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/k3img | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/scripts/k3img b/scripts/k3img
index a514852fcd..32ceb15ee9 100755
--- a/scripts/k3img
+++ b/scripts/k3img
@@ -71,10 +71,10 @@ shasysfw=$(sha512sum $sysfw | sed 's/ .*//')
 shasysfwdata=$(sha512sum $sysfwdata | sed 's/ .*//')
 shadmdata=$(sha512sum $dmdata | sed 's/ .*//')
 
-sblsize=$(stat -c%s $sbl)
-sysfwsize=$(stat -c%s $sysfw)
-sysfwdatasize=$(stat -c%s $sysfwdata)
-dmdatasize=$(stat -c%s $dmdata)
+sblsize=$(stat -L -c%s $sbl)
+sysfwsize=$(stat -L -c%s $sysfw)
+sysfwdatasize=$(stat -L -c%s $sysfwdata)
+dmdatasize=$(stat -L -c%s $dmdata)
 
 total=$(($sblsize + $sysfwsize + $sysfwdatasize + $dmdatasize))
 
@@ -88,7 +88,7 @@ num_comp=4
 
 if [ -n "${innerdata}" ]; then
 	shainnerdata=$(sha512sum $innerdata | sed 's/ .*//')
-	innerdatasize=$(stat -c%s $innerdata)
+	innerdatasize=$(stat -L -c%s $innerdata)
 
 	innercert=$(cat <<EOF
 [sysfw_inner_cert]
-- 
2.39.5



