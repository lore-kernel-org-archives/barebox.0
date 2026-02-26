Delivery-date: Thu, 26 Feb 2026 13:02:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vva4T-005s8d-0Z
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 13:02:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vva4T-0004hH-Gy
	for lore@pengutronix.de; Thu, 26 Feb 2026 13:02:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vt92OefhOCChOlmvYP46xMaPVl6Rm8m65uGffjBePag=; b=St5aSaj4sVEm3o3hXY7E1zak8H
	OmhkdbCiVDTaui45MEia9+Og8O0YJFvp/J3WOKMKEwwBmuM42PKuWUQNkLKj7UYPGmkJlJT9tK9D/
	8/xDoYUXOWVmGGFcGLFFSj9ShJ0lR1mIwJxvOkrRDg1Yg5EfM1P0NGH0qJCBBOVDJ5vjD4VR4PMb5
	pA086ZX0cGJiOu8K1I3pPDVqs3N3lzolBwf3bY2KeWtTMom+Su/kjM5yqaG9uz28zA1BfB1SlzgUK
	s9UyXYiJJS1ZyNR7lwolNE3QO8FejVDHva1jVqQsFOpgn8FfkNUt7g0i8JCz2QRKCY9QzH/VxQt2C
	YTfO6QlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vva3s-0000000657z-08rQ;
	Thu, 26 Feb 2026 12:01:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vva3o-00000006573-3wUg
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 12:01:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vva3m-0004Pc-Qw; Thu, 26 Feb 2026 13:01:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vva3l-002iu9-0x;
	Thu, 26 Feb 2026 13:01:38 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vva3m-00000007r1Y-2S9J;
	Thu, 26 Feb 2026 13:01:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260225151007.412926-1-a.fatoum@pengutronix.de>
References: <20260225151007.412926-1-a.fatoum@pengutronix.de>
Message-Id: <177210729857.1871993.734875799502942547.b4-ty@pengutronix.de>
Date: Thu, 26 Feb 2026 13:01:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_040140_978428_52EA8598 
X-CRM114-Status: GOOD (  10.30  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] Documentation: migration-guides: split off
 2026.02.0 into own file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 25 Feb 2026 16:10:04 +0100, Ahmad Fatoum wrote:
> Having a single migration-master.rst turns out to be error prone, because
> presumably git detects the rename of the last release and adds new
> entries not to migration-master.rst after the rebase, but to the
> migration guide for the former release.
> 
> This seems to have happend with commit 09663fb38ffd
> ("startup: attempt poweroff if no shell and nothing to do"),
> so move it back into the correct file and while at it add a
> migration-master.rst right away.
> 
> [...]

Applied, thanks!

[1/2] Documentation: migration-guides: split off 2026.02.0 into own file
      https://git.pengutronix.de/cgit/barebox/commit/?id=b25e4295954b (link may not be stable)
[2/2] Documentation: migration-guides: 2026.01.0: clarify fsdev linux.bootargs change
      https://git.pengutronix.de/cgit/barebox/commit/?id=aeca7cbbdd56 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



