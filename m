Delivery-date: Fri, 28 Nov 2025 08:12:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOseG-005hoZ-2M
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 08:12:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOseG-0003iN-6c
	for lore@pengutronix.de; Fri, 28 Nov 2025 08:12:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VBeDOtGXPr+7wtJF6KUlBSqlnvJ9DSGFttGGNqIfEBA=; b=wJzSoeGlwrt7YP8aJrmWdNv1ys
	CG0p7siWw3JQKCH2qbbgQIVQd+R/R/4RAET9uEP7Zb8b0Pwbe6/buhTRVGC8t4SDrl4j7mHPxdL3m
	3mFB6o2Wk6pbVuA9KdgL8tmfQqFhYjMXouUkqCSNrMZLuxt8zP6k/opvF42QfkRC74uQp+5fxaIX8
	t/FpR4dgaXdPRKt4F1yAbfS7LHuGKa4UKtowGESJBxUbK3djs92TloJkXMtg01lxrN/dof1/yBriO
	T0kqHaiutiUHLb09C1YOL69sDmLUBylPOzGJXqD4ePH7BKDDd8kqC4nlSNi2BY+adHZt1e/iTDaL0
	cUh5OTAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOsdr-000000004u9-1wKn;
	Fri, 28 Nov 2025 07:11:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOsdn-000000004q0-2H09
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 07:11:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOsdm-0003O5-2E; Fri, 28 Nov 2025 08:11:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOsdl-002uxo-2g;
	Fri, 28 Nov 2025 08:11:37 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOsdm-00000009Pqb-0tYE;
	Fri, 28 Nov 2025 08:11:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251127080244.2735357-1-s.hauer@pengutronix.de>
References: <20251127080244.2735357-1-s.hauer@pengutronix.de>
Message-Id: <176431389776.2244276.1641679000775960742.b4-ty@pengutronix.de>
Date: Fri, 28 Nov 2025 08:11:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_231139_618851_7610415A 
X-CRM114-Status: UNSURE (   5.34  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] test: ramfs: close opened directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 27 Nov 2025 09:02:44 +0100, Sascha Hauer wrote:
> The directory opened with opendir() is never closed. Call closedir() to
> avoid memory leaks.
> 
> 

Applied, thanks!

[1/1] test: ramfs: close opened directory
      https://git.pengutronix.de/cgit/barebox/commit/?id=d0c4b2f69607 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



