Delivery-date: Wed, 30 Oct 2024 09:51:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t64Ps-002d39-1A
	for lore@lore.pengutronix.de;
	Wed, 30 Oct 2024 09:51:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t64Ps-0001tP-Vx
	for lore@pengutronix.de; Wed, 30 Oct 2024 09:51:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MTsBKLO4OfvyH1I2z2sk1YcptTLbxnxheAOKIxbMKlo=; b=FOkN9uFsMdGrA4iLVPyNySGjfe
	oCu5WDAnRRKDsRsjFU8M/YOAYj9h7pi6I/3C91ZJqgw34uilrtQiAXBaCp9TXZTLaohyWaZi4+605
	VZ5BdDPVDlSPK5paNyVlaZuv2tcX5sjZt7QLhNQCs41o5xygiX5JZj+EKwDMZE3sqksGWFcGS15yP
	L/pLWleBhL9rrHbqK+QYMmxt+wmEHlEP0iBxHb0oJIPNSZdZmUWBRAOO34hf3OKlzWSS1K89sA4/x
	3EnId8EsT3Pw1BQJSzh+Ml2DGtcqFb6sWfbVVvUax9r3I3kWNI/hlVbrTER6w1xz8/gSIUcV8qc9T
	YCrqAj6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t64PT-0000000HKUl-3Eu3;
	Wed, 30 Oct 2024 08:50:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t64PQ-0000000HKSw-0uS2
	for barebox@lists.infradead.org;
	Wed, 30 Oct 2024 08:50:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t64PP-0001ob-0o; Wed, 30 Oct 2024 09:50:31 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t64PO-001AOa-2i;
	Wed, 30 Oct 2024 09:50:30 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t64PO-004M3l-2R;
	Wed, 30 Oct 2024 09:50:30 +0100
Date: Wed, 30 Oct 2024 09:50:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <ZyHzVg49zRZnDTa2@pengutronix.de>
References: <20241028-fix-noisy-debug-calls-v1-0-e84ce4272313@pengutronix.de>
 <ZyDkFmfY5-X52Rmy@pengutronix.de>
 <fc2b9447-9c2e-473b-94ab-991e13bf6095@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fc2b9447-9c2e-473b-94ab-991e13bf6095@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_015032_276444_CD8FA0B2 
X-CRM114-Status: GOOD (  26.36  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] downgrade noisy debug calls in block devices and
 ramfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 29, 2024 at 03:12:59PM +0100, Stefan Kerkmann wrote:
> Hi Sascha,
> 
> On 29.10.24 14:33, Sascha Hauer wrote:
> > On Mon, Oct 28, 2024 at 05:17:00PM +0100, Stefan Kerkmann wrote:
> >> These two patches are the outcome of an investigation why loading a
> >> fitimage from an eMMC took nearly 7s - the sheer amount of generated
> >> debugging messages slowed down the system by a factor of ~21 with
> >> KConfig options:
> >>
> >> 	CONFIG_COMPILE_LOGLEVEL=7
> >> 	CONFIG_DEFAULT_LOGLEVEL=6
> >>
> >> Which is the current default combination for barebox.
> > 
> > This is not the default combination. The default is:
> > 
> > CONFIG_COMPILE_LOGLEVEL=6
> > CONFIG_DEFAULT_LOGLEVEL=7
> > 
> 
> Oh! You are right, I totally mixed that up.
> 
> > The rationale is:
> > 
> > Do not compile in debug messages by default (CONFIG_COMPILE_LOGLEVEL=6)
> > unless DEBUG is defined in a source file. When DEBUG is defined then make
> > sure the messages are printed (CONFIG_DEFAULT_LOGLEVEL=7).
> > 
> > There are tons of debug messages throughout the code which normally
> > shouldn't be compiled into the binay.
> > 
> 
> When triaging a problem I like to gather a good overview by generally enabling
> all debugging messages. But the important bits would drown in the block/ramfs
> messages. So I would still argue that it is worthwhile to downgrade the level to
> verbose debug.

Yes, indeed. We should prefer pr_vdebug/dev_vdbg in hotpaths.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


