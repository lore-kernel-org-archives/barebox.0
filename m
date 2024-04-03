Delivery-date: Wed, 03 Apr 2024 14:26:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrzgz-0067zS-09
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 14:26:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrzgy-0003Sx-Gd
	for lore@pengutronix.de; Wed, 03 Apr 2024 14:26:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I3mPM4gF29ESWnSobofeR7f6Z0U6vCg6R+ttQb3mbCc=; b=SBEFIaf0QSNwZM3S5sTgID5bvN
	PJ/ef6x8BDpS8HNq7RrcZ1mrWBGGiT7GfM3S/oFVfVmLWSBn7bT1fNVNiUjdx9hgsv2Mmi0IbtMor
	6I0jjsLC0ProP/+QyfG68fUElKtjlsIaD9hUVfC3FjAB84wD/EI+Hxl8OWKKiM40nFKYu/U2pnUK3
	opfnWL1om3nTNI4dsP87W9kf47xRlbFHyAt78KvggLZGkK+6qBkNVRB8EMq5tv3ICFnbZR9ON22Ce
	pCPGBlJNIhtBoAJHmpe7RUnJ4SDwQekji5CO+RQMSyNYAnn5Q4UDBXlVrkl4zRf0B5EYyVDcDohjz
	WX7ZH9lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrzgS-0000000Fw36-1Se9;
	Wed, 03 Apr 2024 12:25:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrzgP-0000000Fw2D-2Y0Q
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 12:25:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrzgN-0002xj-Jc; Wed, 03 Apr 2024 14:25:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrzgN-00AApz-7K; Wed, 03 Apr 2024 14:25:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrzgN-007CLH-0X;
	Wed, 03 Apr 2024 14:25:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240403090353.2976380-1-a.fatoum@pengutronix.de>
References: <20240403090353.2976380-1-a.fatoum@pengutronix.de>
Message-Id: <171214713516.1715686.10965153804222791943.b4-ty@pengutronix.de>
Date: Wed, 03 Apr 2024 14:25:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_052537_798994_C6E2EEDC 
X-CRM114-Status: UNSURE (   7.85  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] mci: improve packing of struct mci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 03 Apr 2024 11:03:52 +0200, Ahmad Fatoum wrote:
> rca will be at least 4-byte aligned due to being after a 4-byte member.
> It's only 2 byte long though and followed by another 4 byte member,
> wasting 2 bytes. Fill those up with the two 1-byte bool members we have.
> 
> This includes a change of type for high_capacity: This is ok, because
> only 0 or 1 are ever saved into it.
> 
> [...]

Applied, thanks!

[1/2] mci: improve packing of struct mci
      https://git.pengutronix.de/cgit/barebox/commit/?id=126a04803941 (link may not be stable)
[2/2] mci: remove FIXME in rca description
      https://git.pengutronix.de/cgit/barebox/commit/?id=fa6c38a55d8d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



