Delivery-date: Thu, 06 May 2021 11:30:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLB-0001UI-TQ
	for lore@lore.pengutronix.de; Thu, 06 May 2021 11:30:41 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLA-0008Q2-2X
	for lore@pengutronix.de; Thu, 06 May 2021 11:30:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZIv6lPlqsCJ3NkNs7u1mdrAc3lMKGSdcUfJYc3+s28Y=; b=cMsZ7sn9fwz2NBovWkw88pwSu
	mxTLgvY5jSwAQ2nj7VAvbf51d6NRpsuSaRkOjVd1dxMjQcCxVqWH7MUm4Lb237Nw1KdmD7Qgco31e
	dPfanBDF2B6XEiq9pbqm1cj7S526IGyb+Qi/SaFYiNTxU7WZpka1LOWEO5T+WfUJ01np0Di7GZHSd
	84O5EquJFMOuM/ydXyrY5OEASKpfZ7hhVA1+jrIst2o8P01xWQ41a6QCT34lWKaaqnThepBCRewP8
	10wfWW5S8WO6VY/unIAV67Ej22yYEz7AjcEiaT1q8+ARP2pMU+hRZN/ZpMe9YDv0tr1k1PuOInP77
	41s6qSNSA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leaJo-003nrw-5q; Thu, 06 May 2021 09:29:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJh-003npa-FZ
 for barebox@desiato.infradead.org; Thu, 06 May 2021 09:29:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=3L/g2Tcidi7HpFT2+5AoD9cuuwyBLTrD3877Ujyep8c=; b=R2Z+AA6j14MooB2b6e1gLciH6+
 hj44JEEgQEdWZv3qEUjwDGc8yWr/jl8ZIShl1qmZWuq5ChjAObbRI9mVmQPO3xKKtTiiYYVvJa5Ad
 ZbHQwhKlSVPtpTZNwBWtLc4yJQHFJ33GdteRzrpzWhhv55UWSvPR32bOdWHPdwDLYBhuIl7n1nPYn
 hBere9r1D/P72U+eZ44eGaPNIjyebVm5asDFThO8Qck9eKBDxPOsNJj2zfxMPaGEdT8JDiolVmkx0
 Jz9GJ0Ntda+mejO3gCCZGwI839zP36rqcEVTvArO87AUGtZhAQ+LdhqTVOYuKZ0XvWM3EX+3qr0Au
 qx+Wpjog==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJe-005uFW-Jm
 for barebox@lists.infradead.org; Thu, 06 May 2021 09:29:08 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJb-0007pF-Bd; Thu, 06 May 2021 11:29:03 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJa-0001ld-H1; Thu, 06 May 2021 11:29:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  6 May 2021 11:28:55 +0200
Message-Id: <20210506092901.25461-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506092901.25461-1-s.hauer@pengutronix.de>
References: <20210506092901.25461-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_022906_666532_4E835298 
X-CRM114-Status: GOOD (  11.78  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/17] common: Explicitly probe consoles earlier with deep
 probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With deep probe support the device providing the console can come quite
late in the probe order. Make sure it's probed at postconsole_initcall
time as it used to be without deep probe support so that we get output
earlier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/platform.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 4b79a9bc10..6b6f904573 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -515,3 +515,20 @@ int of_devices_ensure_probed_by_property(const char *property_name)
 	return 0;
 }
 EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_property);
+
+static int of_stdoutpath_init(void)
+{
+	struct device_node *np;
+
+	np = of_get_stdoutpath();
+	if (!np)
+		return 0;
+
+	/*
+	 * With deep probe support the device providing the console
+	 * can come quite late in the probe order. Make sure it's
+	 * probed now so that we get output earlier.
+	 */
+	return of_device_ensure_probed(np);
+}
+postconsole_initcall(of_stdoutpath_init);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

