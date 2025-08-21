Delivery-date: Thu, 21 Aug 2025 21:13:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upAjX-0033z6-35
	for lore@lore.pengutronix.de;
	Thu, 21 Aug 2025 21:13:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upAjW-0007xu-QR
	for lore@pengutronix.de; Thu, 21 Aug 2025 21:13:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HYk7EwzzeVnwU0p5h27gb5wS/5qHbl7Fh7rMiiW+W1A=; b=WOgxJbfiHo7p9A3I1xKBsI+egr
	Kh2OM1YN3UXqC/3rVnHRq1dQWSU5ssdopap/uPv20MQx/G7KFB4Cp1e4MVP0q0hE5DLLzbxe1YiTE
	pFjNvUb7d4N6b2ZBE9A/G5YyR43wfDfVM5v4q2FdC9antg8SRt3r3MlrghJgX6BjPnEosuxJu3Caf
	cURfeBNepqHFMFl7llc5+hqbvWpvdbKhjSJutsvSQte25shtbBX9a/VlrhozyS4nylis6mdInubB7
	OG2VFxQ4/X2cj1boklMYQ4ajG65KEDxQ1dosCWAeeEkezcR4312rLvW08ZYzqS1x9RgaibKWCVRPC
	nFm6t/Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upAir-00000000Ftr-2Mn6;
	Thu, 21 Aug 2025 19:13:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up658-0000000HBmj-14v0
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 14:15:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1up655-0000PR-Dw; Thu, 21 Aug 2025 16:15:55 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1up655-001QT9-0n;
	Thu, 21 Aug 2025 16:15:55 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1up655-0083Rj-0S;
	Thu, 21 Aug 2025 16:15:55 +0200
Date: Thu, 21 Aug 2025 16:15:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Message-ID: <aKcqG3-GGxFvjqd2@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
 <20250820-security-policies-v1-15-76fde70fdbd8@pengutronix.de>
 <227a5210-f01f-48ce-9908-50ebc01931a8@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <227a5210-f01f-48ce-9908-50ebc01931a8@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_071558_292935_3FF1990A 
X-CRM114-Status: GOOD (  17.29  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 15/24] boards: qemu-virt: add security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Aug 21, 2025 at 08:57:10AM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 8/20/25 15:17, Sascha Hauer wrote:
> > From: Ahmad Fatoum <a.fatoum@barebox.org>
> > 
> > To make it easier to experiment with security policies, add four example
> > configurations, two via the build system and two "externally".
> 
> The configs need a make security_olddefconfig due to the addition of the
> new symbols in later commits.

Indeed.

One thing I just noticed is that the qemu-virt board is built for both
32bit and 64bit boards. The sconfig files are currently suitable for the
32bit variant, but enabling security policies in multi_v8_defconfig
results in a

Security policy qemu-virt-lockdown.sconfig.tmp was not up to date.

This is not a problem since security policies are only enabled in
virt32_secure_defconfig, but nevertheless that's something we might want
to improve somehow.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


