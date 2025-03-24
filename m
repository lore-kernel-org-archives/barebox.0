Delivery-date: Mon, 24 Mar 2025 09:22:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twd54-003VmN-2z
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 09:22:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twd53-00049q-Rc
	for lore@pengutronix.de; Mon, 24 Mar 2025 09:22:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iJ/sIlgCsXdsUcHWSdtHC1ryp5buqj8wydWRAhXMRjU=; b=K0/1JIatjjiAC9FHlo4GMtL61b
	9XBm/qYx0AGNIRrKLFlxy++l/cheO/whjyoGepTRTObgbnL+qzGJIF75KUoxKssA+7biqYWgpOg2R
	5ngCLj6bxL2W3jFU+FMcRHhSpOzB6/H9oCM+ZpdZrNJkCpWBMnOlEjkVXsVbfc2olKnq/KC6q6ZlW
	nWV9fEKnOPba+NeWfTsN5lDURy1zyubqd5rbXFJwI4ysiQcCYojbliVj9Q4bFP09AQp/Lg0rkxUi+
	gws+i2zdasHXWkM8F2jTlqMEJLX2EnwnEYB7PWB+jM6kDcZw0PQHOav3IIWL/qLhwGpGLYZ3fyRgU
	yWkeohZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twd4Y-00000002ZQY-0pBx;
	Mon, 24 Mar 2025 08:22:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twd4V-00000002ZPs-3zeo
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 08:22:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twd4E-0003vP-OR; Mon, 24 Mar 2025 09:21:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twd4E-001NUE-0R;
	Mon, 24 Mar 2025 09:21:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twd4E-0079xu-1a;
	Mon, 24 Mar 2025 09:21:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250324081415.1697333-1-s.hauer@pengutronix.de>
References: <20250324081415.1697333-1-s.hauer@pengutronix.de>
Message-Id: <174280451449.1706449.2879677421176957909.b4-ty@pengutronix.de>
Date: Mon, 24 Mar 2025 09:21:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_012211_995065_A8922DE4 
X-CRM114-Status: UNSURE (   9.93  )
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
Subject: Re: [PATCH] mci: Do not access ext_csd on SD cards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 24 Mar 2025 09:14:15 +0100, Sascha Hauer wrote:
> SD cards do not have a ext_csd so accessing it on an SD card results in
> a NULL pointer derefence. Move the production year check to
> mci_mmc_decode_cid() which is executed for MMC devices only. While at
> it do not access ext_csd directly. We have already populated
> mci->version, so use this to check for the MMC versions which need the
> production year adjustment.
> 
> [...]

Applied, thanks!

[1/1] mci: Do not access ext_csd on SD cards
      https://git.pengutronix.de/cgit/barebox/commit/?id=a0747210a87d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



