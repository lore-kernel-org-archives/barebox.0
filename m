Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RlMTH-0005s9-Pj
 for barebox@lists.infradead.org; Thu, 12 Jan 2012 15:21:44 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 4C2AFFFBF8C
 for <barebox@lists.infradead.org>; Thu, 12 Jan 2012 16:23:04 +0100 (CET)
Date: Thu, 12 Jan 2012 16:21:36 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120112152136.GE13145@game.jcrosoft.org>
References: <20120111132914.GB958@game.jcrosoft.org>
 <E28AAFD00EFAA646AE3DF9B89CD24A89317F3531@DBDE01.ent.ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E28AAFD00EFAA646AE3DF9B89CD24A89317F3531@DBDE01.ent.ti.com>
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
Subject: Re: [PATCH 0/6] code size reduction for xloader
To: "Premi, Sanjeev" <premi@ti.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 15:14 Thu 12 Jan     , Premi, Sanjeev wrote:
> > -----Original Message-----
> > From: barebox-bounces@lists.infradead.org 
> > [mailto:barebox-bounces@lists.infradead.org] On Behalf Of 
> > Jean-Christophe PLAGNIOL-VILLARD
> > Sent: Wednesday, January 11, 2012 6:59 PM
> > To: barebox@lists.infradead.org
> > Subject: [PATCH 0/6] code size reduction for xloader
> > 
> > HI,
> > 
> > 	this patch serie wrok on disble non needed code to 
> > optimize the size
> > 	of barebox specially in the case of non interactive 
> > version suc as
> > 	xloader for TI and late bootstrap for at91
> > 
> > 	tis will also iclude a sync of the kconfig need for this
> 
> I manually pulled all the patches in this series against latest
> "master" except (didn't seemed related to size reduction):
>       kconfig: sync to linux 3.2-rc4
because you do need this one

to be able to the IS_ENABLED macro
> 
> I encountered compile error in this patch:
>     param: add config to disable it
> 
>   CC      drivers/mtd/core.o
> drivers/mtd/core.c: In function 'add_mtd_device':
> drivers/mtd/core.c:230:2: warning: implicit declaration of function 'IS_ENABLED'
> drivers/mtd/core.c:230:17: error: 'CONFIG_PARAMETER' undeclared (first use in this function)
> drivers/mtd/core.c:230:17: note: each undeclared identifier is reported only once for each function it appears in
> make[2]: *** [drivers/mtd/core.o] Error 1
> make[1]: *** [drivers/mtd] Error 2
> make: *** [drivers] Error 2
> 
> I am not sure whether IS_ENABLED is implemented in yet-to-be merged patch;
> so, continued testing after applying the temp patch at bottom of
> this mail.

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
