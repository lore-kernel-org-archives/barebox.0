Delivery-date: Thu, 24 Apr 2025 14:55:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7w6j-004tIC-2i
	for lore@lore.pengutronix.de;
	Thu, 24 Apr 2025 14:55:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7w6j-00081H-9g
	for lore@pengutronix.de; Thu, 24 Apr 2025 14:55:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7srl2BvhtmgSbagK3VBtcEslQfmSua0xPu71oQWNoJ4=; b=zoc54e2B0BMx2PJfROrSufBLrl
	elNqLFYxmZbOPWR+i6O/ZZEPxiSCOmldvNnHmlPNNImNbk0oBuVizZxgxVm4bdEG3h96375MBvxZJ
	lza3CL5AZXTJw5iGs4CI9w+rS4c8l9gdOThafWOu9rTf8PfI5ZLb2ulYekxx5APlpDlZc/zHAkMrH
	BJrp31Q91u9SECopvxoDN+u61GGja/bpY4htTuvxhP4r5UohsmHoGlEV2x2Uj2yd/mVs28nZLcLoW
	AoI46AD5ffK2x6S0tkGWcCXkix9H+nKxpUNf4P+bmr0i0BvPH9ouJXduPs29rKhO9+5OSKlC2Wwhd
	lKtg0OLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7w67-0000000E6Uf-1Eie;
	Thu, 24 Apr 2025 12:54:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7uPd-0000000DnSG-0Ity
	for barebox@bombadil.infradead.org;
	Thu, 24 Apr 2025 11:06:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=7srl2BvhtmgSbagK3VBtcEslQfmSua0xPu71oQWNoJ4=; b=MACEylVfb9XPulMSV+A46Ec4lN
	8/VfQ6czjg8DMdQDwMe3yePTGotKnio65qqjTV9nPLQQTqGfjMFA0T7pEu05Owlr3zetdd1GdhM40
	HQKt5MQDIl86pFExWITsge09SWdMCuAAZnD+sAKEgC9xjdLzHAwnLpV9awijG3cvr5pGKJy4tD5/H
	SW3QHm6jdYhywFThWZYeefZrLriKb0L5rTIVOPLhKOkAezuwTefh6zgA7lFPQTRPxf5zILiNyq2gG
	FjoUh7QVCIRoH+QeF4Z1D7s63Tm7spkjKwy82GKcN5mJoMAGC3Yu/93lh8Hs30jIb+Nl6mg4Ytc4v
	Ue/+bIDg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u7uPa-0000000BlDN-1Dx4
	for barebox@lists.infradead.org;
	Thu, 24 Apr 2025 11:06:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u7uPY-0001Bu-KY; Thu, 24 Apr 2025 13:06:32 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u7uPY-001sBn-1Q;
	Thu, 24 Apr 2025 13:06:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u7uPY-00GXx3-15;
	Thu, 24 Apr 2025 13:06:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 24 Apr 2025 13:06:30 +0200
Message-Id: <20250424110631.3943702-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_120634_445708_852F9FD6 
X-CRM114-Status: GOOD (  11.33  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] Documentation: user: versioning: fix formatting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Apparently, Sphinx is space sensitive in literal ``blocks`` and
currently interprets <space>`` literally and doesn't end the literal
then.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/versioning.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/versioning.rst b/Documentation/user/versioning.rst
index 0c3001b97433..0a8095a2e085 100644
--- a/Documentation/user/versioning.rst
+++ b/Documentation/user/versioning.rst
@@ -9,7 +9,7 @@ information:
 
   * When built from git, ``scripts/setlocalversion`` will factor in
     git revision information into the version string.
-  * The ``EXTRAVERSION = `` in the top-level ``Makefile`` can be used
+  * The ``EXTRAVERSION =`` in the top-level ``Makefile`` can be used
     to add a suffix to the version. This is useful if patches are applied
     on top of the tarball release.
   * The build host can set the ``BUILDSYSTEM_VERSION`` environment variable
-- 
2.39.5



