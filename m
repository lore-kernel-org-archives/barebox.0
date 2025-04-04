Delivery-date: Fri, 04 Apr 2025 20:24:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0liC-008MGN-1H
	for lore@lore.pengutronix.de;
	Fri, 04 Apr 2025 20:24:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0liB-0008JM-Ro
	for lore@pengutronix.de; Fri, 04 Apr 2025 20:24:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+6+tEs9JdWKp0n6ghcYkvuLsz5XQX6t3rS1okJpzKbI=; b=eE6sFlHpOgxESEqCGFhCXhfwi3
	mIy6zxNL2jtYbHtgkHYMb/baHkKKq+hIqiS21ZBBlvahAkPo5NADnHA1EgOaIebiOyITC2ltCI918
	uwICa94kexiz87oBfJnTYft7s1vRZU2pTd3jBxz9rSqgJg7gw2thXdJc3tFzKoONbVU5R7vpiytJM
	dRUwCQqAOOIu5FBLkcWVFd03mU1e+cBhWetPfE44/yba5jL8Li3RBsYubq6qLaUWRHYlBCLZvOKrW
	OnIXCTL4axq18MHMgzcpfMu8QW/r9SfMOozf4c+aCqOdrOxuAQ8E/Iz88PjzcVAgvCs6+4i21ocDJ
	CKOZrL6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0lho-0000000CWdP-38o9;
	Fri, 04 Apr 2025 18:23:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0lhk-0000000CWbU-0Wgt
	for barebox@lists.infradead.org;
	Fri, 04 Apr 2025 18:23:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lhi-00086v-Rf; Fri, 04 Apr 2025 20:23:46 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lhi-003JFP-29;
	Fri, 04 Apr 2025 20:23:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lhi-00CaV2-1q;
	Fri, 04 Apr 2025 20:23:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de
Date: Fri,  4 Apr 2025 20:23:42 +0200
Message-Id: <20250404182345.2999795-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_112348_161588_72E8077F 
X-CRM114-Status: UNSURE (   9.60  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/3] commands: devlookup: add option to print kernel root option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There exists currently no way to view the kernel root option that
barebox would generate when instructed to via global.bootm.root_dev,
but without actually mounting the file system.

Add a new devlookup -k option that can print this. This can be useful in
scripts that want to fixup the root line, so it's interpreted by the rdinit,
but not by the kernel.

This applies on top of
https://lore.barebox.org/barebox/20250401104806.3959859-1-a.fatoum@pengutronix.de/T/#t

v1 -> v2:
  - add new option to devlookup instead of findmnt as it's not really
    about mounting

Ahmad Fatoum (3):
  commands: devlookup: factor out cmd_export_val
  commands: findmnt: add support for exporting target as variable
  commands: devlookup: add option to print kernel root option

 commands/Kconfig     |  3 ++-
 commands/devlookup.c | 50 +++++++++++++++++++++++++-------------------
 commands/findmnt.c   | 31 ++++++++++++++++++++-------
 common/command.c     | 13 ++++++++++++
 include/command.h    |  2 ++
 5 files changed, 69 insertions(+), 30 deletions(-)

-- 
2.39.5



