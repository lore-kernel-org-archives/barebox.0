Delivery-date: Sat, 10 Apr 2021 12:49:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBBD-000119-TN
	for lore@lore.pengutronix.de; Sat, 10 Apr 2021 12:49:31 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBBD-00007z-3k
	for lore@pengutronix.de; Sat, 10 Apr 2021 12:49:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0R2LFC3Zc5VJ0nKNnFx3T8VKS26potqt4wpW4fgs0Gg=; b=BYKOx8GNDY6bCZSUNyMfNdjzep
	GmDzh8TNz1Wq7KBmGGVO5af3aPOVE4KX932aCoy/OhQ+vPHzTH3nbpAkxkWf9CaYHgXfU/nKSpNhj
	goyGRIHNvjmXX/eAd6rl7Yu1+Lz4oM/18sBwHsFHGS8DtYEkkKxpEXmI7zQSeIjVu485pLXreFHEz
	GhsxtdyjLBDminaVF4jHE93f3C1i45l8VL84eJjvQkuIjbhYyE2RNxeeE9rOm1NGxqSATgutKDmmh
	aNwaVJysp2L5DRzV7rQ+xvur4qMcGtBqrJ7IiR/Tg6A3k1s+jS3ZrmeGwtrfXUE8r49K+4HFKev0d
	FJQ+8MaA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVBA8-002gfm-7v; Sat, 10 Apr 2021 10:48:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVB9z-002gff-Ui
 for barebox@desiato.infradead.org; Sat, 10 Apr 2021 10:48:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=JhHidCnkGEw6VCstY+HJh4jFdIrD3Yl+oCcthGr+YIQ=; b=fwAvx403T2s7iND1frE6md2igI
 FJ2FaN8jEp8ee1VtGlFrF4yWeITkHQ58R1NQQJTkX6n7jGtTZvpKSsjzNOOTuZO5TBGreDiMRKPL8
 RIA5kDDfFzzLlsM7181IG/bMwkSdqbPzD1D9PsiWZCX/zX74Ji6+Xl7mFmFhiCkCbnhnTjBDlh77L
 +1+EjZl9/nCw3Ci0d85QhD59wUZvBRngMu5mG4o8AL3dqYFLtAgXQBMcGl7nVRQp+dpoUHTvLlAF2
 lZrUTsgejpzxWfYU9+9HgRCINJfcsR1jQZuLiHC9YiBSmkunofXRqy64LtE4knUIzQDgJpZV7ahVX
 v8XMwm+w==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVB9x-0052kL-4c
 for barebox@lists.infradead.org; Sat, 10 Apr 2021 10:48:14 +0000
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id ED355200002;
 Sat, 10 Apr 2021 10:48:10 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 10 Apr 2021 12:48:07 +0200
Message-Id: <20210410104807.2078535-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_034813_336661_7AC51908 
X-CRM114-Status: UNSURE (   6.64  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] video: bochs: pci: fix unterminated PCI device table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like other device id tables across tree, the last element is expected to
be zeroed to act as sentinel. Fix the omission.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/video/bochs/bochs_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/bochs/bochs_pci.c b/drivers/video/bochs/bochs_pci.c
index 28785e1c0667..39c4d1b662ab 100644
--- a/drivers/video/bochs/bochs_pci.c
+++ b/drivers/video/bochs/bochs_pci.c
@@ -27,6 +27,7 @@ static int bochs_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent
 static DEFINE_PCI_DEVICE_TABLE(bochs_pci_tbl) = {
 	/* https://github.com/qemu/qemu/blob/master/docs/specs/standard-vga.txt */
 	{ PCI_DEVICE(0x1234, 0x1111) },
+	{ },
 };
 
 static struct pci_driver bochs_pci_driver = {
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

