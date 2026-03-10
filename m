Delivery-date: Tue, 10 Mar 2026 11:44:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzuZn-00A4Hl-1Q
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 11:44:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzuZn-0002eO-Or
	for lore@pengutronix.de; Tue, 10 Mar 2026 11:44:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kEGYKi9QykrMOUbqNsfthKzGUFwOpdPSewbERV5FPFM=; b=zMT0WWVGSkNE6Tmxv6eV68HmoY
	oglK+Fa3cVCKzh/MQ9OJhPxY+V5xwQe0DeLa+6gA9kxAUyQrA6wQmfAVEqxQV3Tzug6awfQkDNH2q
	pEXsDKfUcnWJ8GElQw9WoCyD/4jezCh+FP8pHX9xQlNENHB9sTzWSS8MRiLzH5LMrPWgJfat06n8n
	6r96Nasa/5XXN6HZMCrryqd+OUz5vl5+DV7Yywdsekr+/3oH47XF711VNkJtOjwYBxQwl5i54Ye6/
	Ly86AoNASHWXon1jFLbyBQfUWH2fbCUeKMb09E1cDlyYqZSSS6MShPTqtt2e/JXJjYd6Y+CM5p6bh
	cWPHfMkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzuZR-00000009Duv-1HvX;
	Tue, 10 Mar 2026 10:44:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzuZP-00000009DuY-2oqo
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 10:44:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vzuZM-0002Yl-LQ; Tue, 10 Mar 2026 11:44:08 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vzuZL-004gNt-0M;
	Tue, 10 Mar 2026 11:44:08 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vzuZM-0000000BVMC-1Wc7;
	Tue, 10 Mar 2026 11:44:08 +0100
Date: Tue, 10 Mar 2026 11:44:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Message-ID: <aa_1-MX7hnrlJ3Ff@pengutronix.de>
References: <20260304-arm-setup-c-v2-0-d26af520ab03@pengutronix.de>
 <20260304-arm-setup-c-v2-2-d26af520ab03@pengutronix.de>
 <79efc69c-d161-4dc0-9a95-f6176b7331c7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <79efc69c-d161-4dc0-9a95-f6176b7331c7@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_034411_732563_2EEBC25E 
X-CRM114-Status: GOOD (  15.67  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Mar 04, 2026 at 10:05:38AM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 3/4/26 8:53 AM, Sascha Hauer wrote:
> > Add a bss_cleared variable that is set after the first call to
> > setup_c(). On subsequent calls, the BSS clear is skipped to avoid
> > wiping already-initialized data.
> > 
> > Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Minor point below:
> 
> > +.section .data
> 
> .data.bss_cleared or is it already in its own section?

Fixed while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


