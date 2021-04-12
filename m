Delivery-date: Mon, 12 Apr 2021 09:19:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqf-0003gS-Gw
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 09:19:05 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqe-0004yi-8f
	for lore@pengutronix.de; Mon, 12 Apr 2021 09:19:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a701fH2Vo48vRx5U86I1TFORY07ArpQnyLEa1kfunkU=; b=c05X2q1T1iwdy8TKMw2CN4QLM
	MU4V+aAG2TDhgJ8v6qZ+JEwnDv5/jcDzXdyS8JuUx+We9kzygVwKoWaZhAg7IomNnA5rdMw26faGK
	s0dZkZnT6kH9rp0vpnLoZKRFlTN8MSDNS/yBehih8lRJZ64aJ+fmuwPOo9T02Tf2iBZwkYF5MIkKh
	dnOFZR/sgm+brv+k+CSsiFIF1mp0Qxb1KxBCjpBbvAizJolpMilb9OKk5atTHM+FSowdmcal9ZAjt
	AizNEogfvKSjQKnO9HO/o96zlVMBteOu2fbvA0010AHVtBHukukSeI3PnOzDqFhQ566A5lpE7/DZM
	Fa3j3GRXA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVqpZ-005wBB-J1; Mon, 12 Apr 2021 07:17:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqon-005vve-6F
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 07:17:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=iIP4DyJ3yGXPieHn3lBvjKkLrLqiaxSMww8+8C2geXQ=; b=nLy0ZBd5bkGDlj40/Iv7OP2NQV
 W7P8OJjEZ1snqIWITvEn+j1b80L1GmGfQaJpI4ZlOXkT3LPBQUzEWgGYJ6h97QboNQcsDHjLTFwGc
 cvNmGTld35Z8uUlpp7liRr0/z3BUhlh1D8I25HZ+Epqba502jYj03Zv+zmYzuOYcF70xagBXJuNwo
 17Fldh9x18P5qaY6ws8dVPQMVColXsquUySy/D2N9SS4CYeMWU6pCknKgXzNxStYx2oAf5ee05MwL
 TQjfpCKsnHLW2c/NmtFPmQI0HPuIt+HJy4GAx/y6qRXufIVRy/v4JwNqsCG5jutF9mw9KduwDgxdf
 LtxIqHBw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqoj-005vHE-TS
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 07:17:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoa-0004HJ-Iq; Mon, 12 Apr 2021 09:16:56 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoZ-0002fe-9W; Mon, 12 Apr 2021 09:16:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Apr 2021 09:16:41 +0200
Message-Id: <20210412071651.8769-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412071651.8769-1-a.fatoum@pengutronix.de>
References: <20210412071651.8769-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_001705_977612_33B5DF06 
X-CRM114-Status: GOOD (  10.26  )
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
Cc: Stafford Horne <shorne@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 07/17] openrisc: set default KBUILD_IMAGE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For non-multi-image configuration, KBUILD_IMAGE is taken as the image to
install. It was so far not set for openRISC. Define it, so it can be
used with the new install target. This could be later used to package
artifacts in CI.

Cc: Stafford Horne <shorne@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/openrisc/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/openrisc/Makefile b/arch/openrisc/Makefile
index 72d7fa3d53fe..1776f56df97b 100644
--- a/arch/openrisc/Makefile
+++ b/arch/openrisc/Makefile
@@ -28,3 +28,5 @@ dts := arch/openrisc/dts
 
 %.dtb: scripts
 	$(Q)$(MAKE) $(build)=$(dts) $(dts)/$@
+
+KBUILD_IMAGE := barebox
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

