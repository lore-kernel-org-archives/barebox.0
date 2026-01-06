Delivery-date: Tue, 06 Jan 2026 10:26:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd3KD-001qLW-1O
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 10:26:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd3KC-0001fw-Sj
	for lore@pengutronix.de; Tue, 06 Jan 2026 10:26:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+ezrzcS3ks5tjk9EtXImMVwzLVMXVyvw9Sn6RvwVOyY=; b=ONXezZIduzAx9UfLvs4ZsBW5nR
	cmg16qtsDgtPCpgb5pDUtzbPd8p8D/tfJZyjgvbYETiQQxdqZZhhP4POxV7b8nBT0wXZ22JSvF8zw
	HzXTFns1QBF3jgAWLbi/KOh9mvrxqYJh5LF4gofwciSTHOpuTJitSaszD/ohnk7pgn6xJs02XB0q8
	uanx2Yg2zWUmT++6NmRjUhD9+dos2eV8O/HTsvZGm3yuadkL3hAAklSvcU0RIkJm7W3fDnXhwrVyB
	3beH0uvazCjtZzpr58MugxyBSkHe3znsrRC72XEOGlIVxpLCEsGtrqD+jLuzC9eWFxF9ro+685Gy1
	3D2GioVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd3Je-0000000CiWn-3l6R;
	Tue, 06 Jan 2026 09:25:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd3JY-0000000CiUe-3GAk
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 09:25:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vd3JW-0001ZC-Vv; Tue, 06 Jan 2026 10:25:19 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vd3JW-009K6L-1m;
	Tue, 06 Jan 2026 10:25:18 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vd3JW-00EHgp-1N;
	Tue, 06 Jan 2026 10:25:18 +0100
Date: Tue, 6 Jan 2026 10:25:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Message-ID: <aVzU_uopGgKAlegK@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-11-e97853f98232@pengutronix.de>
 <0a85c1df-8960-440b-b901-1c338db1f003@pengutronix.de>
 <4885c971-49b7-4912-89f5-9d401dd5e39d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4885c971-49b7-4912-89f5-9d401dd5e39d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_012520_810860_6A771E6A 
X-CRM114-Status: GOOD (  18.58  )
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
Subject: Re: [PATCH 11/19] mmu: introduce pbl_remap_range()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 06, 2026 at 09:50:04AM +0100, Ahmad Fatoum wrote:
> On 1/5/26 13:15, Ahmad Fatoum wrote:
> > On 1/5/26 12:26 PM, Sascha Hauer wrote:
> >> Add PBL-specific memory remapping function that always uses page-wise
> >> mapping (ARCH_MAP_FLAG_PAGEWISE) for fine-grained permissions on
> >> adjacent ELF segments with different protection requirements.
> >>
> >> Wraps arch-specific __arch_remap_range() for ARMv7 (4KB pages) and
> >> ARMv8 (page tables with BBM). Needed for ELF segment permission setup.
> >>
> >> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> 
> Hmm, a question: Why do we need to preemptively break up pages?
> Doesn't normal remapping do that already? My understanding was
> that we only did it here to allow remapping while executing from
> it, but in the PBL ELF loader we are not executing from there,
> so there should not be an issue.

Yes, I think the ARCH_MAP_FLAG_PAGEWISE flag can be dropped here.
In the end it seems we do not the flag anymore when loading the
ELF image in PBL.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


