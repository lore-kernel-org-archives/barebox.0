Delivery-date: Fri, 24 Mar 2023 11:46:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfewX-00D7wz-Gz
	for lore@lore.pengutronix.de; Fri, 24 Mar 2023 11:46:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfewX-0000qP-CU
	for lore@pengutronix.de; Fri, 24 Mar 2023 11:46:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yb4mgo79ojn9prYH4n+Bw/GCp+3yVxczlV5fQy5fpQs=; b=mpRTihIncEo3xzIydKbTK+Rw/w
	tu7QW31xnBqvB+lPvGv4g/26XJHRAn5ggVTaBcIXhFVzjGgulvx7B+wHCeuqPLpSjpR4S7eOKeNY7
	fy5M00pt0NcDMbPvaWucwTQGhM2vzR+pgqtiLNCsj8VRpkgB7jWHWl6TtVST3JQhSdiQ67iW+Vc3q
	HaPmqHynppvZvrWVc6oYr8kuB3XFhcVNHs1LdM3bAo3xU3uVWopopH63Cn48GQQscX9MqvhRoRibf
	EK4q/NVY8xAb3ZPPjVv2tB8Zfzat8GqY0ncF76yYfMVyzp0Yx3NgCdljCLeCN/e3vrb+lFj4nrzBh
	tvlczhdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfev8-004BkS-1X;
	Fri, 24 Mar 2023 10:45:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfev4-004BjP-1R
	for barebox@lists.infradead.org;
	Fri, 24 Mar 2023 10:45:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pfev2-0000aM-9m; Fri, 24 Mar 2023 11:45:12 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pfev2-0003CC-34; Fri, 24 Mar 2023 11:45:12 +0100
Date: Fri, 24 Mar 2023 11:45:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Masahiro YAMADA <mappyland78@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230324104512.GB19113@pengutronix.de>
References: <20230322140728.4096066-1-s.hauer@pengutronix.de>
 <CAK7LNATzbQYy0JMkRK=Ni9MykzGX-BcLTFhswgf+nNHGzWQ-=A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAK7LNATzbQYy0JMkRK=Ni9MykzGX-BcLTFhswgf+nNHGzWQ-=A@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_034514_486760_7F229EEF 
X-CRM114-Status: GOOD (  21.90  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: Rockchip: let boards depend on 32/64bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 24, 2023 at 04:59:56AM +0900, Masahiro YAMADA wrote:
> On Wed, Mar 22, 2023 at 11:09 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > So far we can enable support for 32bit and 64bit SoCs at the same time
> > which results in an unbuildable barebox. This is annoying, let the board
> > visibility depend on the selected code model.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> 
> What is weird in the current approach is,
> none of "make ARCH=arm64 allnoconfig"
> "make ARCH=arm64 allyesconfig" sets CONFIG_64BIT.
> 
> 
> 
> 
> I think CONFIG_64BIT should be the highest level option,
> which is not selected by anyone, and does not depend on
> any other CONFIG option.

Yes, I've also already realized there's something fishy with the way
32bit vs. 64bit is handled in our Kconfig options, I just didn't know
what to do about it.

Making CONFIG_64BIT the highest level option really seems to solve it
well. I'll send a patch for it shortly.

Thanks for noting and motivating ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


