Delivery-date: Wed, 11 Feb 2026 10:34:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq6cZ-000UBS-1j
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 10:34:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq6cZ-0001L3-R8
	for lore@pengutronix.de; Wed, 11 Feb 2026 10:34:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BAIeiKQTf41woXlq4iS1pTszfPc+Wh2Clrt793ltxnQ=; b=p8LREC3n0oIdcME6pWistqec3U
	lkwToqYvdzsbPhbFgqzFwxqRTVl/45QZqNmaqzhKqegBWNt4uqWs8lEGYVyujcgfbelLDOkVjYkm4
	k2PLCJc+fEwfh1l5dvVd2fkT9mf8bk2UyU2BIAd6l4syP9NRtSzu8PkxbB2iM61FLclHIzx//EzA/
	Hlk15lt3MTWwtdJakJl0SrAfywZcix/x+OoU25H5P835t75qmRwdi7E2WdxmtSkY5jT5j5CbP74xI
	Wy+WRoexplh2TbxkHYW9vFblQRiF7L49TaJNt+O7o6Uy0qfjUQFMFViqOnaPTnc/5F56nFO8f3Yw9
	7fbT76kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq6c2-00000000RX4-1u9o;
	Wed, 11 Feb 2026 09:34:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq6c0-00000000RWi-1mxZ
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 09:34:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vq6bw-00015B-9a; Wed, 11 Feb 2026 10:34:16 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vq6bu-000DnF-2P;
	Wed, 11 Feb 2026 10:34:16 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vq6bw-0000000EzLC-08zc;
	Wed, 11 Feb 2026 10:34:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260210115027.1363648-1-a.fatoum@pengutronix.de>
References: <20260210115027.1363648-1-a.fatoum@pengutronix.de>
Message-Id: <177080245603.3572371.15731282374190653016.b4-ty@pengutronix.de>
Date: Wed, 11 Feb 2026 10:34:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_013420_466734_76CF31D4 
X-CRM114-Status: UNSURE (   7.15  )
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
Subject: Re: [PATCH master] ci: container: fix various breakage in
 container build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Feb 2026 12:50:24 +0100, Ahmad Fatoum wrote:
> The LLVM apt repositories can't be used at the moment without further
> changes to sequoia configuration:
> 
>    Signing key on 6084F3CF814B57C1CF12EFD515CF4D18AF4F7421 is not bound:
>               No binding signature at time 2025-08-09T21:49:56Z
>      because: Policy rejected non-revocation signature (PositiveCertification)
>               requiring second pre-image resistance
>      because: SHA1 is not considered secure since 2026-02-01T00:00:00Z
> 
> [...]

Applied, thanks!

[1/1] ci: container: fix various breakage in container build
      https://git.pengutronix.de/cgit/barebox/commit/?id=ffd4db2ea98e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



