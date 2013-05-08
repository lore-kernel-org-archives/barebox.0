Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZyq0-0002p9-G8
 for barebox@lists.infradead.org; Wed, 08 May 2013 07:31:00 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 9A61D104E49D
 for <barebox@lists.infradead.org>; Wed,  8 May 2013 09:30:34 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20130508051106.GS32299@pengutronix.de>
Date: Wed, 8 May 2013 15:30:24 +0800
Message-Id: <6061FD58-D248-4A13-98E4-7AAD7A80CFCF@jcrosoft.com>
References: <1367958099-5063-1-git-send-email-plagnioj@jcrosoft.com>
 <20130508051106.GS32299@pengutronix.de>
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
Subject: Re: [PATCH 1/1] Revert "nand_base: detect more ONFI flash"
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


On May 8, 2013, at 1:11 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Tue, May 07, 2013 at 10:21:39PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
>> this brake the nand support on at91sam9x5ek
>> where we have a non compliant ONFI nand
>> NAND device: Manufacturer ID: 0xad, Chip ID: 0xda (Hynix NAND 256MiB 3,3V 8-bit), 256MiB, page size: 2048, OOB size: 64
>> 
>> This reverts commit 4c2bdc8728016b3412523e3264651651fe752860.
> 
> Thank you for letting us know that this patch causes a regression for
> you. I this happens, please first try and fix the regression. If that
> doesn't work please tell us what about the original patch is so wrong
> that it needs to be reverted. With a good explanation it could be that
> someone else has an idea. And whatever you do, put the original author,
> Eric in this case, on Cc.

This commit was supposed just able to detect that a Nand is ONFI

but instead it brake supported Nand

So Eric can fix it but I've not time to debug this before 1 month
and the few platform that use ONFI are all busy

So as the commit just allow to detect a band is ONFI can we revert it

to keep non-ONFI Nand to work

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
