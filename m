Delivery-date: Tue, 16 Jan 2024 18:09:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmw0-002FQe-1j
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:09:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmw1-0007ZB-4r
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:09:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KvBw1pSzFYAESVqi/wTZlpUYRhjRbp0iAp/+VIizXbw=; b=Za3aUT5ckHDu0ajjJOoYpFuMTh
	M3KR5676/FO+CZljeepG/DtW7NzLjryQpgajmpp6qwzZ4W1sphKN9y6zsS57lLs6gfDhc7QQ9HgbC
	AEpLAofjp50ojCLXFydcMrvSi9vQPY9LricuhqX5JW/QBCM1Qt4wsKS4dbzJt23Asb6fP7+oOnODX
	TYxnyDg1L0Ak9Met5RpaJ2SrVz5EQ+AMW9OddV0fA4584PQwJOk4uSX+moooJAdeYlXCn6KgcZzkH
	vA2ErZ3p733a/RBaTQFmr921E6CMXEwNU56choAUUnJEfqi5jWHVJb8tf91I5Rw2ydx/Jo4kengGg
	KXAt6TuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmv1-00Ci7Q-2T;
	Tue, 16 Jan 2024 17:08:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmut-00Ci0J-11
	for barebox@bombadil.infradead.org;
	Tue, 16 Jan 2024 17:07:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=KvBw1pSzFYAESVqi/wTZlpUYRhjRbp0iAp/+VIizXbw=; b=lVFzQ2D/0du3ytcelqP8txkQXD
	eYN3KKguQfHGdeZfBN+MXwAapA7p4+9ri4eVsaK/MjGoZMMmlVpaqsSyKm0h5pyLfjiXRiN20GDJD
	2Bel4LW32MjK5i0cz2yfBCmjxSu81VysdpaLViuBa9JfAc3tO0CW3Vq0kmj3AEJHvt7k3DWR0/ypl
	AVniCnMzBWaXblAnP1rbmzMoXcu92nw6Bq8dHeOTgXKYkMuAkta/KiweuuG/hj+qY9P0GBmnGLW2Y
	82lJsKZpKyNzFYrXLbJ1BSqLhllmZ9EwNxptAk1smfl0TVi/rNkMEVXjxUtnxvvMHRzMw/nZfciDe
	F9bf92IQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rPmuo-00Ddwv-Qb
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 17:07:58 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPmuf-0006lg-Bt
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:07:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:07:33 +0100
Message-Id: <20240116170738.209954-14-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240116170738.209954-1-m.felsch@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_170754_926650_D2128284 
X-CRM114-Status: UNSURE (   8.70  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 13/18] ARM: i.MX8M: add dynamic optee memory of-fixup support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Try to set the dynamic optee memory base address if the builtin optee
binary had an header.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index ca50eec63622..6db16f024148 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -17,8 +17,10 @@
 #include <mach/imx/ocotp.h>
 #include <mach/imx/imx8mp-regs.h>
 #include <mach/imx/imx8mq-regs.h>
+#include <mach/imx/scratch.h>
 #include <mach/imx/tzasc.h>
 #include <soc/imx8m/clk-early.h>
+#include <tee/optee.h>
 
 #include <linux/iopoll.h>
 #include <linux/arm-smccc.h>
@@ -73,6 +75,7 @@ static int imx8m_init(const char *cputypestr)
 			.method = "smc",
 		};
 
+		optee_set_membase(imx8m_scratch_get_optee_hdr());
 		of_optee_fixup(of_get_root_node(), &optee_fixup_data);
 		of_register_fixup(of_optee_fixup, &optee_fixup_data);
 	}
-- 
2.39.2



