Delivery-date: Mon, 10 Jan 2022 21:55:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n71gy-00GN5L-3S
	for lore@lore.pengutronix.de; Mon, 10 Jan 2022 21:55:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n71gw-00055c-J6
	for lore@pengutronix.de; Mon, 10 Jan 2022 21:54:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcapVoZhwev0fRCxc4V7tBkIwoNXkNdwlk+XKgtOktU=; b=BQGH0CbHHIFyB2
	RZwHsDEUMV/9Den0D2ShELGT+QSQ6bTyb1Fb9MOqUu1prfw+G4GRWLC1PUIgF4DNAypEKr7B3RT7S
	T6ik8qVdqAyb0soDIogHstWccV0RgaaZ+AonQ8kMBMp8PGNT5pz5jXIl7C1t8BuYMcqMYhezeyhqO
	vTeNDhHZpHUQKGlXAYJMBuIqJkXq3xPfTo5OKImnotBs2tDR++IBKkr7psJLSuIuXsJ4B2rCotMRU
	or/PpBhK6fJWlB8ReIW1ThPzsdw1p8uVdnlJijg8r6wZqdfMpW+534wkQeh86nwUdptukDnPQUE7q
	UbSPhPHJk/M4PZ1Mr1zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n71fI-00DIkJ-Nk; Mon, 10 Jan 2022 20:53:16 +0000
Received: from mx2.smtp.larsendata.com ([91.221.196.228])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n71fD-00DIiH-9G
 for barebox@lists.infradead.org; Mon, 10 Jan 2022 20:53:12 +0000
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx2.smtp.larsendata.com (Halon) with ESMTPS
 id 6690b535-7257-11ec-ac19-0050568cd888;
 Mon, 10 Jan 2022 20:53:45 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id 615C5194B04;
 Mon, 10 Jan 2022 21:53:05 +0100 (CET)
Date: Mon, 10 Jan 2022 21:52:58 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <YdycqscPLMvmGZOH@ravnborg.org>
References: <Ydsrrj76kk6tmD2X@ravnborg.org> <Yds9TY1wPddN1oNT@ravnborg.org>
 <20220110053336.GA3326@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220110053336.GA3326@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_125311_522367_AA85DF57 
X-CRM114-Status: GOOD (  12.99  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Q about bootstrap support for at91sam92* boards and proposal for
 retirement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Oleksij,
> 
> By porting sama5d3 I noticed that bootROM is resetting configuration for
> at least some of ip cores. So, the main question is, do everything needed
> for uart is still pre-configured? For example pllc and clk settings?

I found this in the data sheet that agrees with you:

"
	Before performing the jump to the application in internal SRAM,
	all the PIOs and peripherals used in the boot
	program are set to their reset state.
"

I will throw some hours after this in the weekend to see if I can get
it up and running.

> 
> As soon as UART is working, every thing else will be not really hard to
> do :)
Agree, except that I need find a nice way to add whatever I do to the
current at91 stuff. But that is part of the fun.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

