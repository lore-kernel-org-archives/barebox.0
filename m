Delivery-date: Fri, 23 Jan 2026 10:06:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjD7m-004QWZ-2T
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 10:06:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjD7l-0001uc-QZ
	for lore@pengutronix.de; Fri, 23 Jan 2026 10:06:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VbbYW5xyhwumbv4T56aiDK/R8Hgw1ZEnAKytJuMsHDg=; b=3VLkrRfr0zJKmIshET3CzuFHtG
	4bAADipzMVfu3q5ZIiBC7/+EQCDgxUPe7lASrajBKFAgBidaVRRIjd2vQgDPKn5jOU/1gU74D2zl/
	0npUaQX+67VrtGYVpVwhNHrCLJTf0yTiGwliGgBKUM4ESFJGpoIHqT0Bo9AeVGayPX5T3UjNyODEL
	X7CjBRQkOqxDecp4M1SaRuVTlkhWP5atqBQpxB5gaqna4k17639oWAvjg4Onk/Va1m4194su9VyvT
	VpnEjFaXLvTS4dnFQdWfdaTSa4LShsCOYEwjN5GrsFCLmMDJTaK8x6W99ILQcUFkQyPSfPs1LA7kb
	4onqOqzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjD7G-00000008X2p-20Kd;
	Fri, 23 Jan 2026 09:06:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjD7D-00000008X2K-48W9
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 09:06:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjD7C-0001oa-7Y; Fri, 23 Jan 2026 10:06:02 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjD7C-00244n-2F;
	Fri, 23 Jan 2026 10:06:02 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjD7B-0000000GICF-42uy;
	Fri, 23 Jan 2026 10:06:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260120104957.41978-1-a.fatoum@barebox.org>
References: <20260120104957.41978-1-a.fatoum@barebox.org>
Message-Id: <176915916196.3883040.10475787974572019719.b4-ty@pengutronix.de>
Date: Fri, 23 Jan 2026 10:06:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_010604_028822_75C5A0C2 
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] efi: loader: protocol: gop: guard behind
 CONFIG_EFI_LOADER_GOP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 Jan 2026 11:49:52 +0100, Ahmad Fatoum wrote:
> The gop protocol implementation uses fb_open, which is only available
> with CONFIG_IMAGE_RENDERER=y.
> 
> Add a dedicated symbol for it and have it select CONFIG_IMAGE_RENDERER=y
> to fix link errors for configurations with CONFIG_VIDEO=y, but no
> CONFIG_IMAGE_RENDERER.
> 
> [...]

Applied, thanks!

[1/2] efi: loader: protocol: gop: guard behind CONFIG_EFI_LOADER_GOP
      https://git.pengutronix.de/cgit/barebox/commit/?id=b67d157088f9 (link may not be stable)
[2/2] efi: loader: remove dependency on LIBFDT
      https://git.pengutronix.de/cgit/barebox/commit/?id=f1402601008e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



