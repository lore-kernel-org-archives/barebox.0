Delivery-date: Wed, 29 Oct 2025 08:56:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE138-00CyRR-1h
	for lore@lore.pengutronix.de;
	Wed, 29 Oct 2025 08:56:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE137-0001fS-L9
	for lore@pengutronix.de; Wed, 29 Oct 2025 08:56:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ajp4fZPPjFZeB+VpGPGZizG2eO+h53nGPJV0ANt97XU=; b=j43IoUz91jNrQl8H3riDORdn57
	n8xr9OySwZ564pBRZ7gzu2eAm0KVmKUOi1t2JP3TUk7Tv6rrEs77/aS1nNivPsFPIiqA7odhaBciK
	E+UsTo/pRQuEJf5Tn/y7nr3O0lxGox8htmcLNL2tzp/tdEbjnYjlVi1GbujGOJhvQ72vYM2MA2FA6
	spAQnuB4Ecpxu/omQomaPsC3D/YDfEFzkHWsY1cz9kaJL4Mp8LVPopMA8frWeM3z2FDq6zm+HiQN7
	dAnPs5LFCcX7P6vee2u832XZhC1RJdKeXHaDIEL61eVkLXPR1emqdltuDEDCHhu7QTenR68bd02gV
	H/9oSFug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE12Y-00000000Ahj-3c2K;
	Wed, 29 Oct 2025 07:56:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE12W-00000000AgU-28XH
	for barebox@lists.infradead.org;
	Wed, 29 Oct 2025 07:56:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vE12U-0001Wq-L2; Wed, 29 Oct 2025 08:56:14 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vE12U-0060SW-1V;
	Wed, 29 Oct 2025 08:56:14 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vE12U-006teA-1D;
	Wed, 29 Oct 2025 08:56:14 +0100
Date: Wed, 29 Oct 2025 08:56:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <aQHInrzrYbIrFsqe@pengutronix.de>
References: <20251028121820.1242298-1-f.pflug@pengutronix.de>
 <2fc02718-032e-4ad4-89a5-e780836c430d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2fc02718-032e-4ad4-89a5-e780836c430d@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_005616_546015_E702D720 
X-CRM114-Status: GOOD (  29.17  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] startup: check for console before showing menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 28, 2025 at 01:39:22PM +0100, Ahmad Fatoum wrote:
> Hi Fabian,
> 
> On 10/28/25 1:18 PM, Fabian Pflug wrote:
> > If there is no input available or possible due to policy settings, it
> > does not make sense to show a menu and ask for input.
> > 
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > ---
> >  common/startup.c | 18 ++++++++++--------
> >  1 file changed, 10 insertions(+), 8 deletions(-)
> > 
> > diff --git a/common/startup.c b/common/startup.c
> > index 8d36ffceb4..3bc2609006 100644
> > --- a/common/startup.c
> > +++ b/common/startup.c
> > @@ -45,6 +45,7 @@
> >  #include <pbl/handoff-data.h>
> >  #include <libfile.h>
> >  #include <fuzz.h>
> > +#include <security/config.h>
> >  
> >  extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
> >  		  __barebox_initcalls_end[];
> > @@ -361,14 +362,15 @@ static int run_init(void)
> >  		run_shell();
> >  	}
> >  
> > -	do {
> > -		/*
> > -		 * Let's run the command once at least, so an error
> > -		 * message is printed if the file doesn't exist
> > -		 */
> > -		run_command(MENUFILE);
> > -	} while (stat(MENUFILE, &s) == 0);
> > -
> > +	if(!IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT) && IS_ALLOWED(SCONFIG_CONSOLE_INPUT)) {
> 
> CONFIG_CONSOLE_DISABLE_INPUT only influences the default, it can still
> be changed later at runtime, so this is not necessarily correct.

I agree with this. I just noticed we already have this in the code
and we'll want to reconsider this:

        if (IS_ENABLED(CONFIG_NET) && !IS_ENABLED(CONFIG_CONSOLE_DISABLE_INPUT) &&
            autoboot != AUTOBOOT_HALT)
                eth_open_all();

How about replacing the test for CONFIG_CONSOLE_DISABLE_INPUT with a
runtime decision like:

bool console_can_input(void)
{
	struct console_device *cdev;

	if (!IS_ALLOWED(SCONFIG_CONSOLE_INPUT))
		return false;

	for_each_console(cdev) {
                if (cdev->f_active & CONSOLE_STDIN)
                        return true;
        }

	return false;
}

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


