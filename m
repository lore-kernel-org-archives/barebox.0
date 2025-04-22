Delivery-date: Tue, 22 Apr 2025 11:52:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7AIX-00408D-2i
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 11:52:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7AIX-0002D8-8P
	for lore@pengutronix.de; Tue, 22 Apr 2025 11:52:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qAN12IN5QW5BzOZi+THIdXcPe/2Sds+GpNpGDPTdmKg=; b=4dMA652xVuacxUwkVi7+U7uwEV
	ZTFV7WBZOuGx0hwQV7FeWZHylBpu9CvJExSgV4MmItvjnz5hPDj9+/mD4SGTm4MFyxP6Ifd6cLLLX
	AbBDdqeAuO4UslKxDJOCz5LUQpDTcMxP9uk6NOwDbTQSYQ1yhUFTLYTeIGHQ3DprZhuyCl5NHhV6B
	54sEnT/2i7I6ICWXjhWbaO9yPt+fCcBtl9jwm+vSX2av6zbx07eHqImYJLbtndIu10PakUYh88AkA
	HtVoqoYpsGeYEMi8xh1EvSmNglEK7MUFhzSRfgvTvaptSlC7TZc0cBJUcTI8ajfEl4sT1kddL3I6Z
	TlZQZdhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7AIK-00000006dEJ-1REg;
	Tue, 22 Apr 2025 09:52:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78ly-00000006Fug-49o4
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 08:14:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u78lw-0004fF-2G; Tue, 22 Apr 2025 10:14:28 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u78lv-001WF1-2k;
	Tue, 22 Apr 2025 10:14:27 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u78lv-00F4PN-2K;
	Tue, 22 Apr 2025 10:14:27 +0200
Date: Tue, 22 Apr 2025 10:14:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Yann Sionneau <ysionneau@kalrayinc.com>,
	Michael Olbrich <mol@pengutronix.de>
Message-ID: <aAdP4waTPmEZIJo1@pengutronix.de>
References: <20250422063910.126829-1-a.fatoum@pengutronix.de>
 <174530773886.2993589.7402067742484019436.b4-ty@pengutronix.de>
 <792d3276-c0d2-4aa5-8c51-874160096991@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <792d3276-c0d2-4aa5-8c51-874160096991@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_011431_027205_CAA25599 
X-CRM114-Status: GOOD (  20.09  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kbuild: treat char as always unsigned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Apr 22, 2025 at 09:52:06AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 22.04.25 09:42, Sascha Hauer wrote:
> > 
> > On Tue, 22 Apr 2025 08:39:10 +0200, Ahmad Fatoum wrote:
> >> The C standard makes it implementation defined whether a plain char is
> >> unsigned or signed and the architectures where barebox is compiled for
> >> differ in that, e.g. chars are traditionally unsigned on ARM, but on x86
> >> for example they tend to be signed.
> >>
> >> This caused different bugs[1][2][3] in the past, especially around
> >> behavior when casted to int. Let's instruct the compiler to treat char
> >> as always unsigned. This may fix some issues that flew under the radar
> >> so far, but also break drivers that were compiled and used only for
> >> specific architectures, which implicitly assumed char is signed, which
> >> we'll have to fix.
> >>
> >> [...]
> > 
> > Applied, thanks!
> 
> Please wait with this until after the release, so it sits in next for
> a whole month first.

Ok, dropped for now. Please ping me after the release in case I forget.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


