Delivery-date: Fri, 15 Nov 2024 14:53:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBwl9-002Gge-32
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 14:53:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBwl9-0005st-B2
	for lore@pengutronix.de; Fri, 15 Nov 2024 14:53:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vTq0vl7CqiVS+ZEAG11leTzk6IL6rRFjtCWbtjB3cXs=; b=2X90QYqIZ50yDVaO892dWD4r2S
	p1ZfwmTrNghGObImeMVoWe+bf3TMLRWeyoAn86RD3AK3NVXoKwoGzrvRFm+N2w52J1oFLZn/3Mh5A
	UyciwqXQMKwFQ9GJxb01sHHWL/zEANJ2VoJyTW2XlGoNK2f/MF+54keV/hgPO8emw1mgHTaPMPTP/
	sWkKuzYFFdF537mXVfKoB/nJktyPxxO6+RA02FtVeY6IXU9H+3AAjoq3tV1DpNwDFof7f2Y/lNeuO
	B9ua9SKceXEX1cWyJB0rkX1/SJwqySVhpT/XSzH/+0CiaFmYA8t2be+Yh9rCvD+Z6mVySlh5ecx37
	fh56dbeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBwkh-00000002tlr-37nf;
	Fri, 15 Nov 2024 13:52:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBwkf-00000002tlG-1mth
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 13:52:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBwkd-0005lN-QW; Fri, 15 Nov 2024 14:52:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBwkd-000uqW-1V;
	Fri, 15 Nov 2024 14:52:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBwkd-005FdE-1D;
	Fri, 15 Nov 2024 14:52:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Stefano Manni <stefano.manni@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 15 Nov 2024 14:52:42 +0100
Message-Id: <20241115135242.1251691-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_055245_462246_207C7E54 
X-CRM114-Status: GOOD (  11.65  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] remoteproc: use I/O memory variants of memcpy/memset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Reserved memory is unmapped strongly ordered in barebox and calling
normal optimized memcpy on may trigger an abort due to misalignment.

Fix this by using the slower I/O variants of memcpy/memset, which are
do not expect bufferable memory like the optimized variants and thus
don't cause unaligned accesses.

Fixes: 66e233b8c04b ("ARM: mmu64: map reserved regions uncached")
Reported-by: Stefano Manni <stefano.manni@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/remoteproc/remoteproc_core.c       | 2 +-
 drivers/remoteproc/remoteproc_elf_loader.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 7590c1f9305b..17159316ee31 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -75,7 +75,7 @@ static int rproc_firmware_write_buf(struct firmware_handler *fh, const void *buf
 		return -ENOMEM;
 	}
 
-	memcpy(rproc->fw_buf + rproc->fw_buf_ofs, buf, size);
+	memcpy_toio(rproc->fw_buf + rproc->fw_buf_ofs, buf, size);
 	rproc->fw_buf_ofs += size;
 
 	return 0;
diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
index f3bf93df2c4a..740ce8765165 100644
--- a/drivers/remoteproc/remoteproc_elf_loader.c
+++ b/drivers/remoteproc/remoteproc_elf_loader.c
@@ -70,7 +70,7 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
 
 		/* put the segment where the remote processor expects it */
 		if (phdr->p_filesz)
-			memcpy(ptr, elf_data + phdr->p_offset, filesz);
+			memcpy_toio(ptr, elf_data + phdr->p_offset, filesz);
 
 		/*
 		 * Zero out remaining memory for this segment.
@@ -80,7 +80,7 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
 		 * this.
 		 */
 		if (memsz > filesz)
-			memset(ptr + filesz, 0, memsz - filesz);
+			memset_io(ptr + filesz, 0, memsz - filesz);
 	}
 
 	return ret;
-- 
2.39.5



