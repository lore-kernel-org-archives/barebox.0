Delivery-date: Thu, 22 Dec 2022 15:47:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8Mqe-0051yh-Og
	for lore@lore.pengutronix.de; Thu, 22 Dec 2022 15:47:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8Mqc-0000yY-3T
	for lore@pengutronix.de; Thu, 22 Dec 2022 15:47:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7unBFeY1cqm1OS9MbSkK/zLJ8N77RNzz810MzxkxznI=; b=R09GPPfgeZnDXhvjo0jw13lebp
	XA246CTADPUBMjHb9WTCQbVujKDkc05W4tAD4Doqlsgt9gyh3+MCzx6WTKNE+1SR1OLlgrhfJqntp
	lcOg11ZtPbaTUDCdlqQpcjRBz+Crwdu8snU+AabzIbgRMhL9DP61W7iec9iEXRLFjkIN2gJxc7poI
	4qSgQKWQp40RPdiWPPIPA8DwCn8KwDz/c9EdBK8aHDHuGsJBd/eLrxSR4x6sTDH9LZWDtBjSdSF/o
	Vzq+a7COhkQEAEP32T9vm9ObA6bjyceOBidW9CvEfu6nmHBNzJKKEkQYakg0OfIB7Rr3+5chZzNkf
	WOnnV7OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mos-00D7Vj-Og; Thu, 22 Dec 2022 14:45:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8KD9-00BcIf-Qb
	for barebox@lists.infradead.org; Thu, 22 Dec 2022 11:58:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p8KD4-0003MX-3G; Thu, 22 Dec 2022 12:58:02 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p8KD3-000zwy-Fp; Thu, 22 Dec 2022 12:58:01 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p8KD2-003b0X-QA; Thu, 22 Dec 2022 12:58:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Dec 2022 12:57:59 +0100
Message-Id: <20221222115759.855209-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_035807_968001_55FD2121 
X-CRM114-Status: UNSURE (   7.75  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] video: vpl: don't print only skipped vpl endpoints
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The remote_vpl->ioctl is within a loop and every time an iteration is
skipped, a debug line is printed, but no debug line is printed when the
loop actually finds a remote_vpl to call its ioctl callback.

Make this debugging code more useful by adding a debug print in the
latter case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/vpl.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/vpl.c b/drivers/video/vpl.c
index f94bd4a3e2f3..6d6786168114 100644
--- a/drivers/video/vpl.c
+++ b/drivers/video/vpl.c
@@ -93,6 +93,7 @@ int vpl_ioctl(struct vpl *vpl, unsigned int port,
 			continue;
 		}
 
+		pr_debug("%s: looked up %s: %pS\n", __func__, remote->full_name, remote_vpl->ioctl);
 		ret = remote_vpl->ioctl(remote_vpl, remote_port_id, cmd, ptr);
 		if (ret)
 			return ret;
-- 
2.30.2



