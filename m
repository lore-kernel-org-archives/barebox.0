Delivery-date: Tue, 06 Jan 2026 14:12:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6rA-001u0S-1V
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:12:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6r9-0005dH-Tn
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:12:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xsca91Gg6eK0Q2R9F+nK22eTeIz4ZeY0vg35CQS5HGw=; b=ERtDsT+qAPE9LfZ+SBz0EdNIzu
	8dEWvvIMNIJaifsL9Ttt3Ue/o0dYZ8D1D/0Z/tdmuaHVXDJfBheJlVDSaAAg1rYJPQ7DNys5Recuv
	UiH94uYDhedu/HeVB8TpU11OA0VPMfqXTtV+Rxp7X0FLJgoyFJiuumuH5A49RxadS2UonjE9S2oh+
	5yCfimyvIiOl/++HNBb6pddscij9wCqrjah1F3DSC/8A2kTcwiXqGdk6rDvLc7WZrfx/pKeskTLX+
	whSXrp+jD76ZPf2TmKJ+IR6m21Rd5j7ekz8ix75/X86Tk0h+bC1PbpmkVOW3yCH0MfixntKRmwW8K
	OgK+BIyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6qn-0000000D4IE-1Lvq;
	Tue, 06 Jan 2026 13:11:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6qm-0000000D4Hb-0iCd
	for barebox@bombadil.infradead.org;
	Tue, 06 Jan 2026 13:11:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Xsca91Gg6eK0Q2R9F+nK22eTeIz4ZeY0vg35CQS5HGw=; b=oO3ZICtZhXPVJKsrWqdT7P2BKq
	jzafQtjajPTPG1g3am1fR5DME6alibQrxX/7WlNLYch2le/xxcuoyGiw2Z6PxwByXHGqTxbMRVvFT
	ihYG0bLCCUf45WZdKYa5d3OZbdq+pOpeuZ4ZqL9h9X4Eg5MQfuFCYT2vOKc6K+8LwXbq1nwk9Wtsk
	zR8Cgs9Ho6ANttlqsD1Y3hldTxrtpaidRmIKQ4kQdge4KioUIPz7wqfsE42ioLXEAl7weV6pXt/GY
	oyAhADjp98hSgCkHmROXpsym+/1x2itd78ZNWz49mylTugXjB+a+ls6bRK7aj2xoBOTYzeXhHBjPE
	hoEVDDUg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6qj-00000009k5X-0oou
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:11:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vd6qh-0005Sf-W7; Tue, 06 Jan 2026 14:11:48 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vd6qh-009LvY-2a;
	Tue, 06 Jan 2026 14:11:47 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vd6qh-00EK3U-2F;
	Tue, 06 Jan 2026 14:11:47 +0100
Date: Tue, 6 Jan 2026 14:11:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Message-ID: <aV0KE_g9ji407e8f@pengutronix.de>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-5-487bc760f045@pengutronix.de>
 <f901e957-4a87-46f7-8928-09cf171a4405@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f901e957-4a87-46f7-8928-09cf171a4405@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_131149_267318_0886BC24 
X-CRM114-Status: GOOD (  17.66  )
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
Subject: Re: [PATCH v2 05/21] riscv: define generic relocate_image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 06, 2026 at 02:10:02PM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 1/6/26 1:53 PM, Sascha Hauer wrote:
> > For use by the ELF loader in PBL to relocate barebox proper, export a
> > new relocate_image capable of relocating barebox and implement
> > relocate_to_current_adr() in terms of it.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> > -	dstart = runtime_address(__rel_dyn_start);
> > -	dend = runtime_address(__rel_dyn_end);
> > -	dynsym = runtime_address(__dynsym_start);
> 
> Interestingly dynend wasn't used here and no memset, unlike for ARM and
> also it needs dynsym even with RELA...

Yes, as said, the memset is only needed for multiple relocations of the
same image. Likely nobody trapped into this on RiscV.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


