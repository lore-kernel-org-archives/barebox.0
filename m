Delivery-date: Fri, 16 Feb 2024 12:58:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawqu-008WlG-0q
	for lore@lore.pengutronix.de;
	Fri, 16 Feb 2024 12:58:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawqt-0005VG-Lw
	for lore@pengutronix.de; Fri, 16 Feb 2024 12:58:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0W54AORnP3UBBBbCWbZ2vB2d4XrErUmMnB7s5eoRGWY=; b=Hx34st2NyqqJLv/jwHX2T+mmn4
	Pq6iA++CY3zChgsHBxnKAy4RYnKyWJr9XhoRcGD6GxBYZPZlA5JR9Rs+0RbdmszT4ju7DTbBoE8rl
	YxPhZO0F6LvYw2Wvch7RxvJT4Y0unnTyZdYefbx19VbCUPZpm5CE3I+hsdiET68vOdghqCGjHOrzZ
	B86D/fZh33iYV/JAdeeGJbFpYrm91hHn8/cmL9Eu05JrzmCJN3sY6hFsvPCghveVf9H+c7X/QFo2P
	M4HJgjpTu7S+qn7oVNdtTJAHoiv3niaqEM8PRSmWQnb8sI0kJvTVfq9/u/NXHJmo4mWWD4dhAlCBR
	sUV7BA0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawqO-00000002Dlk-0ed3;
	Fri, 16 Feb 2024 11:57:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawqL-00000002DlD-2170
	for barebox@lists.infradead.org;
	Fri, 16 Feb 2024 11:57:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawqK-0005RX-AK; Fri, 16 Feb 2024 12:57:24 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawqJ-00149g-U7; Fri, 16 Feb 2024 12:57:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawqJ-005uNe-2p;
	Fri, 16 Feb 2024 12:57:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: rhi@pengutronix.de
In-Reply-To: <20240213100836.2853989-1-a.fatoum@pengutronix.de>
References: <20240213100836.2853989-1-a.fatoum@pengutronix.de>
Message-Id: <170808464387.1408357.16380585668791252664.b4-ty@pengutronix.de>
Date: Fri, 16 Feb 2024 12:57:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_035725_550596_9A114E17 
X-CRM114-Status: UNSURE (   8.57  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] partitions: dos: support root=PARTUUID= generation
 with zero NT signature
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 13 Feb 2024 11:08:36 +0100, Ahmad Fatoum wrote:
> For MBR-partitioned disks, the NT signature is used to derive the PARTUUID used
> to identify the root partition. For this to work reliably, the NT signature is
> expected to be unique across all attached MBR-partitioned storage.
> 
> Some partition tools may populate the NT signature with an all-zero
> value by default, which will likely run afoul of the uniqueness
> expectations. When this happens, barebox' bootm.appendroot feature will
> report a non-descriptive error message:
> 
> [...]

Applied, thanks!

[1/1] partitions: dos: support root=PARTUUID= generation with zero NT signature
      https://git.pengutronix.de/cgit/barebox/commit/?id=82a51038356d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



