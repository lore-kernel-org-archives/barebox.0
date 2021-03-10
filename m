Delivery-date: Wed, 10 Mar 2021 14:30:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyuX-0001S7-Eh
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:30:01 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyuW-0004F5-4n
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:30:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iwQM1LB1lmAVoDlz+YrxMDK6lO4z1YwhchJY7933fQ8=; b=RBcdLz+I4cdMSkpKoxB3tL3H1
	QvKeqq6Jm0ClDoYVNdoCC+NNfb8bT6Q1I+XbCQ1+h8jl1fR95HH7rjz52bONZhRyZPjNATRiIdWK5
	znB5YKqlSXjBbZYTIkCA4fRM+jEZj9y7YixN7+Dc1UytycSmmvHjycJty4jUEMxoUe2HEBkjkiHCS
	rdaHDfyMJfKwKLQN4ogYcyjCvWVMUXDzCU2ts39aVQNZ4jwXNBwbDGjdMsZeSWYGY8Not5IYWp1SD
	prG6XWcvtq0x83YYYbr6UU94FwZyr1z0YuSz5nC2riDRwZiaf2sLoPwfBS/udKeRpKbaygYfIgfNJ
	tDWNWZ8HQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJytQ-006uuG-Tt; Wed, 10 Mar 2021 13:28:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJyt9-006unT-H5
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:28:39 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fv-Ny; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006cR-NG; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:26 +0100
Message-Id: <20210310132829.7662-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310132829.7662-1-s.hauer@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132835_709825_E69FADEE 
X-CRM114-Status: GOOD (  11.25  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 14/17] blspec: Apply overlays from rootfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This sets the overlay search path to $BOOT/overlays during starting
an bootloader spec entry with the effect that overlays from there
can be applied.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index fd3e088920..ded149d715 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -75,8 +75,8 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	const char *abspath, *devicetree, *options, *initrd, *linuximage;
 	const char *overlays;
 	const char *appendroot;
-	const char *old_fws;
-	char *fws;
+	const char *old_fws, *old_ovld;
+	char *fws, *ovld;
 	struct bootm_data data = {
 		.dryrun = dryrun,
 	};
@@ -139,6 +139,11 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 			(entry->cdev && entry->cdev->dev) ?
 			dev_name(entry->cdev->dev) : "none");
 
+	old_ovld = of_overlay_get_dir();
+	ovld = basprintf("%s/overlays", abspath);
+	of_overlay_set_dir(ovld);
+	free(ovld);
+
 	old_fws = firmware_get_searchpath();
 	fws = basprintf("%s/lib/firmware:%s", abspath, old_fws);
 	firmware_set_searchpath(fws);
@@ -151,6 +156,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	if (overlays)
 		of_unregister_fixup(blspec_overlay_fixup, entry);
 
+	of_overlay_set_dir(old_ovld);
 	firmware_set_searchpath(old_fws);
 
 err_out:
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

