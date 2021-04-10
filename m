Delivery-date: Sat, 10 Apr 2021 12:50:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBC8-00011t-FS
	for lore@lore.pengutronix.de; Sat, 10 Apr 2021 12:50:28 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBC7-0000GG-Na
	for lore@pengutronix.de; Sat, 10 Apr 2021 12:50:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ldqX6DO70NmIIp2so5GAdILqD5HGh0M9qkTfSHYlrUg=; b=hqpKGTuFdhXnOC8OowScSTIDo
	m19RbQTIlzQTBOA7cSGZBD8bQLsQjruXc2ebx21VrTlbxkdYLFIe61RS320kVSiYxIAWW2RlB14Xo
	pFhtZHDvNdJwJWrE+PdQ/pujoTNNFb4Pa9m6n0/N89VU/Sy4GL3vOqTiZrkeREMZqjaruDWNs9J7N
	YoRteKtkvQEYYG9wXbGe38O60vJnTid/FSEiidRMQTCJXImb1uBWZ1umqidoQkV4Zfly9q+XYlevA
	m5MOUrMFgx3WcWoAGrubpOCBbBlqOF5oHy6oRVVB/uODyw8H33eNIk3HiX77dPGv9fv+pLmTh9Kt4
	JSialMxOQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVBBE-002glD-Rv; Sat, 10 Apr 2021 10:49:32 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVBB2-002gk9-F5
 for barebox@desiato.infradead.org; Sat, 10 Apr 2021 10:49:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=9No3/j1lBQ7vnYX5mLFz3kuf6Or/Y9+Jdx/mmLR7N5o=; b=Pf7FFb/6tlL16S2KA0o5s+vSQf
 V8Oubb1ZOLP9w72s3nvJ3+MPfexLT+6ux2oiYKEcP87XrIXEmJL8sdTrH1kAF2/Uv0u+zV9oacMoh
 mxsUKvvoKDFX7v3q2rLWTy2XVPsqH82VtnT5Mj76a66+z6LO+zwRru69pj6nDqUESEfZNgZJHnsMO
 9JVzXJEJZ43HU/D6OJFPm/S0/j52qLRFXE+3H15w8E26Z8qz6rzuWpjUBuyjExG6MGcrpK5da1tgJ
 NkqY+OZrE/bE0WCh9Eb2qswJEM8e/j4674KIqJjV5mf5Drd6yykRIOcxP+7GMcHPo8H+W3yI/0GrK
 un9peA5g==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVBB0-0052lT-1N
 for barebox@lists.infradead.org; Sat, 10 Apr 2021 10:49:19 +0000
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 4DBF3200007;
 Sat, 10 Apr 2021 10:49:16 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 10 Apr 2021 12:49:11 +0200
Message-Id: <20210410104911.2079451-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210410104911.2079451-1-ahmad@a3f.at>
References: <20210410104911.2079451-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_034918_231050_A38202D2 
X-CRM114-Status: UNSURE (   7.87  )
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
Subject: [PATCH master 2/2] virtio: pci: remove inaccurate comment on 64-bit
 bar addr incompatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

pci_iomap returns the bar base address, which can already be > 4G on
barebox. The comment originates from U-Boot, where indeed only the lower
32-bit are read. We don't have this limitation and qemu -M q35 places
bars for VirtIO devices at >= 0x8_0000_0000 and they worked correctly,
so drop the inaccurate comment.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/virtio/virtio_pci_modern.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/virtio/virtio_pci_modern.c b/drivers/virtio/virtio_pci_modern.c
index 180c14771aad..d828bee69e62 100644
--- a/drivers/virtio/virtio_pci_modern.c
+++ b/drivers/virtio/virtio_pci_modern.c
@@ -335,13 +335,6 @@ static void __iomem *virtio_pci_map_capability(struct pci_dev *dev, int off)
 	offset = off + offsetof(struct virtio_pci_cap, offset);
 	pci_read_config_dword(dev, offset, &offset);
 
-	/*
-	 * TODO: adding 64-bit BAR support
-	 *
-	 * Per spec, the BAR is permitted to be either 32-bit or 64-bit.
-	 * For simplicity, only read the BAR address as 32-bit.
-	 */
-
         return pci_iomap(dev, bar) + offset;
 }
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

