Delivery-date: Mon, 27 Apr 2026 10:58:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHHns-00Gsvl-0p
	for lore@lore.pengutronix.de;
	Mon, 27 Apr 2026 10:58:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHHnr-0005uv-MF
	for lore@pengutronix.de; Mon, 27 Apr 2026 10:58:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6M088nsx2Oj42xxAbMce1uUmb559p1spd+VrFeFo9gw=; b=lM791EeaiPvfnmwgMP1aBBoTmr
	qMImkFoYt9uNzn61lRqH6pUSbwMxGpalboBWjm9Zzyt4SOpWF7EmvAjlaeGi0ioudQ3seLaWp4XLE
	Edh7rmuYEjPctSGOWKUSACjwg7Mfg/uKRv6tH2EKkbgmUaz0ybAacCpeFl2SaDcyNSxSg1gJjxG6o
	QcR4SzriRr+mUTOZAyuSSFL2Cy4vX9PRXMVRQ+nD6+wr1bR3+nlZB8rZxDP9aZ8WvKNKevmp+AHee
	vL7IhFcB/asAwIXo0GZobg2dXRcUO9xovMR8scmQsmzEbjI0UrXOtRCOxGW7HuPkF5dPZblJD2x0L
	e4Y+4VTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHHnF-0000000GWZs-3nS3;
	Mon, 27 Apr 2026 08:58:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHHnC-0000000GWZW-2XBC
	for barebox@lists.infradead.org;
	Mon, 27 Apr 2026 08:58:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wHHnA-0005iU-NU; Mon, 27 Apr 2026 10:58:12 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wHHnA-007Sc2-0x;
	Mon, 27 Apr 2026 10:58:12 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wHHnA-00000001JEy-0qAl;
	Mon, 27 Apr 2026 10:58:12 +0200
Date: Mon, 27 Apr 2026 10:58:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	barebox@lists.infradead.org
Message-ID: <ae8lJG6VB2CG-ukg@pengutronix.de>
References: <20260416134518.3282395-1-eagle.alexander923@gmail.com>
 <d437f1d8-c079-4e17-ab67-f9090be6af9f@pengutronix.de>
 <CAP1tNvSfV1Yz0f9NDaN-e88KYFzPNkC16ZjTRPSyBd-hNKXMyg@mail.gmail.com>
 <29fb6d15-f449-45ee-8b2f-485a618ec573@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <29fb6d15-f449-45ee-8b2f-485a618ec573@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_015814_669352_29D77150 
X-CRM114-Status: GOOD (  21.47  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Apr 24, 2026 at 04:53:59PM +0200, Ahmad Fatoum wrote:
> Hello,
> 
> On 4/24/26 10:46 AM, Alexander Shiyan wrote:
> >> On 4/16/26 3:45 PM, Alexander Shiyan wrote:
> >>> This adds support for the extlinux.conf configuration format, commonly
> >>> used by Syslinux and many Linux distributions. The configuration file
> >>> is typically located at /boot/extlinux/extlinux.conf or
> >>> /extlinux/extlinux.conf and defines boot entries with kernel, initrd,
> >>> device tree, and command line options.
> > ...
> >>> +static int extlinux_boot(struct bootentry *be, int verbose, int dryrun)
> >>> +{
> >>> +     struct extlinux_entry *e =
> >>> +             container_of(be, struct extlinux_entry, entry);
> >>> +     char *kernel_abs, *initrd_abs = NULL, *fdt_abs = NULL;
> >>> +     struct bootm_data data = {};
> >>> +     int ret;
> >>> +
> >>> +     bootm_data_init_defaults(&data);
> >>> +
> >>> +     data.dryrun = max_t(int, dryrun, data.dryrun);
> >>> +     data.verbose = max(verbose, data.verbose);
> >>> +     data.appendroot = true;
> >>
> >> Not sure this is a good idea because of potential of clashing with
> >> extlinux appended command line options.
> > 
> > globalvar_add_bool("extlinux.fix_root", NULL); ?
> 
> global.extlinux.strip_root to remove root=
> and bootm.appendroot to add barebox' own root?

We already have the latter, so nothing to do here.

Shouldn't we by default remove the root= option once data->appendroot is
set? Also in the bootspec case we do not want to end up with two root=
options.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


