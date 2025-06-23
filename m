Delivery-date: Mon, 23 Jun 2025 12:13:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTeBX-00AENg-0w
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 12:13:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTeBW-0008FY-O0
	for lore@pengutronix.de; Mon, 23 Jun 2025 12:13:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uu07RRa60V2uV3nQUfgGrNvW2EDfAY7ozA2d8GKXqFg=; b=IHT7ZT8e1bFJJnpsdS8JO8y9XN
	xX0nAOiwK3pdBXeG5tE8m4k/4oVMgjq2ehC0DYtXn7CgSdSGsRMbXMjLDeHCIBznhg+aPYEmLys/c
	LvTadtScFvKLlq0B3PQXO1hCAul/wzWkQkbmOhFrYiRdvCuRTbHaC5L/L3ZNJObqobnehyIGqtYgA
	LEKvg9PUd1I42PZJpNQphcI0pCgEug6AehisSeNXzpcsLmG+RaChVWuLpd5xlBcP2YzMvmmYFDX5G
	b2+BA8npD6ehoZXvOl1CEn9DLjydVmRBDk6w0wzALdgRhx77z4w0vMJiufuno9Xwla6Fk58DHPjhv
	4b482lxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTeAx-00000002JNf-2psJ;
	Mon, 23 Jun 2025 10:13:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTdW6-00000002BGT-2efF
	for barebox@bombadil.infradead.org;
	Mon, 23 Jun 2025 09:31:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=uu07RRa60V2uV3nQUfgGrNvW2EDfAY7ozA2d8GKXqFg=; b=eCvm+FSUuHTRncuDpp/a3DxzND
	oC2gQePTKFwudy9b4UKnv882Yf+xnIPC9qKg/vYjpt0rdZZpMEfefNDuiNBSjAZSxEMKUiXe44IKh
	S5MpgsApMDDMsyEciV0NPD6T6+/6kbdQ+YxiixsNRjL5mYXAik7YStfapAq1MfLrdb3bDVxICS4l9
	Xlfo7OlGOCjrC9GDXLhdl84A3gQkKQLWgOspV/GucNnTs+52pvwcvj3vPruzzJQ0oEcTcVcmyzw3E
	gSTN2luyUBBGHOiJbKZ6Qe0qAYnk5XjEtXnx/U1qRoG63CE2LSVjkZS3NSduw54bwYcDsUevtW4PQ
	y8NekAhA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTdW3-00000005AY1-3N0q
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 09:31:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uTdW3-00042g-3d; Mon, 23 Jun 2025 11:31:03 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uTdW2-004vLh-2Q;
	Mon, 23 Jun 2025 11:31:02 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uTdW2-00D9DV-24;
	Mon, 23 Jun 2025 11:31:02 +0200
Date: Mon, 23 Jun 2025 11:31:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aFke1jEhe1ICGEmG@pengutronix.de>
References: <CAP1tNvRTbyB7NXoaLOid9-7jH5Jxfa5MB6LGVfyZYwc7y+Sq_w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvRTbyB7NXoaLOid9-7jH5Jxfa5MB6LGVfyZYwc7y+Sq_w@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_103104_044613_5D2DA48E 
X-CRM114-Status: GOOD (  21.86  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: SAMA5D3-xplained board cleanup question
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On Fri, Jun 20, 2025 at 03:21:56PM +0300, Alexander Shiyan wrote:
> Hello All!
> 
>  I would like to propose a cleanup for the SAMA5D3-xplained board support.
> The board currently has code in board.c that configures the
> at91sam9-smc (Static Memory Controller).
> However, since the board uses devicetree, this configuration should be
> handled by the MFD driver
> that is responsible for the SMC and is devicetree-based.
> 
> Therefore, I think we can remove the SMC configuration from the board file.
> But I don't have a SAMA5D3-xplained board to test this change.
> 
> Could someone who has access to this board please test the removal of
> the SMC configuration?

It's rather unlikely that someone gives a positive answer here.
I'd say just send the patch and add a note that it's untested.

That said, we @Pengutronix should have such a board, at least I can find
it in our inventory list. Not sure if I can motivate someone to connect
it for me.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


