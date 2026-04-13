Delivery-date: Mon, 13 Apr 2026 09:30:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBkE-00BdcU-27
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 09:30:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBkE-00055a-4W
	for lore@pengutronix.de; Mon, 13 Apr 2026 09:30:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pxXMbXSh62WBNT4iKPDRPPP0AtIibo41MmasaWpkg2g=; b=vIrtBLJGRA1Qc7H12zQLeB/iWY
	JWEOgyd+6Nwz6koi13LVDw9W62d6e2JgkhR465in7ojXl4NuEqo6JAZdoWImk+ldXFR9a9okuRdGn
	BS+PjIbWAJHtG0RvkFdKSENhDhZs+BNIqXhxX7ai8nVscg6P7rgnO/xy7DjYn5/jaxT1FRh3HYUkD
	x/cOZE1UWTAW9GE1tfVmSe8QIMGwl3zk2ZO/bb3GU1A4wRX+ddvJ+QrSLTgjpGBn+kQ/dZlQ+YGpJ
	Y0E6UENF8qQqRIi7F1sVjo4q2MwtN6T84VX+cA4GYkASd4qvKFSPyDgfvDLzSyUwOoTc5jXYMw/ZI
	j1UqVrAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBjt-0000000F9fI-1KmZ;
	Mon, 13 Apr 2026 07:29:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBjs-0000000F9f7-39SM
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 07:29:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=pxXMbXSh62WBNT4iKPDRPPP0AtIibo41MmasaWpkg2g=; b=o3UZUZt+NddYitfFDwdj+R/atC
	VjKd62MtFsYSQBBPFIlSpyKMpnrgBTnn1220HlciIkSpkOZtJZARHgyoLtqyRlwqxAnuACp4aiNWk
	0H5DKVNYZz8Op4sY0Yt2b85HA/RwiYiw7+EVriPG6mcm7jNKwkX0HAPXkk7HAs5t18q5WHJOzFRph
	8H6Sq+fMHCKJ8ndSm8iK4yXV40evpu+4u38z38gT3CV+Z188NeecGERdDoopDNRzZoz8QzhDXrfbg
	11z1RFF9Ya8K4ZSlxG3HEVwCThok63xc/ZSd2hHEV/kk1m/WhfMNycvHIHb2dNel2+NSewBoVk6UP
	xBgvJ8GQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBjp-0000000GHTD-2BWd
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 07:29:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCBjp-00050M-61; Mon, 13 Apr 2026 09:29:41 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCBjp-0058D0-00;
	Mon, 13 Apr 2026 09:29:41 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCBjo-0000000EgAt-3vlC;
	Mon, 13 Apr 2026 09:29:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Grzeschik <m.grzeschik@pengutronix.de>
In-Reply-To: <20260409-simple-fixup-v1-1-5c4f16de17bd@pengutronix.de>
References: <20260409-simple-fixup-v1-1-5c4f16de17bd@pengutronix.de>
Message-Id: <177606538093.3498703.500625577633139877.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 09:29:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_082941_834636_8E609414 
X-CRM114-Status: UNSURE (   5.54  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: simplefb-fixup: IORESOURCE_BUSY is deprecated
 use reserve_resource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 09 Apr 2026 14:10:18 +0200, Michael Grzeschik wrote:
> Since the IORESOURCE_BUSY was retired, the simple-fixup driver was
> missed to be changed. We fix this and also mark the driver memory as
> reserved.
> 
> 

Applied, thanks!

[1/1] video: simplefb-fixup: IORESOURCE_BUSY is deprecated use reserve_resource
      https://git.pengutronix.de/cgit/barebox/commit/?id=1069125230bc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



