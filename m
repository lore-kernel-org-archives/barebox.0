Delivery-date: Mon, 04 Mar 2024 11:30:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh5aE-008Aek-0a
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 11:30:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh5aB-0003fo-8Q
	for lore@pengutronix.de; Mon, 04 Mar 2024 11:30:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9C9ecNSOJwBof5Ble1kRlniueKzJ+FSIvvXiSStRN78=; b=PoyViJ8xwsfvX468DCQfIUc1nb
	sbaa9vdY3Xmu4amp5VGLkDZzj+r/UUnsGKGH3DscCbb6no18dgq8LBCcBGV38jQMikwcM6PJygqKp
	gY70Uthnbi6s+E3ceZ+Imx8RXeYl1OUZJqNFp2aC8c3xFoUw8NB3FUhVwqOYJonJI7CXeZW5D8plY
	pRjhmQHYVII0BDD/5SFC71FF28prrMKOnbR0WB4IW977mpPi98HMkluRV17xa2LWBm/iIrnnbsHDI
	s7y3d0us48L8TLoYKure2AiSN3UWfqs4sXbmuohHDQTqyJpGm4a1kMd4arHqaTigaMDLms00duaFP
	p+ssCg1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh5ZZ-00000008bo4-2oSl;
	Mon, 04 Mar 2024 10:29:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4zP-00000008VGI-1bEl
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 09:52:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=9C9ecNSOJwBof5Ble1kRlniueKzJ+FSIvvXiSStRN78=; b=IF99s8HjxeAuUfh8uqXuS2yVNn
	+AYyLzGOtcnIdAXGzHz/yFWAjF3paP3SPMT9IqkqePfQFpd63+jSxzRMAJ38zZE4bxiLzaF5b4bs+
	LW2pg2vygzQ8AG5ox+bAGvewIiN7HhfPeaXj/wyCLztREtjGinClzPmgk6zDzSqpOh8RFI/8e0Ku8
	TjV/p4fNS6ij+h63KrJ101y+matpNrA/0yFIu4VrJZiwHiRRf4/+UPwJMtsFlaUAIMz7FKWyKJ2/P
	+WPxCC0LUaryD/qnACwLyWXxHnUhh40A13pAWQj3zG4N3c44lY7csH6L9trBOdbmAhszrnH5Bc9bi
	hC+KeibQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4xO-00000004lny-0I9N
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 09:52:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rh4xA-0003PI-19; Mon, 04 Mar 2024 10:49:48 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rh4x9-004KCT-Kw; Mon, 04 Mar 2024 10:49:47 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rh4x9-001qko-1p;
	Mon, 04 Mar 2024 10:49:47 +0100
Date: Mon, 4 Mar 2024 10:49:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZeWZO1DUxJaUi1MU@pengutronix.de>
References: <20240301130445.171385-1-a.fatoum@pengutronix.de>
 <20240301130445.171385-3-a.fatoum@pengutronix.de>
 <ZeWWQpxQeTM9vrw_@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZeWWQpxQeTM9vrw_@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_095202_548182_46DF077E 
X-CRM114-Status: GOOD (  29.09  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/4] of: fdt: implement fdt_machine_is_compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 04, 2024 at 10:37:06AM +0100, Sascha Hauer wrote:
> On Fri, Mar 01, 2024 at 02:04:43PM +0100, Ahmad Fatoum wrote:
> > When finding compatible bootloader spec files, barebox will unflatten
> > each DTB in turn, allocating objects for each property and node, only to
> > compare a single property and then free all the allocations again.
> > 
> > Given that this operation is repeated for every device tree until a
> > match is found, it's a good idea to be able to compare machine
> > (top-level) compatibles without having to unflatten the whole FDT.
> > 
> > Implemnt fdt_machine_is_compatible() that does just that. This
> > intentionally opencodes the device tree iteration as to minimize
> > code and runtime size. Using libfdt without LTO would be slower
> > and bigger.
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >  drivers/of/fdt.c | 95 ++++++++++++++++++++++++++++++++++++++++++++++++
> >  include/of.h     |  3 ++
> >  2 files changed, 98 insertions(+)
> > 
> > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > index 676b8a5535bf..aa3d2e967acd 100644
> > --- a/drivers/of/fdt.c
> > +++ b/drivers/of/fdt.c
> > @@ -668,3 +668,98 @@ void fdt_print_reserve_map(const void *__fdt)
> >  			return;
> >  	}
> >  }
> > +
> > +static int fdt_string_is_compatible(const char *haystack, int haystack_len,
> > +				    const char *needle, int needle_len)
> > +{
> > +	const char *p;
> > +	int index = 0;
> > +
> > +	while (haystack_len >= needle_len) {
> > +		if (memcmp(needle, haystack, needle_len + 1) == 0)
> > +			return OF_DEVICE_COMPATIBLE_MAX_SCORE - (index << 2);
> > +
> > +		p = memchr(haystack, '\0', haystack_len);
> > +		if (!p)
> > +			return 0;
> > +		haystack_len -= (p - haystack) + 1;
> > +		haystack = p + 1;
> > +		index++;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +bool fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, const char *compat)
> > +{
> > +	uint32_t tag;
> > +	const struct fdt_property *fdt_prop;
> > +	const char *name;
> > +	uint32_t dt_struct;
> > +	const struct fdt_node_header *fnh;
> > +	const void *dt_strings;
> > +	struct fdt_header f;
> > +	int ret, len;
> > +	int expect = FDT_BEGIN_NODE;
> > +	int compat_len = strlen(compat);
> > +
> > +	ret = fdt_parse_header(fdt, fdt_size, &f);
> > +	if (ret < 0)
> > +		return ERR_PTR(ret);
> 
> return false here

Fixed while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


