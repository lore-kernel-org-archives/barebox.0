Delivery-date: Wed, 10 Mar 2021 14:30:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyup-0001TB-DS
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:30:19 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyuj-0004MH-Dj
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:30:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mgyYOKa8txgmkZM9ECMx4bK+emhAr53v8gMrPI9VoUA=; b=PJ5eaw/7ZhzBvRZZGatZelRlq
	Y3+xfAfb9MNVxVKU6m9IzfCUnBUknbRWWqohyONRLX2GGaMu+I7lk/zY/8bZIkjucAbgPOnfpjS06
	4WfekURp0KmCdFBijjeH9giDgJtUjIf/AZD04sjFfprwGbg5ELEsv/5yhPLYtTX3+WYMnXTIMa867
	d4uyMtX5SdnsOA+TRx7DOY+MdIdWFAhCyDUh7mOHzVWITYm9cEkp5HHp/SoMntxOd0Abds9hnDtjY
	jr3RKAFbW6pH9JMLrRjhu7zPJtnTd9VsXWS+/+41WLgktPe7+ek1pqHRHDSBbQ0u+Twbc14a3xxqx
	bbx75YrmA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJyth-006v3M-Pc; Wed, 10 Mar 2021 13:29:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJyt9-006unO-Cg
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:28:39 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fp-Lk; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006c8-Kp; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:20 +0100
Message-Id: <20210310132829.7662-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310132829.7662-1-s.hauer@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132835_478291_99D05341 
X-CRM114-Status: GOOD (  11.17  )
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
Subject: [PATCH 08/17] blspec: Set firmware searchpath
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When bootloader spec triggers dt overlay loading then this might
also trigger loading firmware. This firmware should be looked for
relative to the filesystem providing the bootloader spec files,
so add that to the firmware search path.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/common/blspec.c b/common/blspec.c
index b6f91e3114..14e3238c0f 100644
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
@@ -184,9 +186,17 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 			(entry->cdev && entry->cdev->dev) ?
 			dev_name(entry->cdev->dev) : "none");
 
+	old_fws = firmware_get_searchpath();
+	fws = basprintf("%s/lib/firmware:%s", abspath, old_fws);
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

