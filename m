Delivery-date: Sat, 10 Apr 2021 12:50:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBC3-00011V-GT
	for lore@lore.pengutronix.de; Sat, 10 Apr 2021 12:50:23 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBC2-0000F8-PS
	for lore@pengutronix.de; Sat, 10 Apr 2021 12:50:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jrkrh0JbzfMhV5gMr5/MLVGcIrSdWzCDJjVY1mj++gU=; b=S47qwPIMAJWgzq/y5Jo9A89h0l
	JuRbxBVA50DZLRgcCpNjDPQapP3aF2MH67azWsCOlfSILrlG/yDAzlkONLRe3uuExCKGy8Uq5vOeY
	+Ccxz1RreDpws/2km1aq4L90uwbhLvvUURwTeWnf4PxPFrKy/pKrQcA/t82LNSvH7d6a7OxyfssZn
	qtJN9Ej3ijRlyFqcBr7CgbDCmXF7e6h7ilLJp6jjzpqY3zqcWzrLFTWmg6SH7k7RxJYiFNkjBhbzt
	RzkIVaDdZoK34zPBxobBHCuiZ34YsBHHh++mf/nYTMrUV2+qRe8qY1i7eXjIMphdDblT0fUdwLDPK
	ea0q2oQQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVBBB-002gka-7Z; Sat, 10 Apr 2021 10:49:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVBB2-002gk7-7X
 for barebox@desiato.infradead.org; Sat, 10 Apr 2021 10:49:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Dgwz7Go4tX76dsg1IQAaxCUq+lOJRdjkTCAaJW8h46c=; b=wI05mp4ogK5KbIceKIqDTXxKPV
 I67IXjmTX/snb2OEQti7Zef5YuTL1vazKMOb3IzOu9t0YL7GSLHOzgSkmKOurt2P7z9mfKjO0T9UM
 /5dZ6r1nibf859uOW87pJnnnsC7f9vpT5ARMHmljwn0cOVVUJ6wrooVJvkjD+uv4YN1+5JRKbBVlI
 7S4BHn1IlF59LXm4xLm4NmD1diaz2GDsflWuLdUtNwZwnyeGHxtpgN8kNcb06Q3vIVgX+lF+IGuTJ
 r4rcviqCmZEtbe9rWgrFuAyEBi/EFVdbDev4XonJlnWdbsnb7TTbR7dei2wPFw9szxuPJ2lDus9bt
 k/lgdxtQ==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVBAz-0052lS-Ns
 for barebox@lists.infradead.org; Sat, 10 Apr 2021 10:49:19 +0000
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 94972200009;
 Sat, 10 Apr 2021 10:49:15 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 10 Apr 2021 12:49:10 +0200
Message-Id: <20210410104911.2079451-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_034917_935909_0A640318 
X-CRM114-Status: UNSURE (   8.67  )
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
Subject: [PATCH master 1/2] virtio: pci: fix 64-bit incompatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

device_len is size_t, but written by pci_read_config_dword as a u32.
Change the type to fix this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/virtio/virtio_pci_common.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/virtio/virtio_pci_common.h b/drivers/virtio/virtio_pci_common.h
index 32f0f451ab49..8f97d1218838 100644
--- a/drivers/virtio/virtio_pci_common.h
+++ b/drivers/virtio/virtio_pci_common.h
@@ -47,7 +47,7 @@ struct virtio_pci_device {
 	void __iomem *notify_base;
 
 	/* So we can sanity-check accesses. */
-	size_t device_len;
+	u32 device_len;
 
 	/* Multiply queue_notify_off by this value. (non-legacy mode). */
 	u32 notify_offset_multiplier;
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

