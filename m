Delivery-date: Mon, 23 Feb 2026 12:27:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuU5r-004oX2-2P
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:27:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuU5s-0007SN-28
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:27:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NKRzjouHOsUe/g6rRlZsCKJhNdkEP9f/mhagjQRVga8=; b=I0+qg2wVueprj5PR04j/c/7KOs
	Q96zFUh1HxV3Fgy1eg1JUUUZ7H0qIqiPhHozaYMvHoQX0dlIPfIDCla2VpnMu6GZNtzgvixG8Jyo0
	SeklHzMpe8+aKIc81ePVkPFzYzXvDJqB+YkmTLe3lUKRQfZihtyTlZmwHbZold2thPFEpGWej80kz
	JdWFJclYoNxmseQTE3l9flnw3XswgTcSUii2/rgGrO13tVUr9oijuMvcxAzCDjPtYJqQ8NWIrKZHz
	4ucscH8QXq1GLKv/i4St/5S5EsYbjMuxdD2sNFag0GrYfJrLIZlOVRGerzzfUsZGdjL2/z0PvNCq4
	sJVy774Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuU5V-00000000B4M-2XUB;
	Mon, 23 Feb 2026 11:26:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuU5S-00000000B3v-31HS
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:26:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vuU5R-0007Pb-0H; Mon, 23 Feb 2026 12:26:49 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vuU5P-002Dks-1W;
	Mon, 23 Feb 2026 12:26:48 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vuU5Q-000000017eD-345L;
	Mon, 23 Feb 2026 12:26:48 +0100
Date: Mon, 23 Feb 2026 12:26:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aZw5eIlceHn8vkKx@pengutronix.de>
References: <20260126105541.1859911-1-a.fatoum@pengutronix.de>
 <176978026406.813066.3122051822084677539.b4-ty@pengutronix.de>
 <45ca4461-ef3f-422b-976b-ad17bd6f39e1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <45ca4461-ef3f-422b-976b-ad17bd6f39e1@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_032650_756764_F0ED16DA 
X-CRM114-Status: GOOD (  17.61  )
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
Subject: Re: [PATCH] commands: bootm: add proper support for boot script
 calling bootm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Feb 16, 2026 at 09:54:35AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 1/30/26 14:37, Sascha Hauer wrote:
> > 
> > On Mon, 26 Jan 2026 11:55:41 +0100, Ahmad Fatoum wrote:
> >> If a boot script calls bootm and it returns whether due to error or dry
> >> run, bootscript_boot() will just call bootm again leading to confusing
> >> output.
> >>
> >> Let's detect whether bootm was called and skip calling it again in that
> >> case. This will allow boot scripts to do cleanup in future.
> >>
> >> [...]
> > 
> > Applied, thanks!
> 
> THis commit was previously applied, but after a rebase on the current master,
> it's no longer in next. Is this intentional?

No, applied again.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


