Delivery-date: Wed, 22 Sep 2021 11:12:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSyIt-0001BZ-PW
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 11:12:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSyIs-0003BU-Ri
	for lore@pengutronix.de; Wed, 22 Sep 2021 11:12:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Rti0BoKY9YUDB/3kh2rVfnVMBcNJ9B7XzTQuX/RrrI=; b=EtxcOqDFl8q5kL
	35yBJ+e20Xn4ltV+D/Cehz99kOdbWPl2zWiNOPqCPAi80KHSes/BWTYwpr5AiUmFvGVhekd/xjQWV
	AhAqx5l9GOLKE19z/tyzf5X1koxpSiimG5SCNSTr/jAB67TSrty5k0vnhtVYGUydJMrHpKGLcUyJ2
	wRVwn/Ok/K5ULaRLP/kXzaX4TeUWq+pWEW4hnegnzNV+3pcnzOMk0aNQNBh9/cbz/d7YDsZcIbS93
	no48ThdzoSNPg/DMEJ44U2H28DkkPElUWHJVWvW/QO+v1FQ/q4wTs/4mAlTSqsses6KnmYbYysnbS
	0IeQpk6ZZOKACEi6JdHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSyGC-007XV6-HH; Wed, 22 Sep 2021 09:09:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSyG7-007XUh-Q1
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 09:09:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSyG5-0001tM-MF; Wed, 22 Sep 2021 11:09:41 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSyG5-0004hm-Du; Wed, 22 Sep 2021 11:09:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Sep 2021 11:09:40 +0200
Message-Id: <20210922090940.18002-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_020943_887657_64FD54C2 
X-CRM114-Status: GOOD (  10.18  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] power: reset: nvmem-reboot-mode: disable device tree
 fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixing up the nvmem reboot device tree node is problematic, because it
contains a phandle to another node. Take the easy way out for now and
expect user to provide matching reboot-mode nodes in both kernel and
barebox device tree manually.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/power/reset/nvmem-reboot-mode.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/power/reset/nvmem-reboot-mode.c b/drivers/power/reset/nvmem-reboot-mode.c
index b82b37d642e7..2086e96400bb 100644
--- a/drivers/power/reset/nvmem-reboot-mode.c
+++ b/drivers/power/reset/nvmem-reboot-mode.c
@@ -57,6 +57,14 @@ static int nvmem_reboot_mode_probe(struct device_d *dev)
 	nvmem_rbm->reboot.write = nvmem_reboot_mode_write;
 	nvmem_rbm->reboot.priority = 200;
 
+	/*
+	 * Fixing up the nvmem reboot device tree node is problematic, because it
+	 * contains a phandle to another node. Take the easy way out for now and
+	 * expect user to provide matching reboot-mode nodes in both kernel and
+	 * barebox device tree manually.
+	 */
+	nvmem_rbm->reboot.no_fixup = true;
+
 	magicbuf = nvmem_cell_read(nvmem_rbm->cell, &len);
 	if (IS_ERR(magicbuf) || len != 4) {
 		dev_err(dev, "error reading reboot mode: %pe\n", magicbuf);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

