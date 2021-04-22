Delivery-date: Thu, 22 Apr 2021 13:10:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZXDm-0003xL-Po
	for lore@lore.pengutronix.de; Thu, 22 Apr 2021 13:10:10 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZXDm-0003ox-4N
	for lore@pengutronix.de; Thu, 22 Apr 2021 13:10:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HstjSU2DmrPvEzhhEOA/9Elkv11btGfZ1E5n3L3fMZs=; b=jFkpUzLjhnv5Jt
	c7sy+uHtTHHZlCxAXIRtDCF+paKAgMVul5vx+T/BvlgnK2JV5zhcIB1KqBCF/RlOEH/iAnlOK54r2
	AXpjZoRaW6BOJSGhyZ4LJrpLrYdcNmhVT53hnTi4ghrAzAjghdhZUa+o6lzZreF7fhoozvjSZRjQG
	PisoWHqXAfj2Q7QE9tv5/KMG4qpb4cfMYNlony/03MiHRPOPpNeyizfljEfiJK7hpMb6ldVMWvqFJ
	t9+/3C9dRi934T7gyUKhdN0kEoPiEIN2erxRl0eUc22LCtP39BbY+Km0HGOg7vODSKlq6UpbXTR29
	NVzFWwr30/+jgppjatSw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZXCe-00GYqH-4r; Thu, 22 Apr 2021 11:09:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZXCa-00GYqB-4d
 for barebox@desiato.infradead.org; Thu, 22 Apr 2021 11:08:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=lGm/I94AQW27XrT5WQcVunUYMEVut8gTtXkzjK61bzU=; b=sslCMPFAJWJkz+Xv1wYUyZr4a/
 EdjNjSm7NPyc+a2I/qahE0MBqxeUXJQhwatW5Ci/qHPD7Az8NF73L69XJlvAG6VB25K8zHcnIiVnB
 VZiDE/IRhos3sDKrWTkmSofW+G/xrXdAtY30GmqUIczSSZyc+QmkUdCXWGul7uRghFWyNyvwqAMrj
 5KlTtF3AzuzCUXPa4YkcRE9ihrIRfSKp04jl9gmO0pDaZKSzkbfuP/l+YurpPm+vcaBuZFb0eqZZ1
 CrEFj6vY+C/jbo+TqWo1AvGT/do/mR2sWLOlhERLcYGTUIHbk5W5qPwXHNaTk2MqrBM5KPFSLUVCY
 V2ZeSr2w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZXCX-00DbTy-Dv
 for barebox@lists.infradead.org; Thu, 22 Apr 2021 11:08:54 +0000
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1lZXCU-0003kE-5i
 for barebox@lists.infradead.org; Thu, 22 Apr 2021 13:08:50 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 22 Apr 2021 13:08:49 +0200
Message-Id: <20210422110849.1556472-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210422_040853_484778_EC7605A5 
X-CRM114-Status: GOOD (  10.89  )
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
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: demote reset reason print to debug level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX reset reason is not really helpful on its own, as it needs
to be augmented with other information like the watchdog state to get
the real system reset reason. As it stands this log is more confusing
than answering any questions a user might have.

Demote the log to debug level to stop this confusion.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/imx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 3d8c55c54ecd..bd7e9ac42320 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -209,6 +209,6 @@ void imx_set_reset_reason(void __iomem *srsr,
 
 	reset_source_set_prinst(type, RESET_SOURCE_DEFAULT_PRIORITY, instance);
 
-	pr_info("i.MX reset reason %s (SRSR: 0x%08x)\n",
-		reset_source_to_string(type), reg);
+	pr_debug("i.MX reset reason %s (SRSR: 0x%08x)\n",
+		 reset_source_to_string(type), reg);
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

