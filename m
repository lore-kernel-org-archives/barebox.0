Delivery-date: Fri, 07 Nov 2025 14:55:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHMwG-00GJaQ-0E
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 14:55:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHMwF-00008g-HV
	for lore@pengutronix.de; Fri, 07 Nov 2025 14:55:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ig/3mXUvcAR+yStts6ztBykTobGXPyvhz11LA7RYaVs=; b=hz5TYcaUoF0ql0qqSBmV+OfGYF
	kbWW6R9QYtVtSEkf3TKYGMfMmlr7uArTYioYWhPg6iJ+luq3vhv9j2uhzyi4KuMC2d/IhSea0OTqV
	Xt7z7lEqemb+X21TDMnPO+M+ub+/XY9c4kiqkU8sJN7GSTlhw4MCOBZPIbLoueQoxF+/FWr50ayN+
	yndRj50hGaiu1qICYqSYlSfShwD/xCL+YcNrkNyTzUwKbx+s5SxLmOYMhkLi9L8/PYOOpR6JugvRR
	fZY1JIXySkDTrvLSCvSA+SnUj9whnz9DhD8qSnRlHIuRKQUf1N47FfWP+KpOcaXQN2PDg2cuGbEFv
	42uJHbGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHMvn-0000000HRFo-1f4U;
	Fri, 07 Nov 2025 13:55:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHMvl-0000000HRFG-00fr
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 13:55:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vHMvj-0008Rr-7X; Fri, 07 Nov 2025 14:55:07 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vHMvj-007XQo-09;
	Fri, 07 Nov 2025 14:55:07 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vHMvi-006oTI-30;
	Fri, 07 Nov 2025 14:55:06 +0100
Date: Fri, 7 Nov 2025 14:55:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
Message-ID: <aQ36OuSKNw7m45LD@pengutronix.de>
References: <20251027075438.2480311-1-a.fatoum@barebox.org>
 <aQCP95IqfhGo1zJg@pengutronix.de>
 <94867b83-cde8-449f-8ed4-d97855831d09@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <94867b83-cde8-449f-8ed4-d97855831d09@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_055509_038038_E4C5A9DF 
X-CRM114-Status: GOOD (  19.00  )
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
Subject: Re: [PATCH RFC 1/3] lib: add talloc for overlaying a tree onto
 allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 28, 2025 at 11:26:02AM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 10/28/25 10:42 AM, Sascha Hauer wrote:
> > On Mon, Oct 27, 2025 at 08:54:32AM +0100, Ahmad Fatoum wrote:
> >> +#ifndef __TALLOC_H__
> >> +#define __TALLOC_H__
> >> +
> >> +#include <linux/types.h>
> >> +
> >> +struct talloc {
> >> +	struct talloc *child;
> >> +	struct talloc *next;
> >> +	union {
> >> +		struct talloc *prev;
> >> +		struct talloc *parent; /* Valid only when is_first(mem) */
> >> +	};
> >> +};
> > 
> > Currently tlsf allocations are 8 byte aligned. On 32bit architectures
> > struct talloc will be 12 bytes, so talloc allocations will only have 4
> > byte alignment.
> 
> Good catch. On 32-bit, there is 4 bytes of unused padding inside TLSF
> and feels bad sacrificing 4 more bytes here. :/

I find the memory leak checker extremly useful and it becomes even more
useful with the memory leaks in hush fixed.

I suggest we add an __aligned(8) here and be done with it for now.

We can still think about it when widening the talloc use for
dev_kmalloc(), but as long as it's only used by hush we shouldn't hold
this series up.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


