Delivery-date: Thu, 16 Sep 2021 11:36:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQnot-0006cD-0x
	for lore@lore.pengutronix.de; Thu, 16 Sep 2021 11:36:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQnos-0007Cx-5t
	for lore@pengutronix.de; Thu, 16 Sep 2021 11:36:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fljVJd4XjJchPH71348gkoRnZZ40V/oizTI1mRKS0tg=; b=t+rJo5J4NQqV4k
	RnhrNk0nNbj6JCeka+Lkubmn2HEvSib6dcsx+IN8MHr7Ayz/z0GsZdi/9vMd5ewaLrBwwySwlXZHt
	ASCAn+PPc/w7mv9UzaJQkamzBDI2wUBYXVZHSlba6MQH5HfHMiSeu34TtzZka9kB8LzbF1+/BNNaq
	WNRnQUSxB1pm/bMJVw9c23osorP4qov+MJXaKyMalElHxXzaU6aTPKSSHvArvy9EMqz3WfxgcC6g8
	YUJEXRXzwtSivUiY9rDJ/QONgnSWkP6HSyUxd0YujoXJ1dV4CuR6lURo5LeTc8IQb+/arrH8NfobM
	coAqkeYfn9uQH0IYEsVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQnne-00Aid3-90; Thu, 16 Sep 2021 09:35:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQnnZ-00Aibp-0g
 for barebox@lists.infradead.org; Thu, 16 Sep 2021 09:35:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mQnnX-0006pU-RD; Thu, 16 Sep 2021 11:35:15 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mQnnX-0005Xt-Hf; Thu, 16 Sep 2021 11:35:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 16 Sep 2021 11:35:14 +0200
Message-Id: <20210916093514.21267-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_023517_095982_E469F056 
X-CRM114-Status: GOOD (  10.98  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] RISC-V: board-dt-2nd: move low level init into
 nonnaked function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The generic DT image for RISC-V mimics a kernel image and specifies
a load offset that it expects to be honoured. The stack should then
grow down from the load address. This didn't work as intended though
with riscv64-linux-gnu-gcc (Debian 10.2.1-6), because of the entry
point's __naked attribute: local variables overwrote the first bytes
of the entry point. Fix this by using a noinline nonnaked function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/boot/board-dt-2nd.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/boot/board-dt-2nd.c b/arch/riscv/boot/board-dt-2nd.c
index f31c48a906c2..8b78e1b11d31 100644
--- a/arch/riscv/boot/board-dt-2nd.c
+++ b/arch/riscv/boot/board-dt-2nd.c
@@ -40,7 +40,8 @@ static const struct fdt_device_id console_ids[] = {
 	{ /* sentinel */ }
 };
 
-ENTRY_FUNCTION(start_dt_2nd, hartid, _fdt, a2)
+static void noinline __noreturn start_dt_2nd_nonnaked(unsigned long hartid,
+						      unsigned long _fdt)
 {
 	unsigned long membase, memsize, endmem, endfdt, uncompressed_len;
 	struct fdt_header *fdt = (void *)_fdt;
@@ -75,3 +76,8 @@ ENTRY_FUNCTION(start_dt_2nd, hartid, _fdt, a2)
 
 	barebox_riscv_supervisor_entry(membase, memsize, hartid, fdt);
 }
+
+ENTRY_FUNCTION(start_dt_2nd, hartid, _fdt, a2)
+{
+	start_dt_2nd_nonnaked(hartid, _fdt);
+}
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

