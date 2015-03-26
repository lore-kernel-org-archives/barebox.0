Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo1.mail-out.ovh.net ([178.32.127.22])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YaywO-0000Bd-Kq
 for barebox@lists.infradead.org; Thu, 26 Mar 2015 03:58:45 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 6465DFFC2F7
 for <barebox@lists.infradead.org>; Thu, 26 Mar 2015 04:58:19 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <1427317062-20969-3-git-send-email-l.stach@pengutronix.de>
Date: Thu, 26 Mar 2015 11:58:12 +0800
Message-Id: <91E9E3EA-7E8E-40FF-B6B5-F5AF9B7DF859@jcrosoft.com>
References: <1427317062-20969-1-git-send-email-l.stach@pengutronix.de>
 <1427317062-20969-3-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 3/4] ARM: highbank: select OFTREE
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org


> On Mar 26, 2015, at 4:57 AM, Lucas Stach <l.stach@pengutronix.de> wrote:
> 
> The board code uses quite a few OF functions and it doesn't seem
> reasonable to run this board without DT support.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> arch/arm/mach-highbank/Kconfig | 1 +
> 1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/mach-highbank/Kconfig b/arch/arm/mach-highbank/Kconfig
> index 950810b57517..8af480861c3f 100644
> --- a/arch/arm/mach-highbank/Kconfig
> +++ b/arch/arm/mach-highbank/Kconfig
> @@ -9,6 +9,7 @@ choice
> 
> config MACH_HIGHBANK
> 	bool "Calxeda Highbank"
> +	select OFTREE
> 	select HAVE_DEFAULT_ENVIRONMENT_NEW

you can run wihtout it as the oftree code is only used if you decide to use the dtb provided by the
firmware

as example on qemu

so nack on this one

Best Regards,
J.
> 
> endchoice
> -- 
> 2.1.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
