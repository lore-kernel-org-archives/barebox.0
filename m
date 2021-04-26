Delivery-date: Mon, 26 Apr 2021 11:21:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1laxRB-0002xA-JV
	for lore@lore.pengutronix.de; Mon, 26 Apr 2021 11:21:53 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1laxRA-0003bR-RO
	for lore@pengutronix.de; Mon, 26 Apr 2021 11:21:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=smGy1AL+l5V1AsaTQpWXnS/JeJwAEKO4XmaR+7xNGHA=; b=D0DKFBRwq3En74t4JfxB369H8
	F8WMyHgQhAVLtGCf1tQFnAyFwTcn1pswCSFgts1zK5xXHqLViIumXhPZMUX6XupcKvgIQOCBtMwe2
	LtA5Y74FJImPW8zhLHZ289znCd3TUp9QdqNltmNkIQiy/TDmYfBPPINSyaxoh0Xmy+s60vYwgjZEt
	GcnOcjq/q3s65NsWGwNPWpC6ueo6s92dzufhNz+gsAJwO8frS6sUvGhYcgJKDzk6FM4jwAshh0dPL
	3y3bMf30FA03K274nkgizGbzCffRpIkyzaL/VlLoPMf4yF4papyJpaoptqYwTmD3Dr/a9Sz44zyKX
	79U56V1HQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laxPv-007I7x-75; Mon, 26 Apr 2021 09:20:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laxPq-007I7s-6D
 for barebox@desiato.infradead.org; Mon, 26 Apr 2021 09:20:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=UhnGVsZPP2F+AUgSxQmL+13r87kADbp2MRY569HHVi8=; b=ZniLU0iyBMvDsqpe+DdAycUh6X
 lzEArKP2WP6l92FMysb+84hVDACGJJxACNT9s8TjCghluNlwmF0lryrQxKrGPZoibcLvXGF/wpAYT
 VC3WCVrZJxPqKrAPfUQMrOEgs+A4j1b79u6NDDK/g0qR/uwIgo4+To6g29Iazj4sgcAHJzVjAbCV7
 q6q4kKCOVCxQ/FbpHI+cazKzXqu1jskN6qQa1ruBsKutgyxyHAHI3XslAwhUCGtgW8gCXAFOlGggl
 +dULIScAKc2ej/UEWBoot3G+ZeKhSRTzgOQG9LIH3TDnNZV/XUQSRg7velquAyLM3TpPnxDZya62B
 um7Po2Mg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laxPn-00Fr3d-Ev
 for barebox@lists.infradead.org; Mon, 26 Apr 2021 09:20:28 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1laxPl-0003IH-Lh; Mon, 26 Apr 2021 11:20:25 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1laxPl-0005IJ-CU; Mon, 26 Apr 2021 11:20:25 +0200
Date: Mon, 26 Apr 2021 11:20:25 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210426092025.ayufzlgd7hchyngw@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
 <20210416094943.3648-18-s.hauer@pengutronix.de>
 <62d9fd38-fa11-446d-1aee-2165a55f0fd5@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62d9fd38-fa11-446d-1aee-2165a55f0fd5@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:15:37 up 144 days, 22:22, 48 users,  load average: 0.26, 0.15,
 0.10
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_022027_526760_656832AE 
X-CRM114-Status: GOOD (  24.97  )
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
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 17/17] ARM: i.MX Phytec physom: Add deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 21-04-19 09:12, Ahmad Fatoum wrote:
> Hi,
> 
> On 16.04.21 11:49, Sascha Hauer wrote:
> > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pfla02");
> > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6dl-pfla02");
> > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6s-pfla02");
> > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pcaaxl3");
> > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pcm058-nand");
> > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6q-pcm058-emmc");
> > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6dl-pcm058-nand");
> > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6qp-pcm058-nand");
> > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6dl-pcm058-emmc");
> > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6ul-pcl063-nand");
> > +BAREBOX_DEEP_PROBE_ENABLE("phytec,imx6ul-pcl063-emmc");
> 
> How about changing BAREBOX_DEEP_PROBE_ENABLE so BAREBOX_DEEP_PROBE_ENABLE(physom_imx6_match);
> works? Updated boards should be using board drivers anyway, so make it easier for them to
> enable deep probe.

Hi Ahmad,

Why do I need to chnage it to board drivers if I only wanna fix a probe
order issue? But you're right adding the _match table should be possible
to :)

> I'd go even further and require board drivers by having it take a driver_d * as argument
> and introduce deep_probe_board_driver() that expands to postcore_platform_driver and
> BAREBOX_DEEP_PROBE_ENABLE.

How about this:
 1st) adding a probe_enum like kernel and introduce PROBE_PREFER_DEEP
 2nd) adding a deep_probe_enable_board() function to common/deep_probe.c
 3th) checking during register_driver() if the flag is set and call the
      deep_probe_enable_board().

This allows use to still use the macro mechanism and the boards already
converted to the board driver style can use this simple enum to mark all
boards as deep-probable.

Regards,
  Marco

> This would prevent having a board driver that's deep probe incompatible in the
> first place, because it will likely not find the resources it requires that early
> if it doesn't deep probe.
> 
> Cheers,
> Ahmad
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

