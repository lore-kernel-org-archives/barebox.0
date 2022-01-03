Delivery-date: Mon, 03 Jan 2022 17:13:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4Pxx-00A0Dv-SD
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 17:13:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4Pxw-0008BK-86
	for lore@pengutronix.de; Mon, 03 Jan 2022 17:13:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DI7Rcxw5kVnNznhjk713vFGg3td5NQmodArII8v63L8=; b=b6V3ojyEm9EnjD
	IXF2IEcLVtXUWEcOiDxbhtwHX10nGdh1JeZ0M3bqTJwZbYbRf3FaCKnOeyuqTWe2r1hlZlc5eUG0N
	FaInCNC/SlUxeXEmqSZZv/8gVQQCOMGOE82NH0pyKaxuyaclZ6mdpp9kdcbCRdz2rvBp7+QY+Lu+k
	Jrifyt74PYPQpSzyDbNcAhwertaOhevnrOC4G7vTnoVCLbNxLJV11fCJNHpJgd+Df5cNccoJHo3Ql
	bfVMyPpaWKyMXGdyyTNTDEbprJd4ZHQu+t2zcH8JW3IWTAENjmpryAZzmYq0WfrnOtTCs/eCXH5ZN
	jGx6CUXa5yNJ5qCzB1WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4PwW-009RFn-Qh; Mon, 03 Jan 2022 16:12:16 +0000
Received: from mx1.smtp.larsendata.com ([91.221.196.215])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4PwS-009RFM-05
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 16:12:13 +0000
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx1.smtp.larsendata.com (Halon) with ESMTPS
 id f6112dbe-6caf-11ec-b20b-0050568c148b;
 Mon, 03 Jan 2022 16:12:34 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id 3DB6B194B04;
 Mon,  3 Jan 2022 17:12:00 +0100 (CET)
Date: Mon, 3 Jan 2022 17:11:53 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <YdMgSbOoD/1csUNT@ravnborg.org>
References: <20220103115718.1723730-1-a.fatoum@pengutronix.de>
 <20220103115718.1723730-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220103115718.1723730-2-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_081212_236427_590FD733 
X-CRM114-Status: GOOD (  14.69  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/5] pwm: atmel: point MMIO accesses at correct
 address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Mon, Jan 03, 2022 at 12:57:14PM +0100, Ahmad Fatoum wrote:
> The base address for MMIO writes was the address of the resource struct,
> not the start address pointed at by it.
> 
> Change untested, but it doesn't look like this driver could ever have
> worked.

You are right that I never got around to see backlight dimming work.
I recall that backlight worked and then the pwm driver was added as part
of several other patches for barebox.
I should have dropped the patch until I had seen it actually work.

But nice catch!

I may try to dust of the skov board where this is used to test it.
But these days I play with an i.MX6 board which has a bit more power,
so no promises.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

