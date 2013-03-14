Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x229.google.com ([2a00:1450:4008:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG9jq-0004wV-RA
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 15:06:42 +0000
Received: by mail-bk0-f41.google.com with SMTP id q16so1060042bkw.14
 for <barebox@lists.infradead.org>; Thu, 14 Mar 2013 08:06:36 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <1363268762.5588.1.camel@lovely>
References: <1363263561.4022.37.camel@mars> <1363265461.4022.39.camel@mars>
 <1363266160.903406067@f2.mail.ru> <1363266661.151779822@f2.mail.ru>
 <1363267436.4022.44.camel@mars>  <20130314133341.GK1906@pengutronix.de>
 <1363268762.5588.1.camel@lovely>
Date: Thu, 14 Mar 2013 16:06:33 +0100
Message-ID: <1363273593.4022.59.camel@mars>
Mime-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Re[3]: Omap4 DSS clocks
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 2013-03-14 at 14:46 +0100, Christoph Fritz wrote:
> On Thu, 2013-03-14 at 14:33 +0100, Sascha Hauer wrote:

> > I wouldn't expect a bug in the code. This would have been discovered
> > already.
> 
> Register CM_DSS_DSS_CLKCTRL (0x4a009120) reads 0x00070F02 and so the
> field [17:16] IDLEST reads 0x3 which means "Module is disabled and
> cannot be accessed". On linux, its 0x2 which means "functional".

I already asked about this on the TI E2E Community forum
http://e2e.ti.com/support/omap/f/849/t/251717.aspx but without gaining
success.

Overall, isn't it weird that DSS is offline (as indicated by IDLEST)?

I suppose in ./arch/arm/mach-omap/omap4_clock.c this check:

/* Check for DSS Clocks */
while ((__raw_readl(0x4A009100) & 0xF00) != 0xE00)
	;

should get extended to also check for correct IDLEST ...which would
currently end in an endless loop :)

Thanks
 -- Christoph


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
