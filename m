Delivery-date: Thu, 08 Jan 2026 21:57:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdx4U-002kdG-1o
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 21:57:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdx4U-00054m-0Z
	for lore@pengutronix.de; Thu, 08 Jan 2026 21:57:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/EgVcnSK8hxf/swTLxCpfgIfWsbO2/PuhJQj74rURn8=; b=UoY7vfDOXBT6Aa6vf6LexGYvHw
	KNvL5oBNwQ3u69OJ3oX/H2Rx9xoyPNzxCOKAp6ZGDit3H9LFmeB5ieQvx/jwkL97gkbfffGyzoBNv
	Zv/dxLDHG0vQCmstaz+vdnv5KGyCOaCjTHXulAeMPkD62wJ4wQB0fTSXtHikhc8HiphCOapLHbggE
	YId4N5CpXPym5BylfmeRCxMRZTG6NMP8Rvp2Ma/qBSEHCw5OGvRVwxOUEjD7lvwW8uXN+nm06RpC+
	IM+ThRSs4w3YSzJfTGyLcfzvpjmwzoz9ZQNGOnsJNxkaw1OZ/GzzeaHVCuaknMfLDAhdeZYZ/FfPM
	eN0VYzIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdx3t-00000000rBY-2SzR;
	Thu, 08 Jan 2026 20:56:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdx3r-00000000rAt-0lUs
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 20:56:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdx3h-0004uX-E1; Thu, 08 Jan 2026 21:56:41 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdx3h-009jiB-0n;
	Thu, 08 Jan 2026 21:56:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdx3h-000000024JO-0mAW;
	Thu, 08 Jan 2026 21:56:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260107081053.1857375-1-a.fatoum@pengutronix.de>
References: <20260107081053.1857375-1-a.fatoum@pengutronix.de>
Message-Id: <176790580118.493211.10808324344414554565.b4-ty@pengutronix.de>
Date: Thu, 08 Jan 2026 21:56:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_125651_244294_172F2EC3 
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: turn more magic variable literals into
 references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 07 Jan 2026 09:10:51 +0100, Ahmad Fatoum wrote:
> Since the last replacement of magic variables with references, two more
> instances have made it into the docs, so switch them over now.
> 
> 

Applied, thanks!

[1/1] Documentation: turn more magic variable literals into references
      https://git.pengutronix.de/cgit/barebox/commit/?id=02eb22bd9494 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



