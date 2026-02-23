Delivery-date: Mon, 23 Feb 2026 10:16:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuS3d-004mNt-1Z
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 10:16:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuS3d-0001B7-Lz
	for lore@pengutronix.de; Mon, 23 Feb 2026 10:16:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GfdU/nMeKduvCRPIWbNmZUorhAhFS7fwmPdYXwD14No=; b=bhSp6iZlqfCGW0j2lXrw63GFBO
	qLKnRlIb3ydkj2HYDvCLiBzMoiJgv0eJtaoD1KQUFhmF+yZ1YSVDn6hdy3HV/CfHuCCJv63zulPZj
	PglHry+/eDySz9k0ZzaeduoA2b/HjPhdNAEKMRqlwT0pcXUvw2XFbvVrHeeNpQMSQZ1FYRNana/bO
	oBQ2lXhH+SAe8gN9nxP/M1m9yKf9hotpvv4V1vqZMAu4LiXr8XOmpC9DQ4FGLBLQTiG048vQ/JLOi
	YKi0qv1iLyiSdaDdCt/sH4po2rApXAfb7F9pUZlbCOIvHvPhG+rIvxs0Hb+mdSU3SWFyjd4R2poj4
	y1xyavlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuS3I-0000000HW55-2WiW;
	Mon, 23 Feb 2026 09:16:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuS3F-0000000HW49-29ha
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 09:16:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuS3D-00013a-Th; Mon, 23 Feb 2026 10:16:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuS3C-002ChW-1F;
	Mon, 23 Feb 2026 10:16:23 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuS3D-00000000ncA-2pkr;
	Mon, 23 Feb 2026 10:16:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260218122041.848881-1-a.fatoum@pengutronix.de>
References: <20260218122041.848881-1-a.fatoum@pengutronix.de>
Message-Id: <177183818367.190705.9716524074894492460.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 10:16:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_011625_555199_FD1776AA 
X-CRM114-Status: UNSURE (   7.19  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: overlay: propagate error unflattening DTBO
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 18 Feb 2026 13:20:40 +0100, Ahmad Fatoum wrote:
> of_unflatten_dtb() may return an error pointer when parsing of the
> device tree blob failed. Error pointers were not checked in
> of_overlay_apply_dtbo() leading to a panic when they were later
> dereferenced in of_copy_node().
> 
> Add an early exit to fix this.
> 
> [...]

Applied, thanks!

[1/1] of: overlay: propagate error unflattening DTBO
      https://git.pengutronix.de/cgit/barebox/commit/?id=5dacdb56e0cc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



