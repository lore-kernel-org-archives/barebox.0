Delivery-date: Mon, 15 Sep 2025 10:48:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uy4ss-003GCI-2D
	for lore@lore.pengutronix.de;
	Mon, 15 Sep 2025 10:48:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uy4ss-0002z0-6Q
	for lore@pengutronix.de; Mon, 15 Sep 2025 10:48:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9NQdzhq6ZJwCpiHpDSWLhVadtbauG8Y3Lu7m2kcy6Hk=; b=bZB37oOWodCxhkl6aKYFaVMNMA
	GxBamgWssxSpoIBbxN6sW4b5AI7d5ISwQrbDoaYDlQ67HEJBi4wXPzJlwh/arT4ewjsGGiE8MgDv/
	y8sU21PFFzE98mp9SnnvsdEXczbXCu057/DaKT9K9cuwPRNHVjF4Cu/FONa2/4B594B4kbAnbptn1
	A4i4b3kWYEOuDNkchVpDr1Gy5r4XcBdvjaYgGr9QCUJ70QPEbjsRFSEH6gNA5qSqlb5QAvpV8hhWH
	4e48jMHpH+i0gKWN1oNvBVH0dHJm0iS19DfF9zKs+YQrRwCU2GwpNUdJotkHctnwixbcacL5Tig/l
	A2tvn2ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy4sO-00000003HEq-3D9W;
	Mon, 15 Sep 2025 08:47:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy4sM-00000003HEG-1Eed
	for barebox@lists.infradead.org;
	Mon, 15 Sep 2025 08:47:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uy4sJ-0002ud-Eu; Mon, 15 Sep 2025 10:47:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uy4sJ-001OEy-0u;
	Mon, 15 Sep 2025 10:47:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uy4sJ-00000003gr8-0pZ7;
	Mon, 15 Sep 2025 10:47:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20250914192531.14494-1-chalianis1@gmail.com>
References: <20250914192531.14494-1-chalianis1@gmail.com>
Message-Id: <175792607118.879584.14244268128864478046.b4-ty@pengutronix.de>
Date: Mon, 15 Sep 2025 10:47:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_014754_334430_2CD662B3 
X-CRM114-Status: UNSURE (   7.50  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] efi: payload: entry-single: memory need to be
 alloccated as data.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 14 Sep 2025 15:25:31 -0400, chalianis1@gmail.com wrote:
> The entry single is used in x86, this memory allocation need to be set to
> data since it is used to initialise the malloc memory. set all this region
> to loader code could represent a security issue since we autorise memory
> execution.
> 
> 

Applied, thanks!

[1/1] efi: payload: entry-single: memory need to be alloccated as data.
      https://git.pengutronix.de/cgit/barebox/commit/?id=3366e9e04a28 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



