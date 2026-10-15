Delivery-date: Thu, 15 Oct 2026 10:01:51 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHGPO-00Dpoq-1f
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 10:01:51 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E27812027E1
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 10:01:49 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1nS5Mte+;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=UVbflgzm;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=fGiFsnGN;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792051310; a=rsa-sha256;
	cv=fail;
	b=aNBIJoPBoxySzKbWgK1dR+yavgDVAL+Bo4iF78hnXCbnSulDAH2tbSu5U13LouMNlsiPTZ
	W1wXE42z4DTD2fQpsAK/Fr4nwd1ojoT6N1bXttjbTpMth9R4uwovz5n0q5wNSfuIAZPMjA
	2lWpOGB17i+v90fsz6EgRoCjPOjA6k9mFD0u15AZL4Qc2n8dbWpQFWjgoKlWNIQdY1KNY8
	0rgnExf/P/nIPuJwLEL9XmCbYJf6YQ7bKoxuB+yac8aOB8k7aoxZLm6eB4VTqo0vhUIoT7
	QybbMHj5CIL+LC+k/FbJ4ul9MaS7hvhtHBYHj4nQo3X28EzuhYP2Wa1tfMi7Sg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1nS5Mte+;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=UVbflgzm;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=fGiFsnGN;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792051310;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=sbFlY9SJCLCeayFXzsTHx6RcUwEfpGOm7AnfJ/6mynQ=;
	b=AOsXBmbXRnrIT62200lXJAH9gGnp4YU+i3sXhBStXHF7DJls5ztDper3PcgtYRHwdhnI5X
	wwLckipowmaLaT6x5jtTaFWJzrDYTIEiYhOG2daPDJVttnH96hG0xg0E7U+ZBmW5e9lQ+S
	FsGF+WckRlyxXe4NeLtTBa4jxNqk1P534ckR7P8QxBS4VW560OPxqS5yHPUtX2asft9Lhv
	p2iR3w9dUkPiCYUMGkJuQUi1JP/SkTzUsDc3PEm17ppJMsAZAGzRWjVxx0g4RWMStBG95n
	kwtvGdAub4oPz0VYgnhkEZbH2TChrQDPTi1MPjJgaHn7uxsmfLQJ6GV1wSAdBw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sbFlY9SJCLCeayFXzsTHx6RcUwEfpGOm7AnfJ/6mynQ=; b=1nS5Mte+UkZ7shi0EIPYyZrqSa
	D1eC41nxnDqZykutvX3z28cP8rBD+kfV6NbjFvSqVSUatA9WcRp+CWKuYWPXXWxpUkfz8xWYH2Nkx
	fnRokcP25hbX2jDsRRLPoyhLppWR575ntIrcdhTE/rKcuuUE04prZcZaXyUWrTQ3fqhuyYqSICp0x
	kTadbKEIp5t2BuXeIEWcfNhLUQt7dQgFwupwzASYosvXLq9/5WPQUUdchXsfuWUdbZ0v6VKaWx2g4
	UiUR3efiMVJ0aYsOJgRWSBE6hfLg9Esei+CyXqBnq6MTLXkA/83JSjFxJWdTY8ffcne+Pe1RxPm4u
	AZHbo6EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHGNo-0000000H5vP-3oAU;
	Thu, 15 Oct 2026 08:00:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHGNk-0000000H5ul-2IEx
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 08:00:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Date:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Cc:To:Subject:From:Message-ID:Sender:
	Reply-To:MIME-Version:Content-ID:Content-Description;
	bh=sbFlY9SJCLCeayFXzsTHx6RcUwEfpGOm7AnfJ/6mynQ=; b=UVbflgzmxVwlucyMSemUVIj+Ll
	09qP7aCHqr8gbhop4Ow5QM4UYyBgLTVQjrqmHfNWwafszqBIEn63CL4STkOpw6Ka4Ifok/cpQD+qn
	MxCmMazcn2REBsU3ZrnQ7TammgJelMPpiYSJGosz1C/XJHS0FWSKXpMYVlBXTb/aQNM1TnufEvPAP
	udYxAcoqfmGroWK+wBwhZkhj/+Cg39nfE9qmYzs+r+Xmr//dNgU7jMUgftom5lj4ORZsTRxMZcdlr
	clZfg5UJHQ2PJAjpuT/bPJ/RjLeDLoGBkjHKymFe+tcWoI3bU2S4abwBK16qyHu1oCDDGNWWlOVNX
	zqUafxqg==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHGNh-000000004Yd-0dEN
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 08:00:07 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A45FB2027E1;
	Thu, 15 Oct 2026 10:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792051201;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sbFlY9SJCLCeayFXzsTHx6RcUwEfpGOm7AnfJ/6mynQ=;
	b=fGiFsnGNsBnJGR6I7cjrwGHlLGH0XBflWRNU5Khw73ByIhZaLRX1A7it7SmmPIhy9sSgO7
	03oGkMxhzOYRwIFkIizDv1AYuyUwQbifOuBQNN6WSbkSOK8M1J/otTILah/hGu1oWgmhQx
	4hBwxGm5SBhFlr7CP6Ll2O4QEaWhYe0VZSfpd+2KAMuWApFCWElkecMa4wat6Uf2GLg65d
	KpHqomaygLU3Yxf7rLM6Za+9JW9QSB2cThfZDHEXb54+k8BROBrVcvzlpdjhXfycqSnVHa
	HaJ0Qb1ygzt/rMmvtGpBewS1hzv1FeS9zlJNxgfYcYSRyan/PgaiPeRKqeP26A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792051201; a=rsa-sha256;
	cv=none;
	b=fh/WNW3I8nrkTgASxmn5AYh5G11HTMbHqXU9Lri62081+VMYgyRdW/PVNdLQXsleDxTIYs
	E1WxeENxKiOKVNWUgMIRkKqpGzwzcjpfrSmY4e/rG4WYluJm8egaxfwf9Yi3H1PXtdI1SL
	r/2nw6b1lDzRlV4/okmUriX7j+Hh+GTolF9JFgFk+55Ch0RV0ISOzEqq1Q0BUtMEVmfPlc
	r/D2PUAH0nQi6sBbWQxr2AtUVoMyc5F6bGlc0/+Fon6cMEHBjVky9/mC5ZU8k5+ZCK37G6
	M8gBom1cnI2NjcpPmHZi0JVHFz6GprEPHaXLw9vQJ7I1rBugAUKZQIf1iihrMA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792051201;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sbFlY9SJCLCeayFXzsTHx6RcUwEfpGOm7AnfJ/6mynQ=;
	b=ItERJDfc44C4EhPiVfjxS2mXNaPri1d3rWTS05CS8hVQblSRnPH5H/3ZBQfj8eEG+A0Vpp
	vFkYK6icnSMefswvxlC86M/cEkRx350Uh1s27Ez5VKBEq+EQAPT3pmLH4KYyV+IT2JlgeH
	9tugafg7SYSB4KPLjxFUDZtg+c2qX7XaUl9HvFWnnFwgKw2P1eHwacBRp55VND2cCKKlXb
	82JNhfauiKI7p4Ji9RM6Yf90WG0nH3TEkraxRzfas8Xq8VBlJag4WZlSV+rF7wxijUxCEP
	dkK5hi2/hy7f9GRdixLIJ8r7Q9LGhxWZ9sfc71JBPh04JeAsrQEnz3LpZjZovg==
