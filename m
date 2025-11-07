Delivery-date: Fri, 07 Nov 2025 14:24:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHMSC-00GJEq-17
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 14:24:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHMSB-0003kx-Pv
	for lore@pengutronix.de; Fri, 07 Nov 2025 14:24:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S6u0UkQy2dU0l7W5r1N2RDyeSqzYHvGbS2Xg1W91Kp8=; b=mRauDv9S3x9qEsSANGpKhn7m6i
	NqD/eyuURAqAPwE0iXdUnupMY1vRufWlvCcVSnSa58bVQsMS9VyDp8fmVWHZoUUFBjLSNaQwugIyi
	87TgRd8Q4gd7KEfcUc/Z9YvLU4vBKy/ict18J5PYq87OW9MOCHWz2wnu6mgR2KyA/RiC/s+oikpiG
	YZYLcKLj4guWFKylcw2sFI94nx/qsRKNid5avRDYqKeXPu3hqUiw4961RETUrP6K7Me3IjSJbTCKM
	vhBhHXgCwYpgLUbXxbIfeMtRoyVEa671akiBZzi/9jS/yfV+bSUsyO3YsiWwAkZVAqnDIaZQLXN8C
	e+RqUpsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHMRn-0000000HOdI-1MiG;
	Fri, 07 Nov 2025 13:24:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHMRk-0000000HOco-3KAx
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 13:24:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vHMRh-0003fK-PS; Fri, 07 Nov 2025 14:24:05 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vHMRh-007XJU-1v;
	Fri, 07 Nov 2025 14:24:05 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vHMRh-006oFb-1Z;
	Fri, 07 Nov 2025 14:24:05 +0100
Date: Fri, 7 Nov 2025 14:24:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
Message-ID: <aQ3y9XOBgGnuuyHV@pengutronix.de>
References: <20251027074446.2474869-1-a.fatoum@barebox.org>
 <aQB3hThqS9P0wHuX@pengutronix.de>
 <ada2cb2b-e08a-4d02-bb04-15750352836f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ada2cb2b-e08a-4d02-bb04-15750352836f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_052408_900064_185D3290 
X-CRM114-Status: GOOD (  22.07  )
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
Subject: Re: [PATCH] sandbox: add memory leak debugging tooling around
 LeakSanitizer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 28, 2025 at 08:59:05AM +0100, Ahmad Fatoum wrote:
> Hi Sascha,
> 
> On 10/28/25 8:57 AM, Sascha Hauer wrote:
> > On Mon, Oct 27, 2025 at 08:44:45AM +0100, Ahmad Fatoum wrote:
> >> When enabled, this allows calling barebox_memleak_check() or running the
> >> checkleak command to instruct LeakSanitizer to sweep the memory and find
> >> unreferenced allocations.
> >>
> >> LeakSanitizier is also enabled along AddressSanitizer and runs on AMD64
> >> Linux automatically on exit already.
> >>
> >> +static int do_checkleak(int argc, char *argv[])
> >> +{
> >> +	unsigned int count;
> >> +	int opt;
> >> +
> >> +	while((opt = getopt(argc, argv, "l:")) > 0) {
> >> +		switch(opt) {
> >> +		case 'l':
> >> +			if (kstrtouint(optarg, 0, &count))
> >> +				return COMMAND_ERROR;
> >> +			(void)malloc(count);
> >> +			break;
> >> +		default:
> >> +			return COMMAND_ERROR_USAGE;
> >> +		}
> >> +	}
> >> +
> >> +	argv += optind;
> >> +	argc -= optind;
> >> +
> >> +	if (argc)
> >> +		return COMMAND_ERROR_USAGE;
> >> +
> >> +	memleak_check();
> > 
> > barebox exits in this call. Is this intended?
> 
> Until I figure out how to suppress it, yes, unfortunately. Haven't dug
> into the source code yet.

With __lsan_do_recoverable_leak_check() instead of
__lsan_do_leak_check() the progam doesn't exit.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


