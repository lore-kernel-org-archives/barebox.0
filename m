Delivery-date: Tue, 19 Nov 2024 09:57:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDK2r-003lb3-2H
	for lore@lore.pengutronix.de;
	Tue, 19 Nov 2024 09:57:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tDK2r-0003J9-3K
	for lore@pengutronix.de; Tue, 19 Nov 2024 09:57:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=n+MTVv2kp121dAsmBqaJbsWI+7ujhiCu/xBZ+7LKzTM=; b=elj52BTi9/r63oNoguPALqckrQ
	PXh37mv+WscHOi5Mm8rJhpETR8lMFrU6Ehbu2nkCMqDI3lOBzQ7LEiE6ucm1a8Hv6UQjuRqelL9Nx
	1yG0Flix/0EwJuqAir6hS7rzAuUZMFZanWT5MGc/RvTHfzQoHA7k5HzsPyQEgWaXQjgrEYrCn+R3p
	HPSqWIP/t1na+BHxiF6fTY2/6qRjzgzGwD1cmwzmn3vM1AyZP8HStvof5m/lUq8qzVdgQXaLzmiwh
	F0hE4XDP/8l3cvirY06xVc54c9XP3C0uOQRYdrLVZP4OdD5g/NrN/Ey6GGY0kyy2+rERCJ0phcoI2
	7stc01kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDK2R-0000000BobH-0V6z;
	Tue, 19 Nov 2024 08:56:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDK2O-0000000BoaN-23ZO
	for barebox@lists.infradead.org;
	Tue, 19 Nov 2024 08:56:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDK2M-00039b-Ic; Tue, 19 Nov 2024 09:56:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDK2M-001XD7-1F;
	Tue, 19 Nov 2024 09:56:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tDK2M-00Au31-0x;
	Tue, 19 Nov 2024 09:56:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Stefano Manni <stefano.manni@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Nov 2024 09:56:40 +0100
Message-Id: <20241119085641.2598035-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_005644_527148_1C7A6752 
X-CRM114-Status: GOOD (  11.37  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] remoteproc: elf_loader: skip segment with memsz as zero
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Peng Fan <peng.fan@nxp.com>

Per elf specification,
p_filesz: This member gives the number of bytes in the file image of
the segment; it may be zero.
p_memsz: This member gives the number of bytes in the memory image
of the segment; it may be zero.

There is a case that i.MX DSP firmware has segment with PT_LOAD and
p_memsz/p_filesz set to zero. Such segment needs to be ignored,
otherwize rproc_da_to_va would report error.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
Link: https://lore.kernel.org/r/20220413033038.1715945-2-peng.fan@oss.nxp.com
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
[ahmad: ported from Linux commit f340d5a19dc76c6b29eeb23537fd7345611e9117]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/remoteproc/remoteproc_elf_loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
index 740ce8765165..8f6f6d0bfa8d 100644
--- a/drivers/remoteproc/remoteproc_elf_loader.c
+++ b/drivers/remoteproc/remoteproc_elf_loader.c
@@ -40,7 +40,7 @@ int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw)
 		u32 offset = phdr->p_offset;
 		void *ptr;
 
-		if (phdr->p_type != PT_LOAD)
+		if (phdr->p_type != PT_LOAD || !memsz)
 			continue;
 
 		dev_dbg(dev, "phdr: type %d da 0x%x memsz 0x%x filesz 0x%x\n",
-- 
2.39.5



