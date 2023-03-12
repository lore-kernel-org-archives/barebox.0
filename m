Delivery-date: Sun, 12 Mar 2023 05:10:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbD2c-000r9h-UR
	for lore@lore.pengutronix.de; Sun, 12 Mar 2023 05:10:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbD2c-0000l0-Gn
	for lore@pengutronix.de; Sun, 12 Mar 2023 05:10:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DFDS8Do3kEdNwBEc4z09rl5Yo31qs4XtEj33cJwyQrY=; b=ycTrUGZ11GWQlWdEgWuJsAPni6
	DHY6ig0zWBC4k/OWG2lnxLHqhj4u6WzGImBwaARJVpldSv/W19Q5OM4QcTvxx/jWW3joR14HVNqFY
	CUHcrtMTXqot0bS8B/KB1+P3vYmMQpZQOxprbKmZdFgRQEJF+b48rIcJz+UKuTv+ZulE1j44jQYvj
	IV+JxAFcgCA/5aBFZq7DlSpJKFGk5I9jyqucWrixng8T5gvIiHzKxcz2gFQiHcZpAvJbjb/myYToX
	N4aDs+AuXe9dgeXyTTGjxTxJjDvU0wxfP0cC0JnI8xA9NKY63W1/Yd6orCVvhDtuvRa08Xao5507U
	t045YEKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbD0g-001lgB-Dr; Sun, 12 Mar 2023 04:08:38 +0000
Received: from codesynthesis.com ([188.40.148.39])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbD0b-001lf2-Nh
	for barebox@lists.infradead.org; Sun, 12 Mar 2023 04:08:35 +0000
Received: from brak.codesynthesis.com (unknown [105.186.89.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by codesynthesis.com (Postfix) with ESMTPSA id BDF8F60A50;
	Sun, 12 Mar 2023 04:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codesynthesis.com;
	s=mail1; t=1678594095;
	bh=HUX6NiMs9PrhTbVq5VNF8nLaHuCM5SJJF1HzkUDIUTk=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:From;
	b=gYn1bjKmaqhylYoZJ6XpkqbJYShUe8SO6Qgs3IvkRqN/SO+I5P0F1Y34zqePwFFFV
	 7ZVNz7Vpl4+bh+nwDJXIEFs3XXGG1o8pNCAjhW+cU669LTV2H7eFwtXAjoomKpF5d7
	 P3dS5pOVAZctGq46G3Yz0kUKc+F0zc/fs93SRk69X/zPez6QYDhVflPCxY1G/EwB8M
	 FvvhEKfQHGeMhCz+fY7CybtuE7nwfWMa5xaUTLXpDPuuXHLGHpdjGrCd2qmvyXePb0
	 AMc47S3mlcVbClTg6XD/mWRqxGpy3EDac2PO8E6sg73wspZs/RNtn98sC9wp2gcRxt
	 w4NsCSQNcbJtA==
Received: by brak.codesynthesis.com (Postfix, from userid 1000)
	id DF294142BD9; Sun, 12 Mar 2023 06:08:09 +0200 (SAST)
Date: Sun, 12 Mar 2023 06:08:09 +0200
From: Boris Kolpackov <boris@codesynthesis.com>
To: Tom Rini <trini@konsulko.com>
Message-ID: <boris.20230312054230@codesynthesis.com>
References: <20230310183717.RESEND.1.Idaaf79c3e768b85750d5a7eb732052576c5e07e5@changeid>
 <bae2702e-3570-f461-b86f-e56ce82a636e@infradead.org>
 <20230311165507.GN3041508@bill-the-cat>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230311165507.GN3041508@bill-the-cat>
Organization: Code Synthesis
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230311_200833_934179_B34C7D3C 
X-CRM114-Status: GOOD (  27.02  )
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
Cc: barebox@lists.infradead.org, Nicolas Schier <nicolas@fjasle.eu>, U-Boot Mailing List <u-boot@lists.denx.de>, U-Boot Custodians <u-boot-custodians@lists.denx.de>, Simon Glass <sjg@chromium.org>, Randy Dunlap <rdunlap@infradead.org>, Nick Desaulniers <ndesaulniers@google.com>, LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RESEND PATCH] kconfig: Proposed language extension for multiple
 builds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Tom Rini <trini@konsulko.com> writes:

> On Fri, Mar 10, 2023 at 09:39:15PM -0800, Randy Dunlap wrote:
> > Hi--
> > 
> > On 3/10/23 18:37, Simon Glass wrote:
> > > (I am sending this again to get more feedback)
> > > 
> > > In the case of Linux, only one build is produced so there is only a
> > > single configuration. For other projects, such as U-Boot and Zephyr, the
> > > same code is used to produce multiple builds, each with related (but
> > > different) options enabled.
> > > 
> > > This can be handled with the existing kconfig language, but it is quite
> > > verbose, somewhat tedious and very error-prone, since there is a lot of
> > > duplication. The result is hard to maintain.
> > > 
> > > Describe an extension to the Kconfig language to support easier handling
> > > of this use case.
> > > 
> > > Signed-off-by: Simon Glass <sjg@chromium.org>
> > 
> > IMO Masahiro has already answered this multiple times and I agree with his answers.
> > 
> > For others, the full previous thread is at
> >   https://lore.kernel.org/all/20230219145453.1.Idaaf79c3e768b85750d5a7eb732052576c5e07e5@changeid/
> 
> So what level of interest is there in this?

Unlike Masahiro & co I am interested in generalizing Kconfig to be usable
outside of the Linux kernel (for example, I've integrated it into the
build2 build system[1]). However, in this case, I tend to agree with Randy
and Masahiro: this feels like a very niche use-case (which I am still not
100% clear on, after reading the description 3 times) that would add
quite a bit of complexity.

One thing that did cross my mind during those 3 reads is that maybe the
essence of the feature you are looking for here is to be able to use a
value from the previous phase as "initial" (i.e., stronger than Kconfig
default but weaker than user-specified) when configuring the next phase.
It probably won't allow you to solve your problem in an auto-magical way
like your proposal, but perhaps you could get close enough while not
complicating the Kconfig language significantly.


> And as Simon asked in the thread, what about code refactoring that makes
> further maintenance easier?

>From my experience, there is little interest in patches that make Kconfig
more general or improve the compatibility of the implementation. As a
result, I am maintaining my patch set[2] out of tree.


[1] https://build2.org/libbuild2-kconfig/doc/build2-kconfig-manual.xhtml
[2] https://github.com/build2-packaging/kconfig/tree/upstream-5.15-rc7


