Delivery-date: Mon, 17 May 2021 09:41:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liXsM-0000fF-W7
	for lore@lore.pengutronix.de; Mon, 17 May 2021 09:41:18 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liXsM-00069w-79
	for lore@pengutronix.de; Mon, 17 May 2021 09:41:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XwRDBxMl5sZt/PIxEZvZa0aLnwTSH16cYQyldwa0Rv0=; b=NNhpCwY1tyksN73qIiLmI/EPp
	ZjatNl9zNF5hjVpUkwI52TDh5vFKM5MpQEeKhzF+18yAnV05ttgaRIlRocuwguNYKjv99ZdpquaaT
	ji2PViCcc7M8J0oVmlXp4LPqjGMXQECOOHZbR1/xGRYHEWw595JL6qGTxfnmdrObR0QrQcu1P1k2Z
	95Yl7S51EcbGfOJ7364gF/Ot7SLMTtOMeiyJfcgBFQG+F5Da6gIXoHu2GmzcsphUmI8AgtbQDdDkE
	fSW59byBQWMs5IusZYlyxOmUXoFf2v6wmxzE0/XOYIJXrKzaGAIKOlTiD/RHhpUlRylPnN9SJwSQJ
	B+mU8q7MQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liXps-00E45p-O2; Mon, 17 May 2021 07:38:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liXpj-00E44T-4m
 for barebox@desiato.infradead.org; Mon, 17 May 2021 07:38:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=JcfAZU6kaQUNlLSvUpvSPVtLKpK91t6A8SWHlxcZIAE=; b=CEFC2+Ic6eA+v2mm2SiVMx9Phg
 XFRfY2qQnuthglRr8lHAyVekewQRaFHjetR9Q4cONmcQc/toJTAUl2PyM0h/emmeawpAYdt8rb5Rc
 B3VsRzKvFwErncfhTZw/bUUJiotWSr8co5lHpL12Ba/6UGgR1IJfRysr5cZFZO8OdZIAg6Ex4fLIj
 lVM+rzpUnTF8nYmY1jkrfrEaf6Ey/4CzXv8IeIw7ezPUjlkTKWP0HUnIpSTUTS8TtmimJHWY9ZRF+
 qWiN689R4wVgCY8ltGbLOvgz8TKikgelcjlzrGr8QwIwu/VU+A0M6SfGejjJQm2BDYysOjxJLZkke
 u0NFnEFw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liXpf-00DYEk-Vt
 for barebox@lists.infradead.org; Mon, 17 May 2021 07:38:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liXpe-0005sJ-Dw; Mon, 17 May 2021 09:38:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liXpe-00058H-1t; Mon, 17 May 2021 09:38:30 +0200
Date: Mon, 17 May 2021 09:38:30 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210517073830.GR19819@pengutronix.de>
References: <CAMHeXxMH8E4ae3HvFtkckJAc_hk1xWBJxMyBxab_OdPRn3y1Vw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxMH8E4ae3HvFtkckJAc_hk1xWBJxMyBxab_OdPRn3y1Vw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:33:05 up 88 days, 10:56, 101 users,  load average: 0.55, 0.36,
 0.23
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_003832_047484_0F2B8ED3 
X-CRM114-Status: GOOD (  20.78  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Board specific environments and broken configs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Trent,

On Fri, May 14, 2021 at 11:46:38PM -0700, Trent Piepho wrote:
> 
> The 12 boards with apparently unused envs:
> chumby_falconwing
> crystalfontz-cfa10036
> datamodul-edm-qmx6
> delphi-poc20
> dss11
> efika-mx-smartbook
> generic
> karo-tx25
> karo-tx51
> mx31moboard
> skov-imx6
> technexion-wandboard
> 
> An issue with CONFIG_DEFAULT_ENVIRONMENT_PATH is that it applies to
> all boards in a config.  If multiple boards are built at once, e.g.
> imx_v7_defconfig, then there is no way for each board to have a
> different extra env this way.

Thanks for spotting this. It shows some points that could be cleaned up.
Generally I suggest to remove the unused files. When they are unused
nobody should miss them. For some boards we could think about removing
them as well, like for example the i.MX boards that are still not
converted to multiimage support.
I just sent a series starting this, but that's just a start...

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

