Delivery-date: Thu, 18 Dec 2025 10:38:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWASr-00CmSA-1q
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 10:38:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWASq-00047L-VU
	for lore@pengutronix.de; Thu, 18 Dec 2025 10:38:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X3dxfNp8w2SdAl2etRxrpFFIZn8bROsXYZoPKx35zvE=; b=WZSwB2ppYMQUzMuOOEbsmDB9Gw
	wurJ9WgwfwSBKo4LAlRbHZeX/IM1DLsUS+gjubOkYLvKjRpvmo9VH4jZQhLb1NmjBh69DFvgYu/mv
	lwpspOpHZgxRUNGWuovmhJhzlvRuig8f8axzso4ohQcA7ymVyCu6pV26Tf2x/Q8UV5bwZ2o3qpsn3
	i2AH0fmEn94gfH6eqDGwfjZZs4pHcadbE2wmmpNe9MoMpbe54L/Yo6f5TlLEQpmK+ITGE4za1OHX5
	t8P9ZB7xUKtNeOpQf6SD6ndGobTkaBe9kXPjrMXQq+2KOAFPqdZCGcFK309eFI3WFiq74gdSjzctH
	kfjqfmcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWASQ-00000008A2t-2NmW;
	Thu, 18 Dec 2025 09:38:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWASO-00000008A2G-0on2
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 09:38:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vWASL-00041v-Gj; Thu, 18 Dec 2025 10:37:57 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vWASL-006FvE-13;
	Thu, 18 Dec 2025 10:37:57 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vWASL-0000000EdD3-156d;
	Thu, 18 Dec 2025 10:37:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251218091945.3461410-1-a.fatoum@pengutronix.de>
References: <20251218091945.3461410-1-a.fatoum@pengutronix.de>
Message-Id: <176605067725.3486651.12515989861808352929.b4-ty@pengutronix.de>
Date: Thu, 18 Dec 2025 10:37:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_013800_242334_03D3C721 
X-CRM114-Status: UNSURE (   9.08  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] cdev: maintain partition index in struct cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 18 Dec 2025 10:19:45 +0100, Ahmad Fatoum wrote:
> For use by the EFI loader, we will need to know a partition's number
> within the partition table on disk, so have the devfs-core keep track
> of that.
> 
> Mere iteration over the cdev list doesn't work for thus purpose as there
> may be invalid PTEs, which cause e.g. the first on-disk partition to
> have a higher number.
> 
> [...]

Applied, thanks!

[1/1] cdev: maintain partition index in struct cdev
      https://git.pengutronix.de/cgit/barebox/commit/?id=ebe242d1d9d2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



