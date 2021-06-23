Delivery-date: Wed, 23 Jun 2021 07:19:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvHw-0005Hu-I3
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 07:19:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvHu-0007ix-Dp
	for lore@pengutronix.de; Wed, 23 Jun 2021 07:19:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+roxfcrVLmol+4w95Fvc+AXbPKrZTl7IXBkGEqYThqM=; b=Dn+tJmddMAxAlY
	zGSOmu3YFOdW6oYHGvOv+x/mFkM0pQjNbp9l9vsWfyaJjz171595vkhmvUbyJbwveHGNtH3JcTQJP
	41tTjMhItCcALf1m4ED5WK6Pb4mebTc4DOVpzGII+fZstOXBv527zjbVontn/Bfz2lk4Vi5SRuSXN
	JgmVRlb54qC7MVC3rDkxtC3LWBTEHsIS1wzhVKo/fEvl2PwloHw+eBAKWOXfhWaL/CWyPqld+s5f9
	JXmp+uKtajX6pVzZZU3Eot7Fq1lsqGj4I3A+7+CgWKuwMjiXOB0IxhNur8Qj8yPWzbDtVzeSEfvxl
	INyszg1tXzt24IKihCmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvvGc-009N0r-3x; Wed, 23 Jun 2021 05:17:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvvFl-009MUK-CW
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 05:16:46 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFc-0006rJ-14; Wed, 23 Jun 2021 07:16:36 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFa-0000TH-Ti; Wed, 23 Jun 2021 07:16:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Jun 2021 07:16:23 +0200
Message-Id: <20210623051632.30253-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210623051632.30253-1-s.hauer@pengutronix.de>
References: <20210623051632.30253-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_221645_574996_EB11CB45 
X-CRM114-Status: GOOD (  11.54  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/17] blspec: Set firmware searchpath
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When bootloader spec triggers dt overlay loading then this might
also trigger loading firmware. This firmware should be looked for
relative to the filesystem providing the bootloader spec files,
so add that to the firmware search path.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/common/blspec.c b/common/blspec.c
index 056c0dbf7f..c39805cb0b 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -122,6 +122,8 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	const char *abspath, *devicetree, *options, *initrd, *linuximage;
 	const char *overlays;
 	const char *appendroot;
+	const char *old_fws;
+	char *fws;
 	struct bootm_data data = {
 		.dryrun = dryrun,
 	};
@@ -184,9 +186,20 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 			(entry->cdev && entry->cdev->dev) ?
 			dev_name(entry->cdev->dev) : "none");
 
+	old_fws = firmware_get_searchpath();
+	if (old_fws && *old_fws)
+		fws = basprintf("%s/lib/firmware:%s", abspath, old_fws);
+	else
+		fws = basprintf("%s/lib/firmware", abspath);
+	firmware_set_searchpath(fws);
+	free(fws);
+
 	ret = bootm_boot(&data);
 	if (ret)
 		pr_err("Booting failed\n");
+
+	firmware_set_searchpath(old_fws);
+
 err_out:
 	free((char *)data.oftree_file);
 	free((char *)data.initrd_file);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

