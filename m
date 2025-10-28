Delivery-date: Tue, 28 Oct 2025 10:42:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDgEC-00Cdtt-1U
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 10:42:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDgEB-0005oe-SI
	for lore@pengutronix.de; Tue, 28 Oct 2025 10:42:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U2v9MF053OeMDOztz7wHl2TCS1u720Kc5WpxU0lSwUg=; b=ooyTO3xIzYwx/IIEPMPWd7l6W4
	JcZSNVbtp6VZWGgvnos5mk5VQd+oh7m2oC/kweg1KWYQ+82+aNbNRh6OyFPc8NDh0d1l9wXlepy3K
	L6NMBHfQ4BI6MNqsLIonNPhkg06pHObibcqsZpJ2BoOsKciqlNsOavLjgiZiG72kBfLzMG6MZfkJg
	zQtQSru3C/EhKXVMCN+enRXuIl1UQWJ6Tm2+t6vCffXJHEdd8zuGX1bhVJMsiZ3rWHloXYeUYSR9f
	yVnzTeL2vQsOsujH5WagFWv7BZNm8uDugcmF/h+gkC3Lu7TWidYPxiQjvNBpZGICzxFeHF97LBADB
	wU06psPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDgDc-0000000Ferb-0Bzi;
	Tue, 28 Oct 2025 09:42:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDgDZ-0000000FerB-2whG
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 09:42:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vDgDX-0005gU-RV; Tue, 28 Oct 2025 10:42:15 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vDgDX-005qvM-2A;
	Tue, 28 Oct 2025 10:42:15 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vDgDX-005141-1s;
	Tue, 28 Oct 2025 10:42:15 +0100
Date: Tue, 28 Oct 2025 10:42:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aQCP95IqfhGo1zJg@pengutronix.de>
References: <20251027075438.2480311-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251027075438.2480311-1-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_024217_743183_0B1A4F86 
X-CRM114-Status: GOOD (  19.42  )
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
Subject: Re: [PATCH RFC 1/3] lib: add talloc for overlaying a tree onto
 allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 27, 2025 at 08:54:32AM +0100, Ahmad Fatoum wrote:
> +#ifndef __TALLOC_H__
> +#define __TALLOC_H__
> +
> +#include <linux/types.h>
> +
> +struct talloc {
> +	struct talloc *child;
> +	struct talloc *next;
> +	union {
> +		struct talloc *prev;
> +		struct talloc *parent; /* Valid only when is_first(mem) */
> +	};
> +};

Currently tlsf allocations are 8 byte aligned. On 32bit architectures
struct talloc will be 12 bytes, so talloc allocations will only have 4
byte alignment.

> +static void *talloc_ctx_init(struct talloc *hdr, const void *parent)
> +{
> +	void *mem;
> +
> +	if (!hdr)
> +		return NULL;
> +
> +	memset(hdr, 0, sizeof(*hdr));
> +
> +	mem = hdr2mem(hdr);
> +	talloc_steal(parent, mem);
> +	return mem;
> +}
> +
> +/**
> + * talloc_usable_size() - Report the size of the talloation

s/talloation/tallocation/

> + *
> + * @mem: pointer to previously talloc'ed memory chunk.
> + *
> + * Return: size of tallocation
> + */
> +size_t talloc_usable_size(void *mem)
> +{
> +	return malloc_usable_size(mem) - sizeof(struct talloc);
> +}
> +EXPORT_SYMBOL(talloc_usable_size);

This function is unused. Do we need it?

> +/**
> + * talloc_free() - Deallocate a talloc'ed memory chunk and all the chunks depending on it.
> + *
> + * @mem: pointer to previously talloc'ed memory chunk.
> + */
> +void talloc_free(void *mem)
> +{
> +	struct talloc *hdr = mem2hdr(mem);
> +
> +	if (ZERO_OR_NULL_PTR(hdr))
> +		return;

For correctness I believe you have to check mem here, not hdr.

(Although the above works as long as sizeof(struct talloc) <= ZERO_SIZE_PTR)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


