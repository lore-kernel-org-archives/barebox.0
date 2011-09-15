Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R4C6C-0003bb-Bt
	for barebox@lists.infradead.org; Thu, 15 Sep 2011 13:35:29 +0000
Received: from mail240.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id 992F8DCDA49
	for <barebox@lists.infradead.org>;
	Thu, 15 Sep 2011 15:36:32 +0200 (CEST)
Date: Thu, 15 Sep 2011 15:13:35 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110915131335.GH28104@game.jcrosoft.org>
References: <1313960937-15271-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1313960937-15271-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH] at91: add missing clkdev changes for at91sam9g45
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On 23:08 Sun 21 Aug     , Hubert Feurstein wrote:
> This fixes the following compile errors
>   arch/arm/mach-at91/at91sam9g45.c:185:3: error: 'ohci_clk' undeclared here (not in a function)
>   arch/arm/mach-at91/at91sam9g45.c:186:3: error: 'tcb1_clk' undeclared here (not in a function)
>   arch/arm/mach-at91/at91sam9g45_devices.c: In function 'at91_add_device_mci':
>   arch/arm/mach-at91/at91sam9g45_devices.c:258:2: warning: implicit declaration of function 'at91_clock_associate'
>     [...]
>   arch/arm/mach-at91/built-in.o: In function `at91_add_device_mci':
>   sam9_smc.c:(.text.at91_add_device_mci+0x1d0): undefined reference to `at91_clock_associate'
> which were introduced in commit:
>   "at91: swtich to clkdev" (ae19fe26cc230bc38238c2d66b8f464761286316)
> 
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
I've a similar patch too

please merge the fix of ALL remove of the at91_clock_assocaite in one commit

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
