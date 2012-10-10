Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m50-110.126.com ([123.125.50.110])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TLnne-0003LD-8V
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 04:21:39 +0000
Date: Wed, 10 Oct 2012 11:50:11 +0800
From: zzs <zzs213@126.com>
Message-ID: <20121010035010.GA24043@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: How to init DDR on a at91sam9g45 board
To: barebox <barebox@lists.infradead.org>

dear all:

I'm using a at91sam9g45 board similar to atmel's sam9g45-ek.

So I select MACH_AT91SAM9M10G45EK in config.

first step I want to init the DDR memory, But
grep all barebox src, No code for init DDR been found.

Who can tell me, Where the DDR init code is Or barebox
can't use the DDR memory on MACH_AT91SAM9M10G45EK !?


-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
