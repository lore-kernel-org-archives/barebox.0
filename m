Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PfIHz-0004rB-8x
	for barebox@lists.infradead.org; Tue, 18 Jan 2011 20:36:32 +0000
Received: by ewy20 with SMTP id 20so19608ewy.36
	for <barebox@lists.infradead.org>; Tue, 18 Jan 2011 12:36:17 -0800 (PST)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1295363506-1794-1-git-send-email-plagnioj@jcrosoft.com>
Date: Tue, 18 Jan 2011 21:36:14 +0100
In-Reply-To: <1295363506-1794-1-git-send-email-plagnioj@jcrosoft.com>
	(Jean-Christophe PLAGNIOL-VILLARD's message of "Tue, 18 Jan 2011
	16:11:46 +0100")
Message-ID: <874o96gda9.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH] at91sam9g45: fix ARCH_TEXT_BASE
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

>>>>> "Jean-Christophe" == Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:

 Jean-Christophe> it's 0x73f00000 not 0x23f00000 as the other at91
 Jean-Christophe> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
 Jean-Christophe> ---
 Jean-Christophe>  arch/arm/mach-at91/Kconfig |    1 +
 Jean-Christophe>  1 files changed, 1 insertions(+), 0 deletions(-)

 Jean-Christophe> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
 Jean-Christophe> index 4d35ebe..efaa256 100644
 Jean-Christophe> --- a/arch/arm/mach-at91/Kconfig
 Jean-Christophe> +++ b/arch/arm/mach-at91/Kconfig
 Jean-Christophe> @@ -2,6 +2,7 @@ if ARCH_AT91
 
 Jean-Christophe>  config ARCH_TEXT_BASE
 Jean-Christophe>  	hex
 Jean-Christophe> +	default 0x73f00000 if ARCH_AT91SAM9G45
 Jean-Christophe>  	default 0x23f00000

It can be 0x2xxxxxxx if the 2nd DDR controller is used.

I don't know the code, but how does this this work on boards with less
than 64MB RAM?
 
-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
