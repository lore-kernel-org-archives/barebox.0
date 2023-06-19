Delivery-date: Mon, 19 Jun 2023 16:39:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBG2J-00DIFW-Cf
	for lore@lore.pengutronix.de; Mon, 19 Jun 2023 16:39:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBG2G-0003Dy-KF
	for lore@pengutronix.de; Mon, 19 Jun 2023 16:39:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=K7FhJ+9o19mPs6TKKZ7Wqdq+k3wjGE6fcHEnzMMRV08=; b=nj2LxiHTlseqF0bQ75OH+i9nx9
	CuMpjkxhxSu9jhyKP0XAW3FUrxEBhzKBeIY0oG+kWCt9Hy0S35AFcdinSPEHDiOFapqyxZASJiwVS
	L8uQklKqcFLe5XtKofzA2rLq85cbOlQqXggAsRFFlcVOEWjnE58ZH8W2rKcFA6KtVeLcDtGTuywzE
	557O/KRQGizx4YZebka7pIo8m+r/IHgsI3zuvW6B9qXW08+ZwfY04+UyWqpK8P+4eICw2vqcV5Kiq
	DLWaVtL0Ehqvey+WpAG4mzfWqekwK9uLd2Sr0EMa4jps1wCIuZSB5hOHwsIXH9DtGIgd+5rCD0yLv
	cbKj/VWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBG0p-008exE-2N;
	Mon, 19 Jun 2023 14:37:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBG0n-008ewm-0x
	for barebox@lists.infradead.org;
	Mon, 19 Jun 2023 14:37:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qBG0l-00033R-NI; Mon, 19 Jun 2023 16:37:43 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qBG0l-008XF6-2F; Mon, 19 Jun 2023 16:37:43 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qBG0k-0078iI-2r;
	Mon, 19 Jun 2023 16:37:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Jun 2023 16:37:42 +0200
Message-Id: <20230619143742.1698346-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_073745_332076_35DDBB8C 
X-CRM114-Status: UNSURE (   8.51  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH RFT] blspec: support boot /dev/disk0.rootfs to mean boot disk0.rootfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

boot /dev/disk0.rootfs would always fail:

  Nothing bootable found on '/dev/disk0.rootfs'
  Nothing bootable found

boot /mnt/disk0.rootfs and boot disk0.rootfs would however work.
This can be surprising to users, so just skip over /dev if supplied.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
I am not sure why this wasn't the case before. Any ambiguity in doing it
this way? Change still needs to be tested.
---
 common/blspec.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/blspec.c b/common/blspec.c
index 8c7970da8915..b70332a54c28 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -782,6 +782,9 @@ int blspec_scan_devicename(struct bootentries *bootentries, const char *devname)
 
 	pr_debug("%s: %s\n", __func__, devname);
 
+	/* Support both boot /dev/disk0.rootfs and boot disk0.rootfs */
+	devname += str_has_prefix(devname, "/dev/");
+
 	device_detect_by_name(devname);
 
 	cdev = cdev_by_name(devname);
-- 
2.39.2



