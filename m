Delivery-date: Sun, 09 Jan 2022 19:40:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6d7R-00FR4Z-6P
	for lore@lore.pengutronix.de; Sun, 09 Jan 2022 19:40:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6d7P-0005OF-Uj
	for lore@pengutronix.de; Sun, 09 Jan 2022 19:40:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a+ombl8g/iI8FlG3z9ynY/NGvbEoe+h8kBQ9/ba8irk=; b=u8IDDhEklNFpJo
	CJ+hD9yntydzQbJjb9BR0r0F2ZKNC3Idr2GqGQrG66tvR9Uug+Xcr4kQFnrMrK9R8LyV4Q5bJBI7C
	mSv7VfIXyI/cXNzJsD7Qu+LjBrB2zLqvRc3g8bHF0lvScpKIE0WVuDl87rkwEtvbDQ26g+S70bmCS
	FGQR8JuRcoM/MRPPfwOYwpcnCbNK3AgCJfeIjV3ahxaATuCN1pGDoYM5JILE5QiZQv4CRxaK5rOI0
	vxKm4AJoyihUKwNc3FnEx/1NePc6TGpvjNb2qXtdxG03yhDSemT5kI44NwLmJOqQsM2yiMyFt60kE
	JUwPQF5atE7XajkY4X3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6d5k-008FGu-Q6; Sun, 09 Jan 2022 18:38:56 +0000
Received: from mx1.smtp.larsendata.com ([91.221.196.215])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6d5g-008FG2-11
 for barebox@lists.infradead.org; Sun, 09 Jan 2022 18:38:53 +0000
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx1.smtp.larsendata.com (Halon) with ESMTPS
 id 77aad817-717b-11ec-b20b-0050568c148b;
 Sun, 09 Jan 2022 18:39:24 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id 6B12B194B00;
 Sun,  9 Jan 2022 19:38:45 +0100 (CET)
Date: Sun, 9 Jan 2022 19:38:38 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Barebox List <barebox@lists.infradead.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <Ydsrrj76kk6tmD2X@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220109_103852_261443_526D4178 
X-CRM114-Status: GOOD (  16.60  )
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
Subject: Q about bootstrap support for at91sam92* boards and proposal for
 retirement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all.

This little detour started because Ahmad pointed out I had made
a stupid mistake in pwm-atmel.
So I decided I wanted to give it a spin to verify if it actually works
now.

The first challenge I encountered was that said driver had bit-rotted
as it used the old pwm framework - so I updated it from the Linux
kernel.
I have the code locally - but this time I will not have it posted before
it is tested.

Then I cloned the latest at91bootstrap - but they no longer support old
at91sam92xx CPUs.
So it was time to enable bootstrap support for at91sam9263.

In the past I had something working, but alas no luck this time.

Can anyone (Ahmad?) help me a little how to get the bootstrap
functionality working on the at91sam9263?

I do not expect patches, but I hope for something that can point me in
the right way to do it.

I have skov-arm9cpu boards (plenty - as they are mostly retired by SKOV)
and one at91sam9263ek where I can test.

We see very little interest in at91sam92* boards and we could decide
to retire all the boards that are not updated to multi-image.
This could simplify things - and if there is interest the missing boards
can be brought back to life provided they are updated to multi image.
Any comments on this?
I am happy to type the patches - and verify that the boards I have works.

	Sam


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

