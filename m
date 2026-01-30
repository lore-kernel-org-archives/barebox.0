Delivery-date: Fri, 30 Jan 2026 14:37:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlogn-006zxt-1q
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 14:37:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlogm-00069V-KQ
	for lore@pengutronix.de; Fri, 30 Jan 2026 14:37:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vdvIMwUeqV+WF+lPMdiD8Oqz21pl3v2ftYKB3AUU6OU=; b=j0JCD+EeFOU7sugqYosIl6vPvq
	I8RF+/EALB8MXu8jzR+DON9aPPuvQ+xb5hPcMwyauafkQovg28+sTzs6e6jD2uu+//s3GWimfDdWU
	fgd16trl37YuqmtnQR4Ky5NgHZdhDfNFMT2NN5MrXOErh8GG0d0yKXcS8vv+rEpWczDCvZLyGnwcv
	Q7BifDaoqUMpoMVBLbHAUPlEEJ5CURW21nfEqijKK7cvzVjrE3xB9teJrPi15yA3WrSIKmd6X3uIy
	vTiimrC79BZtRjeGePNqRNo+dIJZU/RE8IYUEenReIVZOLzHN2T2K03hf9PlLMhOTtk1YgD5ohCby
	T3zo+0cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlogN-00000001Xmf-2MLj;
	Fri, 30 Jan 2026 13:37:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlogM-00000001XmL-0JtM
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 13:37:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlogK-00063S-GB; Fri, 30 Jan 2026 14:37:04 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlogK-003G0X-3A;
	Fri, 30 Jan 2026 14:37:04 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlogK-00000003PSq-2wyu;
	Fri, 30 Jan 2026 14:37:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260126104619.782459-1-a.fatoum@pengutronix.de>
References: <20260126104619.782459-1-a.fatoum@pengutronix.de>
Message-Id: <176978022423.812849.10038242071426062880.b4-ty@pengutronix.de>
Date: Fri, 30 Jan 2026 14:37:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260130_053706_119834_417F5539 
X-CRM114-Status: UNSURE (   8.41  )
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
Subject: Re: [PATCH v2] test: py: add dry run check for FIT image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 26 Jan 2026 11:45:10 +0100, Ahmad Fatoum wrote:
> A dry run should not alter system state in a way that would inhibit
> normal operation or repeated dry runs.
> 
> The FIT image boot in the test suite, however, reduces the VFS root's
> reference count beyond the initial value before the bootm.
> 
> This led to a warning on boot that can be reproduced by repeating the
> dry run multiple times:
> 
> [...]

Applied, thanks!

[1/1] test: py: add dry run check for FIT image
      https://git.pengutronix.de/cgit/barebox/commit/?id=05668708b308 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



