Delivery-date: Thu, 20 Nov 2025 09:01:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLzbX-002wO3-2c
	for lore@lore.pengutronix.de;
	Thu, 20 Nov 2025 09:01:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLzbX-0007AY-A1
	for lore@pengutronix.de; Thu, 20 Nov 2025 09:01:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VKHB7Zzuqh3X46RvfogSzIa7g5/N2YxzsFd5odqfpTA=; b=HTDVqk/ksezb5rlDPRr/VAd9YL
	A6o+Oo+1L3kTG3KJv9f+mSNH/VxwVzb+TtS4mZG4ejqIfz79FjCbk9ikfkZVRa/IRU+Cu5ZzvNfbe
	1RWIACMunOGzENIUarnvVTcYd0DirDLSRxUb7atavvjS62bF2r8yNBpQLwG6qrE0Kv8s4NcR2lSQM
	vYia8GQXSIarS8/XlI3cc11fgMjG94zYwUHhtbWhYJuqmVR1UQYEMQI4mYv/MRUx7EWq7Q9XWXEsV
	1QsT9jYA+8uBCwsIlS7HTwO9QZiZM3nalDcQIVDhXmpCOK6v2eUt2m6X1P8nRfFif/f6Sjfu44aVs
	hrIBnk5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLzau-00000006K3T-48Qa;
	Thu, 20 Nov 2025 08:00:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLzam-00000006K36-0zzw
	for barebox@lists.infradead.org;
	Thu, 20 Nov 2025 08:00:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLzak-000743-Lr; Thu, 20 Nov 2025 09:00:34 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLzak-001NjL-1Y;
	Thu, 20 Nov 2025 09:00:34 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLzak-00000006x4u-3cIh;
	Thu, 20 Nov 2025 09:00:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Grzeschik <m.grzeschik@pengutronix.de>
In-Reply-To: <20251119-imx93-pd-v1-0-2b114723a734@pengutronix.de>
References: <20251119-imx93-pd-v1-0-2b114723a734@pengutronix.de>
Message-Id: <176362563441.1657039.18333886871241861832.b4-ty@pengutronix.de>
Date: Thu, 20 Nov 2025 09:00:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_000036_845587_DBCD90C2 
X-CRM114-Status: UNSURE (   8.35  )
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
Subject: Re: [PATCH 0/2] imx93-pmdomain: add imx93-src, imx93-pd and
 media-blk-ctrl drivers from linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 19 Nov 2025 16:25:06 +0100, Michael Grzeschik wrote:
> This series is including all drivers to enable all the power
> blocks to run the media-blk-ctrl on the imx93.
> 
> 

Applied, thanks!

[1/2] soc: imx: imx93: add ported source driver for pmdomain from linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=662843344fd5 (link may not be stable)
[2/2] pmdomain: imx: imx93-blk-ctrl: add ported driver from linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=b29aebd30c15 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



