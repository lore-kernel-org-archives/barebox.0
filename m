Delivery-date: Tue, 22 Oct 2024 10:07:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39v2-007NwG-31
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 10:07:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t39v2-0000Eo-Bi
	for lore@pengutronix.de; Tue, 22 Oct 2024 10:07:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L1zdMcq9C6m2NMgs8ZV0xkTOIa7dMgWx1pIfk9SZRss=; b=mHV+2DVrduPt2ertxvBehhR6LQ
	1IIn5kZ+4W5XyAEb6fDMmI5q/l8T9XbIMcVV6Rq/pD/rz5IiqQF2WtZ4v7b/7oHK66H3EtJftA6r8
	z2jG8HcjZGINFm9xMpYGBEDtVWccaVCmP9bIlIaNVccHFo4f71soeQIZnz+qblFOPaJE+7uIJVUAi
	xzbAnAAgSawdWIAj/XRTb5S1+YhNL4EblZPOT+vU0XI5/6PWrAl4HNHXl0Fqb0AC4FR7ol76UX/ez
	QEb4rWLaFEiP1jQ8pPm1XTQlYtIYn0elUB1lR1hSPji/OmppViWXexUUX8V+0t/tNhTox9EOBhJKW
	mGgBXRAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t39ua-0000000A6Vh-09Eq;
	Tue, 22 Oct 2024 08:06:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t39uY-0000000A6Uo-32As
	for barebox@bombadil.infradead.org;
	Tue, 22 Oct 2024 08:06:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=L1zdMcq9C6m2NMgs8ZV0xkTOIa7dMgWx1pIfk9SZRss=; b=rN20WJVPm0swxTgyaxzUdI/QVb
	juYZfL6tW8srIlB//agE0xCACjzQj7kFnvPJqn2xua1w9RZ2vaVk0Jytc/HzE7IXHw9i/U728Je6F
	QrFJGUTc8l1SdxRLBjMo+H7yN1FVHI6KsHtVLVpJCD/ix97/LOj1cwUaPCRm7mscEi4VwwUN9nNVm
	To7UW/GhHeCvUuOa5C58hDex7xGBdBaoT5gVCBR6uT7SHC0GqfRJrC7GcV2YUe2gKnX2uppmHxk6j
	xVwOqB534YjCrYtBgH7HnXvF71P8o4f0vjVbJIEtr3srhNR0bQBMpPKxMGsz5c16VOOZppKlCofHu
	+/N1POZA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t39uV-000000089li-0jgG
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 08:06:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t39uT-0008Vf-M9; Tue, 22 Oct 2024 10:06:33 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t39uT-000pRJ-1c;
	Tue, 22 Oct 2024 10:06:33 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t39uT-007W9Q-1L;
	Tue, 22 Oct 2024 10:06:33 +0200
Date: Tue, 22 Oct 2024 10:06:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZxddCfC8-x4689Gk@pengutronix.de>
References: <20241015082029.1664824-1-a.fatoum@pengutronix.de>
 <Zw4oeghWigZqclfe@pengutronix.de>
 <ac45db07-1ad7-4b15-ab57-56c6fdea82ff@pengutronix.de>
 <30c81aa5-68fe-4872-8091-d0c253d4edc3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <30c81aa5-68fe-4872-8091-d0c253d4edc3@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_090635_528572_BAF544B3 
X-CRM114-Status: GOOD (  20.33  )
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
Subject: Re: [PATCH] fixup! dma: give dma_alloc_coherent a device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 21, 2024 at 10:00:50AM +0200, Ahmad Fatoum wrote:
> On 15.10.24 10:37, Ahmad Fatoum wrote:
> > On 15.10.24 10:31, Sascha Hauer wrote:
> >> On Tue, Oct 15, 2024 at 10:20:29AM +0200, Ahmad Fatoum wrote:
> >>> Should've been part of the original patch.
> >>> This fixes CI failure for ARM64.
> >>
> >> The patch you are fixing here doesn't apply on any of my for-next
> >> branches. I'll drop it for now and apply it right after the next release
> >> instead.
> > 
> > Sure, no problem.
> 
> This is still broken in next (master is fine).
> Should I resend the last patch or can you squash this fixup?

master was fine because "dma: give dma_alloc_coherent a device
parameter" was lost. I applied it now including the fixup. Please check
the result.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


