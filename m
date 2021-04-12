Delivery-date: Mon, 12 Apr 2021 09:18:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqF-0003dc-3X
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 09:18:39 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqD-0004jX-Fj
	for lore@pengutronix.de; Mon, 12 Apr 2021 09:18:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KQ6+T0uco7lo1abuTS8gCYW8XYx+Qcmu+vMd/j1pvwM=; b=RKHjlxUB21H68MnlFFdfcIdwD
	0KIVIpYISwBvjaRCl58jpFTR/Xeg3gvd61UtDtzA2TXfHqDV+ERIsF8wWUdtRcBen9IrPUAYalBcN
	wDnO0t2LwQWcxclFULTB6/j6KkdAjMpOYgHBRQu69F3Fn7as+mdwSCpO8ZYBQEi3nkmOpHj3Ej6YM
	/RKKs6kPlpBshFtXwq5FHOX4hlo0jGK90LP58c+169PGO3esh82q5o4p1g195Bt41aP50nJo206Lk
	m+RD08SH3oNjDuxGzjURCTppfYZG5HArqqZMH9VkO9muqyo4H45LmNAQ6Y5xOFpzdV7G513gSmAhb
	+Gyoy04rw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVqov-005vwl-Bj; Mon, 12 Apr 2021 07:17:17 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqog-005vu5-93
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 07:17:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=4mJZ4zy9gNmwjyrUMHkBHSaHu9uYfRfwD1bVFaAc1x8=; b=C/8gWLynP0SGHQRL1FPuDt+Vlg
 0z31GR9GwlOjSDXO2tlYbMB6IG6rMrS3M1jI9qF5/1byvfYQcUai5LpJg+F8nPW4y1sVecXJ8UNod
 ZozGBR6YMi+7jhfuELc1nY+t1g/5aIHtFovLtgDrgFSF6kPlXsIPduiQzIyMa2JiLIxK5u26EJd6m
 IGd8hU7zK28Yq7cqHSFfiD7psyldVV0/6kCNUmCN/zakHdEdESqCZ49iBiJJIm/UCkYmCdxK2CY0D
 cZvBZUn+OGKKJnnUr1JmT8q3RWK+LrSJXG4OADbJ8pnSWd4iJOuH44oY807iCtqiUo/ykllyzTVUA
 IkYziIrw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqod-005vEl-Qk
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 07:17:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoa-0004HF-8D; Mon, 12 Apr 2021 09:16:56 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoZ-0002fS-7T; Mon, 12 Apr 2021 09:16:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Apr 2021 09:16:37 +0200
Message-Id: <20210412071651.8769-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412071651.8769-1-a.fatoum@pengutronix.de>
References: <20210412071651.8769-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_001659_890393_583DA71C 
X-CRM114-Status: UNSURE (   7.85  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 03/17] kbuild: add ARCH=um alias for sandbox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ARCH=um (User Mode) is the Linux kernel counterpart to our sandbox
architecture. Add um as an alias, so we can interoperate with tools that
handle ARCH=um specially.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Makefile b/Makefile
index 387f46b587d4..f6c0c4817046 100644
--- a/Makefile
+++ b/Makefile
@@ -356,6 +356,10 @@ ifeq ($(ARCH),ppc)
        SRCARCH := powerpc
 endif
 
+ifeq ($(ARCH),um)
+       SRCARCH := sandbox
+endif
+
 KCONFIG_CONFIG	?= .config
 
 export KCONFIG_CONFIG
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

