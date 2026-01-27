Delivery-date: Tue, 27 Jan 2026 08:54:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkduF-005pCX-1j
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 08:54:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkduE-0004CB-J2
	for lore@pengutronix.de; Tue, 27 Jan 2026 08:54:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3IGc04dCdEETo13+7RMEXn+udsMptrkrOPgBXV64bJs=; b=dYmwy07vid8mJI6H83VbLP2AcW
	Dy62cEOZBD5OM5eDJfM28zw2g7+5aBJux+dhsKp+UJfY6126mzDRquPb1hpru+7neXS39sJRxbFJp
	V5fCkC7r5DrKwerG1aD7o1obl+TDuH9v8ItO1n+mbx83uWA2qKuR3edRzWMd6CbIVNAO6kD9m8kox
	yMT5SjchxTxDmt9ZMJv7G+BBFOh+UkvzSkHZJ5iIpdlHctjwKH9dSfxdRJ+SwtSGDBnwVs6T1Ek5c
	fArP1wB3S/6t1g+W1gSPC5JqsTuziIEcwEhi5H5MHClnalq9zyPkiANDxe0fo/P1w8CP1U1zRylMK
	0ELPejCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdtm-0000000Dnw3-1nCc;
	Tue, 27 Jan 2026 07:54:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkdtj-0000000DnvK-1ffD
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 07:54:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdth-00047i-Hv; Tue, 27 Jan 2026 08:54:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdth-002iGc-2N;
	Tue, 27 Jan 2026 08:54:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vkdth-00000008KdO-22qw;
	Tue, 27 Jan 2026 08:54:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260126104457.781763-1-a.fatoum@pengutronix.de>
References: <20260126104457.781763-1-a.fatoum@pengutronix.de>
Message-Id: <176950044101.1985322.14021699089890677847.b4-ty@pengutronix.de>
Date: Tue, 27 Jan 2026 08:54:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_235403_466185_193017D9 
X-CRM114-Status: UNSURE (   8.25  )
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
Subject: Re: [PATCH master] boot: do not attempt booting bootsource more
 than once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 26 Jan 2026 11:44:56 +0100, Ahmad Fatoum wrote:
> storage.builtin and storage.removable do not overlap, but bootsource
> can overlap with one of them leading to confusing output, when the
> bootsource has nothing bootable as the boot will be attempted twice.
> 
> Add a new .nonbootsource specialization and use that in the default.
> 
> While at it, also drop the unused bootcdev.
> 
> [...]

Applied, thanks!

[1/1] boot: do not attempt booting bootsource more than once
      https://git.pengutronix.de/cgit/barebox/commit/?id=6cb2c1fbee99 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



