Delivery-date: Mon, 06 Jan 2025 10:19:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGJ-00HQdE-2a
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:19:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGJ-0003MK-LV
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:19:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LlajKoSrcFOodGlYofSqsU3PF5jvo4/Ymmyl7dCMDt0=; b=j0XpsEH+jxC/4sOHln8SkZBO+u
	kMTcHYR+X1XDQiZL1vlwQO3R12J0Xj8GbuLhgFaF9HHdxukM+RYYJ42A04917UqWe+gsJpURkHtPD
	Ai6A3mT1d0iDoSrh3TBaxYmmxcpy6pkBOMn1vz5WAMRZzEj7kYs13fqHrcug2RcphjQWYo0yv6MLr
	ner2tZWXJx5HD+SINPD8d93RDt7x6ayxxQMzP9sc23qf2qECMERL09/h6MdRQGDIapoNTdFDMKKW3
	1XKa/QAt3R6hqkCblNC/svBW7EbN+gc3bO8O/egjWlD9W581nR5W63dsiKZCZkTT6dncIBEMgY2xW
	42LwPenA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjFs-00000000doh-3BrK;
	Mon, 06 Jan 2025 09:18:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjFq-00000000do6-2dv3
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:18:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUjFp-00030N-5Y; Mon, 06 Jan 2025 10:18:33 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUjFo-0078qK-0f;
	Mon, 06 Jan 2025 10:18:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUjFo-0098FY-2w;
	Mon, 06 Jan 2025 10:18:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250106090048.3420243-1-a.fatoum@pengutronix.de>
References: <20250106090048.3420243-1-a.fatoum@pengutronix.de>
Message-Id: <173615511290.2176590.14513935501621694074.b4-ty@pengutronix.de>
Date: Mon, 06 Jan 2025 10:18:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_011834_697856_A1FBDAB2 
X-CRM114-Status: UNSURE (   8.13  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] cdev: allow overriding partition overlap check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 06 Jan 2025 10:00:47 +0100, Ahmad Fatoum wrote:
> barebox will refuse to create overlapping partitions that are not
> completely identical to an existing one.
> 
> The user on the shell may still want to allocate partitions that are
> known to overlap, e.g. because they place multiple fixed partition into
> one MBR partition or because we want to operate as a part of a cdev
> interactively as if it were once device.
> 
> [...]

Applied, thanks!

[1/2] cdev: allow overriding partition overlap check
      https://git.pengutronix.de/cgit/barebox/commit/?id=c87254a2fd50 (link may not be stable)
[2/2] commands: addpart: allow force creation of overlapping partition
      https://git.pengutronix.de/cgit/barebox/commit/?id=80128b38547e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



