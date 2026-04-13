Delivery-date: Mon, 13 Apr 2026 13:25:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCFPu-00BhU6-0j
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 13:25:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCFPt-0001wl-Mo
	for lore@pengutronix.de; Mon, 13 Apr 2026 13:25:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3PsDvlzjqtGRRrWk+lFTx7M/SBXFa6CQV9cLAcUtlaM=; b=y5qA2bxbUxO+HpuLipazFebxVI
	Utf6N4+mWFl04JwbUp1iPD8GV0oQM2Ho+aXisGixHiPEpYkTBeXNsATGIpHlsTb9t90psTiZZ9xhE
	UXxg9jN+Yj+BJHUco5dxq1QrCjYgaeIEmllAL1OYZ4zCSnyFUCBVlAjONbQKJOA26FlQsm3XtdMW1
	rXGlaYmY7N0BDTeIU8kJN7Z8UGOnljNvAjjOiQtss21HxWp4kOwwm+N+mWhXwdm1eF3/kjKLArSYb
	eDhXkj+J4PhVpNdX8zfSZqqlIBJ7bsXNf3LkEAsi5efUcLHPHz8ThIF263j/1M5douk2sVHzGjKk+
	9n0YMTRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCFPW-0000000FZV4-2SdU;
	Mon, 13 Apr 2026 11:24:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCFPV-0000000FZUx-0PGk
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 11:24:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=3PsDvlzjqtGRRrWk+lFTx7M/SBXFa6CQV9cLAcUtlaM=; b=QCqFZ95k/cV7kdnvNlviVkup/H
	I+vb91iHPCA4U97Okko921wBWe2nTNTXuGBoSlLZoHHzlgSWhyCAjP1MZE491U/rj8wsFGc6iJcbe
	bnUS0xQEJoIzztdwQM7lSKe50PtTSYjnmra6Hz04Z/hkPxjw+3HNYqeY8HIOkzDB9s2yBbEhZq56/
	1PfuD4iHiplaKn9RLtIZ/M/QOq0j1Hkw3RYtRajDqzGr1e8C5UXArpOqoQaPea864EAxWM/jz9VeT
	jhKhfbJS5PFfX34/EoC/uITfktdwmSkxjD9PQfL28ieezHQ7WIA7rSn7346Kb1cTfYxHxyV/A2oMu
	2YFSnjgA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCFPR-0000000GguB-3mfl
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 11:24:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCFPQ-0001qu-Fq; Mon, 13 Apr 2026 13:24:52 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCFPQ-005A4l-0y;
	Mon, 13 Apr 2026 13:24:52 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCFPQ-0000000EqjY-10tL;
	Mon, 13 Apr 2026 13:24:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260413102812.1481805-1-a.fatoum@barebox.org>
References: <20260413102812.1481805-1-a.fatoum@barebox.org>
Message-Id: <177607949223.3539265.3440992560595115923.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 13:24:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_122454_109420_F7B77608 
X-CRM114-Status: UNSURE (   6.19  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mem: add flush callback to sync caches for execution
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 Apr 2026 12:28:12 +0200, Ahmad Fatoum wrote:
> barebox always calls sync_caches_for_execution() on boot, but it can be
> useful to trigger it manually when testing:
> 
> - memcpy -s /dev/zero -d /dev/mem 0 $TFA_REGION_BASE $TFA_REGION_SIZE
> - sync /dev/mem # flush D$ and invalidate I$
> - smc -i        # check if PSCI monitor is still usable
> 
> [...]

Applied, thanks!

[1/1] mem: add flush callback to sync caches for execution
      https://git.pengutronix.de/cgit/barebox/commit/?id=4f0cf6a66d84 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



