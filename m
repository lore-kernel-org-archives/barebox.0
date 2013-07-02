Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UtzcU-0006eF-QA
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 12:23:43 +0000
Message-ID: <1372767660.4277.10.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 02 Jul 2013 14:21:00 +0200
In-Reply-To: <20130702122344.GA27278@x61s.campuswlan.hs-rm.de>
References: <1372766968-13103-1-git-send-email-alex.aring@gmail.com>
 <20130702122344.GA27278@x61s.campuswlan.hs-rm.de>
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
Subject: Re: [PATCH] Makefile: fix mixed implicit and normal rules
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

Am Dienstag, den 02.07.2013, 14:24 +0200 schrieb Alexander Aring:
> Hi,
> 
> i am not a make expert but this is a common error with newer make
> versions.
> 
> But I think this solution isn't correct. It's better to split in two
> rules like:
> 
> images/%.s: barebox.bin FORCE
>         $(Q)$(MAKE) $(build)=images $@
> 
> images: barebox.bin FORCE
>         $(Q)$(MAKE) $(build)=images $@
> 
> Getting this information from:
> http://www.linuxquestions.org/questions/linux-software-2/error-mixed-implicit-and-normal-rules-while-trying-to-build-busybox-826795/
> 
> Regards
> Alex
> 
> 
This is already fixed. See message
1372457390-20162-1-git-send-email-dev@lynxeye.de
"[PATCH] Split Multimage Makefile rule in explicit and implicit parts"

Regards,
Lucas
-- 
Pengutronix e.K.                           | Lucas Stach                 |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5076 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
