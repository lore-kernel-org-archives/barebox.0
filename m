Delivery-date: Mon, 13 Apr 2026 09:32:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBmW-00BdfS-2j
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 09:32:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBmW-0005Wh-B5
	for lore@pengutronix.de; Mon, 13 Apr 2026 09:32:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T1Ir8i4EZJhXplNPqF4uWk7efYsBlN4ErMjf0pS91OY=; b=HMl3f2MsRcYO6ksTfuOrm+mcYL
	2TpFzFQiLVC7Pqo5BXtvLFmMhx7WFtrmkTZpSnyZIPKOQW+on3ItKo3XT0tVdnIyuta/0XsmNu+eS
	xp1F630m21z2xhLs1gOPlo92B5KHdOvS95l11zCc3rTx8f2VplI6NhiUVDDPSA8akStzNXJfHxWGO
	pgDLXF6ohgTIVhfOVuIYcj49NbdDwoysHJJ/EuNa4MC2p0Gq1kpO9RWH4QH6YcWyV/XWJYF5dekCG
	CeqRBQmnYhCZwSvRmS7NeNGDkIUDQy9UoZEVHkVISLhjhap4dMG0Cey5YeuoW70ZPvzVQuZMXLsNj
	u7alxhwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBmB-0000000FA0R-481u;
	Mon, 13 Apr 2026 07:32:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBmA-0000000F9zz-3CQL
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 07:32:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=T1Ir8i4EZJhXplNPqF4uWk7efYsBlN4ErMjf0pS91OY=; b=MTk5d3aa3+31JKSmioQbBw/sv7
	8wxfB02jwvU6T6YXibxG0DCogkiNRWuD5+AXSGRG5xiB9LpY9cD8fkHHcP5yOuzT1R64JeC0c1rPF
	mt+npmYVQA9Phh+Qg/KWOWvb5VOtOzG8ehAP0VHES9E5M9lj0n30BjPSYZFUd4KDQ2L60zykqLQNC
	FFTPgqCjsBezngHM4lYzSF3xJrEgf2Iy8tUeBeLdd1vdainnRVQ2Z1UVFCEIrCb3PkDuRFLfiefJR
	BWO7hVssmbVOGcYTklEahRhdJsLbyX5Vm7ah1dJB6l6lRlHxhcm7fNr6pq3SmeP0tOaoVW/W9tfco
	Vcs3OVPg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBm7-0000000GHgg-0j0Y
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 07:32:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCBm6-0005Pm-IQ; Mon, 13 Apr 2026 09:32:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCBm6-0058DK-1A;
	Mon, 13 Apr 2026 09:32:02 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCBm6-0000000EgIO-1F8N;
	Mon, 13 Apr 2026 09:32:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260407-v2026-03-1-topic-filetype-v1-1-e2fd029ab0d4@pengutronix.de>
References: <20260407-v2026-03-1-topic-filetype-v1-1-e2fd029ab0d4@pengutronix.de>
Message-Id: <177606552229.3499115.6714133088981908182.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 09:32:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_083203_479133_7DE49922 
X-CRM114-Status: UNSURE (   5.57  )
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
Subject: Re: [PATCH] filetype: fix unaligned access for x86_linux_bootimage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 07 Apr 2026 09:34:15 +0200, Steffen Trumtrar wrote:
> is_x86_linux_bootimage tries to access an unaligned pointer which may
> lead to errors on SoCs that don't allow it (e.g. ARMv5)
> 
> 

Applied, thanks!

[1/1] filetype: fix unaligned access for x86_linux_bootimage
      https://git.pengutronix.de/cgit/barebox/commit/?id=87d3ae4bee6c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



