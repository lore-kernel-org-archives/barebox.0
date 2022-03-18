Delivery-date: Fri, 18 Mar 2022 16:30:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVEYY-00FpXn-Jh
	for lore@lore.pengutronix.de; Fri, 18 Mar 2022 16:30:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVEYZ-0003f0-4v
	for lore@pengutronix.de; Fri, 18 Mar 2022 16:30:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/iESyok5aqrCwGreatyyvYn2Kd8H5zkDUUz6WKBH7mY=; b=WkM4/9fKie4Ez/
	wIF3DsCMisZwEfeP7AHGbwa1p38NN5+nVzvqasvcZ1BwOprm3lZUr00u0B+i0GIChvuqhBt4MfSpX
	fIftN90nF2ut870j+gybAmVxCEHDxgG9ovTi5R7GuAAPleyUeCCvyElKtveI8yXrQ4WRTShFODQsR
	25WHDDIp9uqtCVXOPVKHP/hTOuHWc16n8IKTgVkWtRE8LE1cxJ4L3CbKx9LruQDD4ZvQo00HwIipy
	9rutbiAxd62A0FG7FhGJdAM6sDD2UFEm994kG1nCm1sqbvUUHsDHr7HFDHJZT0yzq8Sa5oQ+ZVo0Z
	9dUE2D6xTQNy/C5aUszw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVEXE-002HAM-UP; Fri, 18 Mar 2022 15:29:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVEX9-002H9g-Ic
 for barebox@lists.infradead.org; Fri, 18 Mar 2022 15:28:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nVEX7-0003VI-2I; Fri, 18 Mar 2022 16:28:53 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nVEX6-0033tQ-Jy; Fri, 18 Mar 2022 16:28:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 18 Mar 2022 16:28:51 +0100
Message-Id: <20220318152851.729901-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_082855_636209_BAA6BCD7 
X-CRM114-Status: UNSURE (   7.06  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] scripts: remove non-existent bareboxstate binaries from
 .gitignore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox builds no tools with these names. The normal barebox-state
utility comes from dt-utils, so drop the unnecessary entries.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/.gitignore | 2 --
 1 file changed, 2 deletions(-)

diff --git a/scripts/.gitignore b/scripts/.gitignore
index 6ef43640b79f..f78793eab7da 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -22,8 +22,6 @@ bareboxenv-target
 kernel-install-target
 bareboxcrc32-target
 bareboximd-target
-bareboxstate
-bareboxstate-target
 mk-am35xx-spi-image
 mxsimage
 mxsboot
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

