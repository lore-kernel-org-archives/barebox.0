Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OnN8I-00017m-Er
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 02:51:35 +0000
Date: Mon, 23 Aug 2010 04:51:23 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100823025123.GP8693@game.jcrosoft.org>
References: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
	<20100808064846.GA31364@merkur.ravnborg.org>
	<20100809064923.GL30096@pengutronix.de>
	<87wrrikdtd.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87wrrikdtd.fsf@macbook.be.48ers.dk>
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
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

On 14:54 Sun 22 Aug     , Peter Korsgaard wrote:
> >>>>> "Robert" == Robert Schwebel <r.schwebel@pengutronix.de> writes:
> 
> [Sorry, old thread - Been away on vacation]
> 
>  >> Which bring up another question. We have plenty of projects out there
>  >> that rely on kconfig.
> 
>  Robert> ptxdist as well.
> 
> And Buildroot and OpenWrt and crosstool-ng, ...
> 
>  >> What can we do to kconfig to make the integration easier?
>  >> 
>  >> We have discussed that kconfig should be a seperate installable tool
>  >> (as rpm, deb whatever). But there is a few quirks needed before we can
>  >> do so.
> 
>  Robert> I don't think that it is necessary. Last time I checked the most
>  Robert> complicated thing was to exchange the project name ("Linux kernel") to
>  Robert> something else, because there were quite a lot of hand coded numbers
>  Robert> representing the string length or length-1. But we are not up to the
>  Robert> latest versions - I'll have to re-check.
> 
> Yeah. Buildroot has historically done s/CONFIG_/BR2_/ as well, but I'm
> strongly considering going back to CONFIG_.
I agree too

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
