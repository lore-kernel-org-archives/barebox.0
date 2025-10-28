Delivery-date: Tue, 28 Oct 2025 09:16:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDesG-00Cccw-1o
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 09:16:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDesG-0001sp-0E
	for lore@pengutronix.de; Tue, 28 Oct 2025 09:16:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wFpNJ6EwqDb54e7RlcSxp+fHt2eB760zszGGAj57X+4=; b=bsRe3rj8Bsh8IU0cTACcXdL8oM
	ZSoOGaj9pofXdeXs+BR0gSxMsuRFcWtSBaM5453k3hBiS9Oc9757sqU3gEuJ0Qj39IoUal+AL1VKL
	wHyl2olTTSe7VnQP3C5wXPxE1bQxEAeGZDknz6m4UN+2pSa/1nDaYvMHv8sqpOO/MWYKLOwnE9OAm
	q1LD6UptAzaGGsDAQDjSKx3YXiJBuWTKiSk0k/SvsCn4u9BhN/LOlu6psKrMUhjwfJ7G3ONx2qayF
	RWlHbmc6sctEV3Qb2en5nrQ3ieUjod25KllJ1ffQ7g5jkLULTXs6cpYBaSWXxa4K9s0jflpIiIUAp
	rywucxqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDerh-0000000FW3d-0MBQ;
	Tue, 28 Oct 2025 08:15:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDere-0000000FW2d-2ddA
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 08:15:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vDerc-0001ls-PO; Tue, 28 Oct 2025 09:15:32 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vDerc-005qND-1w;
	Tue, 28 Oct 2025 09:15:32 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vDerc-004zpr-1e;
	Tue, 28 Oct 2025 09:15:32 +0100
Date: Tue, 28 Oct 2025 09:15:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
Message-ID: <aQB7pCLM3ejK1wXh@pengutronix.de>
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
X-CRM114-CacheID: sfid-20251028_011534_668732_97893FDC 
X-CRM114-Status: GOOD (  24.14  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
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

Until this is fixed we might want to adjust this text to reality:

BAREBOX_CMD_HELP_TEXT("list memory leaks encountered since the last time")
BAREBOX_CMD_HELP_TEXT("the command ran.")

> 
> On the bright side my talloc series removes the long standing leak in
> hush, so it's less of a bother. :D

Indeed, it's useful as is, but let's mention the issue somewhere.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