Message-ID: <03ae4cf2-8f46-438e-95fe-3c966544b101@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 3/3] ARM: rockchip: pack the device tree passed to TF-A
 and OP-TEE
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <213681da-7e7c-4856-a383-670d2e9368a1@pengutronix.de>
References: <20261001-rockchip-early-boottime-v1-0-dd891bcdb74f@pengutronix.de>
 <20261001-rockchip-early-boottime-v1-3-dd891bcdb74f@pengutronix.de>
 <213681da-7e7c-4856-a383-670d2e9368a1@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 15 Oct 2026 08:00:01 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_090005_450696_703056D4 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-10-14 14:45, Ahmad Fatoum wrote: > Hello Sascha, >
    > On 10/1/26 9:42 AM, Sascha Hauer wrote: > > rockchip_create_optee_fdt()
    builds a device tree with just the memory > > nodes, but fdt_create [...]
    
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 DMARC_MISSING          Missing DMARC policy
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-54.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:-];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630,pengutronix.de:s=20260414];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_MIXED(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E27812027E1
X-Stat-Signature: cybum4kfhytat5exk4ge6691ajwnmh38

On 2026-10-14 14:45, Ahmad Fatoum wrote:
> Hello Sascha,
>=20
> On 10/1/26 9:42 AM, Sascha Hauer wrote:
> > rockchip_create_optee_fdt() builds a device tree with just the memory
> > nodes, but fdt_create_empty_tree() sets its totalsize to the size of the
> > whole scratch buffer, i.e. CONFIG_ARCH_ROCKCHIP_ATF_FDT_SIZE (384 KiB).
> >=20
> > TF-A and OP-TEE both call fdt_open_into() on the device tree, which
> > copies totalsize bytes regardless of the actual content. TF-A does this
> > with the MMU disabled and OP-TEE through an uncached mapping. On an
> > RK3588 this takes 185 ms in TF-A and another 182 ms in OP-TEE.
> >=20
> > Pack the device tree so that totalsize matches its content. OP-TEE can
> > still expand it in place, the scratch buffer keeps its size.
>=20
> While I don't object to the patch, for future reference it would be good
> to point out what the implication is for fixups onto the device tree.
>=20
> Do both TF-A and OP-TEE apply fixups on this platforms? Are these fixups
> no longer possible now?

TF-A doesn't apply any fixups. OP-TEE does, but it opens the device tree
with fdt_open_into(blob, blob, CFG_DTB_MAX_SIZE), so it can expand as
necessary up to CFG_DTB_MAX_SIZE. It just doesn't have to read so much
from it initially.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



