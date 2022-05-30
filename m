Delivery-date: Mon, 30 May 2022 09:22:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvZjo-00F4i4-Fy
	for lore@lore.pengutronix.de; Mon, 30 May 2022 09:22:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvZjm-0003TQ-Iy
	for lore@pengutronix.de; Mon, 30 May 2022 09:22:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QaOCHM1PZ+0U564CcAln41H0CreRc/HaytTDq+sBNdI=; b=3GfBF5G+tDQlca
	hVJlH3YUr25wR+e7jZVihWhDe5HC9QuZna+PVeOmHAf7pw5puPH9OgDB6deb5xyoYgwHLg9Tv366y
	R7rFdRbBLTVrobgsO/RVX95THT2Xvo9vM3KOuvwqniO5jiO6Y7HJm1pRXUSXzq7ITpfHiOCd/eP90
	iuGH5Vuo3Uax3txAUCP6iO6ALfxnpXGuGjAjuCEKevPLfdBJxO20j/LGWAQhe4Z5JqKLsmI95XZDB
	ISPZBp7clzK2ggjHgqBhrjI/yYP0w8lf2yxpo14QuO7okGZm6djyL71gcWg4Ep9DnSB7C8Of5rsra
	UE7MV+ev84omW0dLE6mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvZiC-005giP-EJ; Mon, 30 May 2022 07:21:12 +0000
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com ([46.30.210.183])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvZi4-005ghU-5g
	for barebox@lists.infradead.org; Mon, 30 May 2022 07:21:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:to:from:
	 date:from;
	bh=R1qtOfS0RSvLfQlpi2HIIxr+Wpu119UnFoS/Jh1TeEc=;
	b=oqga+m5kSBFjukFOGBc9zTWaGYQmvuwz8tNJZnZsWkSWXlwin/UXlQu0agh3BlTDlHzqttp9/YZfT
	 9UnNAcekGTt95wlRuVF5E2Hd0rLplLyRtLgsxzEcHy8/vt3ZanBnThCUOEY5T9RsMDs8V4SEfIjRDW
	 fxsVHWWU77Z+JDVyJBHRZfIHDFDEDPHANa1dPRnp/07Tz5dB+ahLNW9RJX2Yo15kc+dQ5toYEvIhuU
	 cPrXV52YoTK9rZdRE3xzVjnapD10ocN2Yw75B/TgtoKkJE3khzipXILjlvPeZ5p/Jgvg0/8PtpM/rD
	 z5SDu1YvBUfDjMSXQIEnlPVP7S7J/WA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:to:from:
	 date:from;
	bh=R1qtOfS0RSvLfQlpi2HIIxr+Wpu119UnFoS/Jh1TeEc=;
	b=ob4CWKFJ1eilYhf/+8QpUtLFjcNgOvCs/2vAfpZY5aLRg6YWIkLg6sg9sw0nFyngWcUbJnntpD4du
	 rf3eMn2AQ==
X-HalOne-Cookie: 2f92494a122a4b82ecd5a1ff007f4554dda37816
X-HalOne-ID: 0b9e8304-dfe9-11ec-a90e-d0431ea8a290
Received: from mailproxy1.cst.dirpod4-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
	by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 0b9e8304-dfe9-11ec-a90e-d0431ea8a290;
	Mon, 30 May 2022 07:20:56 +0000 (UTC)
Date: Mon, 30 May 2022 09:20:54 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <YpRwVhNninpRpb8a@ravnborg.org>
References: <20220515193807.354903-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220515193807.354903-1-sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_002105_639807_D4FAC34E 
X-CRM114-Status: GOOD (  21.44  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH v1 0/8] ARM: at91: Add pbl support to skov-arm9cpu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, May 15, 2022 at 09:37:59PM +0200, Sam Ravnborg wrote:
> The following is the current set of patches so far to support
> PBL for the skov-arm9cpu.
> 
> The pwm is not really part of this - but it is part of the story.
> The patch-set was triggered when someone reported a bug in the 
> atmel pwm code. The code did not build - so I ported it over.
> Now I wanted to boot the target, but at91bootstrap no longer
> supports the at91sam9263. So I decided to try to make it work
> in barebox. I have tried this before and failed - but it should
> be possible...
> 
> What I have made is modelled on top of all the great work
> for other more modern atmel bouards.
> 
> This is an RFC - because the code does not yet work :-(
> It fails to mount the SD Card - for reasons I am yet to discover.

Hi Ahmad et al.

Just a quick update for you and the list.
I followed all your good suggestions and with this the PBL works and
loads barebox :-)

There are a few points on the TODO list I will address before posting a
v2, but just wanted to share the good news. No promises on the timeline
for an updated version - if anyone by chance would benefit from it
earlier then please let me know.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

