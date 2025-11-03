Delivery-date: Mon, 03 Nov 2025 09:44:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqAm-00EnPI-2B
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 09:44:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFqAm-0000mk-5Q
	for lore@pengutronix.de; Mon, 03 Nov 2025 09:44:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XhvDyCoICVKvJQtRb4kjsVbUkVRqpiNc/dsR/T8lme8=; b=uryVxND8qYHSTeZuVBmZPugU1S
	pl870++gTCjdmMBMGhOUeYQq904wQ2v1/c6AcPOkTjN47tQhEa02HG2oXm4T7DLiTxfJbBKqzOJ+G
	jl/2PLdVc0SDzvDBVtHtozDFPblmildeG71yVRqlp4eYj6Jh+x4Sd1HhZvTYxIspiN5Zj1LhIDRow
	YshFTZl5Lkw6zuE8Nh1ipGACXGLM1fRnjs9dkCHt8kIKt6KnDQbe0kh1mDquj7zL9xNEeOc530WAz
	uTERETowjnzW7ascnhybr5Fm7kl7Qok8vT+jiXy+u+hrMZC5v67j411G6TNsX6pz/HTdeNd/O+Zkh
	URn66Q3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqAC-00000009SJb-2T41;
	Mon, 03 Nov 2025 08:43:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFqAA-00000009SJE-2L8k
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 08:43:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqA9-0000fh-1A; Mon, 03 Nov 2025 09:43:41 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqA8-006pTP-2k;
	Mon, 03 Nov 2025 09:43:40 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFqA9-0000000HLso-0ygA;
	Mon, 03 Nov 2025 09:43:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>, 
 Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20251029070141.2503368-1-a.fatoum@pengutronix.de>
References: <20251029070141.2503368-1-a.fatoum@pengutronix.de>
Message-Id: <176215942078.4135643.7321890676299481148.b4-ty@pengutronix.de>
Date: Mon, 03 Nov 2025 09:43:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_004342_602311_DD491D6F 
X-CRM114-Status: GOOD (  11.55  )
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
Subject: Re: [PATCH] crypto: caam - skip RNG selftest when i.MX6 is in
 normal world
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 29 Oct 2025 08:01:38 +0100, Ahmad Fatoum wrote:
> On an i.MX6 running under OP-TEE, the CAAM selftest fails as it needs to
> run in the secure world[1].
> 
> We can detect that barebox is running in the normal world on an i.MX6,
> so use that info to gracefully skip the test.
> 
> This is not enough to get the CAAM working (The DECO registers may not
> be accessible to barebox), but that is arguably a more useful error
> message than an -EBUSY.
> 
> [...]

Applied, thanks!

[1/1] crypto: caam - skip RNG selftest when i.MX6 is in normal world
      https://git.pengutronix.de/cgit/barebox/commit/?id=84e672622f1d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



