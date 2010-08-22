Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OnA4U-0004rc-EN
	for barebox@lists.infradead.org; Sun, 22 Aug 2010 12:54:50 +0000
Received: by wwb31 with SMTP id 31so2323793wwb.18
	for <barebox@lists.infradead.org>; Sun, 22 Aug 2010 05:54:44 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
	<20100808064846.GA31364@merkur.ravnborg.org>
	<20100809064923.GL30096@pengutronix.de>
Date: Sun, 22 Aug 2010 14:54:38 +0200
In-Reply-To: <20100809064923.GL30096@pengutronix.de> (Robert Schwebel's
	message of "Mon, 9 Aug 2010 08:49:23 +0200")
Message-ID: <87wrrikdtd.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Kconfig: sync with linux kernel v2.6.35-4771-g1787985
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: barebox@lists.infradead.org

>>>>> "Robert" == Robert Schwebel <r.schwebel@pengutronix.de> writes:

[Sorry, old thread - Been away on vacation]

 >> Which bring up another question. We have plenty of projects out there
 >> that rely on kconfig.

 Robert> ptxdist as well.

And Buildroot and OpenWrt and crosstool-ng, ...

 >> What can we do to kconfig to make the integration easier?
 >> 
 >> We have discussed that kconfig should be a seperate installable tool
 >> (as rpm, deb whatever). But there is a few quirks needed before we can
 >> do so.

 Robert> I don't think that it is necessary. Last time I checked the most
 Robert> complicated thing was to exchange the project name ("Linux kernel") to
 Robert> something else, because there were quite a lot of hand coded numbers
 Robert> representing the string length or length-1. But we are not up to the
 Robert> latest versions - I'll have to re-check.

Yeah. Buildroot has historically done s/CONFIG_/BR2_/ as well, but I'm
strongly considering going back to CONFIG_.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
