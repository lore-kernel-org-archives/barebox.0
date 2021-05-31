Delivery-date: Mon, 31 May 2021 10:06:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncwC-0003Oc-IX
	for lore@lore.pengutronix.de; Mon, 31 May 2021 10:06:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncwB-00059I-KE
	for lore@pengutronix.de; Mon, 31 May 2021 10:06:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3/zXTMBVsck34rtVTGTQncFzmjIQ9rfQCYUS7kOcxw=; b=1V1l2DEmThgMiw
	AInB1ns19RV70mTLuGw69X6+4W0eJ5YDZDgc4zFncnIkknSNtNmoG+LIK+g4VZsMCpgiF+1rmrHfq
	FO7czE34pcjzwG6BK39zgPlzHJ5RKD32fh1MOK+UqHjEwpWdGbHqVA+YY+7drMxGYJjzZuWtiRQSb
	iXyAnFpMj0hws6e7CW9Pc8eDzlx/wyxAWFmoDVtmEvr+yUZXFpGeooD1MSSnXbs1tdnsvT9s7A0ZT
	9/wR1xl6LhjG8Vas2vAyK75SOqrMKrnR2vbgYG1CKtInezKeScOh8NpmNru8wC08ei+RhZ7Szrb7C
	oeaIacy4xurFV+WXxnKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncut-00BJhO-JA; Mon, 31 May 2021 08:04:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncup-00BJgc-EA
 for barebox@lists.infradead.org; Mon, 31 May 2021 08:04:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lncuo-0004c1-0D; Mon, 31 May 2021 10:04:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lncun-0006hT-GE; Mon, 31 May 2021 10:04:49 +0200
Date: Mon, 31 May 2021 10:04:49 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Message-ID: <20210531080449.GI5211@pengutronix.de>
References: <20210527193600.20879-1-gwenj@trabucayre.com>
 <20210528122951.1c0a7b928097c984f500bab5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210528122951.1c0a7b928097c984f500bab5@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:35:00 up 102 days, 10:58, 126 users,  load average: 0.31, 0.30,
 0.37
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_010451_500658_61E10888 
X-CRM114-Status: GOOD (  26.13  )
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
Cc: barebox@lists.infradead.org,
 Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: SoCFPGA: add Terasic DE10-Nano board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 28, 2021 at 12:29:51PM +0300, Antony Pavlov wrote:
> On Thu, 27 May 2021 21:36:00 +0200
> Gwenhael Goavec-Merou <gwenj@trabucayre.com> wrote:
> 
> > From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
> > 
> > The Terasic DE10-Nano board is based on CycloneV SoCFPGA (5CSEBA6) with
> > 
> > What has been tested to work:
> > - SD card
> > - Gigabit network
> 
> What is the status of FPGA bitstream loading?
> 
> ...
> 
> > diff --git a/arch/arm/boards/terasic-de10-nano/iocsr_config_cyclone5.c b/arch/arm/boards/terasic-de10-nano/iocsr_config_cyclone5.c
> > new file mode 100644
> > index 000000000..c1291dea4
> > --- /dev/null
> > +++ b/arch/arm/boards/terasic-de10-nano/iocsr_config_cyclone5.c
> > @@ -0,0 +1,678 @@
> > +/* GENERATED FILE - DO NOT EDIT */
> > +/*
> > + * Copyright Altera Corporation (C) 2012-2014. All rights reserved
> > + *
> > + * SPDX-License-Identifier:    BSD-3-Clause
> 
> To: Sascha
> Can we add BSD-3-Clause-licensed file into barebox?

I assume so, yes. Otherwise we would have a problem, a lot of the Kernel
dts files are BSD-3-Clause licensed.

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

