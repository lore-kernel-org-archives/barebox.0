Delivery-date: Sat, 19 Mar 2022 12:04:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVWsx-00GfY4-Qy
	for lore@lore.pengutronix.de; Sat, 19 Mar 2022 12:04:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVWsy-0003W7-4J
	for lore@pengutronix.de; Sat, 19 Mar 2022 12:04:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIjPLBCZsT4nlaTxSefXRkLWavOmR2eHKqosD4AN8Mw=; b=oeC9jXTMxKGthb
	XR74eKCfy5dZP9vRldJm+saJ3ISYZJs9Rv8SzFSNhQcaC839IQ7F4SWhz0UrU/ZFUF2kDbI5S0uRw
	1MiNKbdx2q8N+MyjcFvAAnbUJqOZaMKdtibc3A6W9N42AoNp66AAfJtWk2LvwdzVYlUBUVsQuMu2h
	HgiUEJkaSa4A4CWhKS47EWYdCByOIx4XWCLysCSRcfeYbpIwk3kFHr/nul1395/VVw0Vwzxd+xk8g
	oZecu4K5/IbkO5XQfI1C32BdAuXvFMREl7PXTRhfmZJWJ3I8j+4/pkYUmRZ7l7q4CJFe9xQpblKwP
	6lXTs4VeSf2WxbcaqAAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVWrg-003bXl-81; Sat, 19 Mar 2022 11:03:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVWra-003bVg-PH
 for barebox@lists.infradead.org; Sat, 19 Mar 2022 11:03:16 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nVWrB-0003Cq-Hr; Sat, 19 Mar 2022 12:02:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nVWr9-00Bxqx-AQ; Sat, 19 Mar 2022 12:02:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 19 Mar 2022 12:02:43 +0100
Message-Id: <20220319110246.2850396-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220319110246.2850396-1-a.fatoum@pengutronix.de>
References: <20220319110246.2850396-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_040314_866615_1295D1A2 
X-CRM114-Status: GOOD (  13.75  )
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
Subject: [PATCH master 3/6] usb: gadget: mass-storage: fix clean up of file
 descriptors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When encountering an issue during bind time, we currently close
only the last opened file descriptor, leaking others when more
than one LUN was registered. Fix this.

Fixes: 57313f83e83e ("usbgadget: add support for USB mass storage gadget")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/f_mass_storage.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/gadget/f_mass_storage.c b/drivers/usb/gadget/f_mass_storage.c
index 753042125d14..a49ac7803337 100644
--- a/drivers/usb/gadget/f_mass_storage.c
+++ b/drivers/usb/gadget/f_mass_storage.c
@@ -2419,7 +2419,7 @@ static int fsg_common_init(struct fsg_common *common,
 	struct usb_gadget *gadget = cdev->gadget;
 	struct file_list_entry *fentry;
 	struct fsg_buffhd *bh;
-	int nluns, i, fd = -1, rc;
+	int nluns, i, rc;
 
 	ums_count = 0;
 
@@ -2436,17 +2436,20 @@ static int fsg_common_init(struct fsg_common *common,
 	file_list_for_each_entry(ums_files, fentry) {
 		unsigned flags = O_RDWR;
 		struct stat st;
+		int fd;
 
 		if (fentry->flags) {
 			pr_err("flags not supported\n");
-			return -ENOSYS;
+			rc = -ENOSYS;
+			goto close;
 		}
 
 		fd = open(fentry->filename, flags);
 		if (fd < 0) {
 			pr_err("open('%s') failed: %pe\n",
 			       fentry->filename, ERR_PTR(fd));
-			return fd;
+			rc = fd;
+			goto close;
 		}
 
 		rc = fstat(fd, &st);
@@ -2543,7 +2546,8 @@ error_release:
 	common->state = FSG_STATE_TERMINATED;	/* The thread is dead */
 	fsg_common_release(common);
 close:
-	close(fd);
+	for (i = 0; i < ums_count; i++)
+		close(ums[i].fd);
 	return rc;
 }
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

