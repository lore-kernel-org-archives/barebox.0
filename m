Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-x22e.google.com ([2607:f8b0:400e:c01::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WuqZ5-0002nP-1u
 for barebox@lists.infradead.org; Wed, 11 Jun 2014 22:00:15 +0000
Received: by mail-pb0-f46.google.com with SMTP id rq2so251311pbb.33
 for <barebox@lists.infradead.org>; Wed, 11 Jun 2014 14:59:53 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 11 Jun 2014 14:59:53 -0700
Message-ID: <CAHQ1cqH8GnCCf_Y90cgQzy=s0YFy4hD65ni1tgQDQRz7dbxksQ@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: i.MX6Q SABRESD board and barebox
To: barebox@lists.infradead.org

Hello everyone,

I am trying to use barebox on a SabreSD board with i.MX6Q processor
and seem to be running into problems. One odd thing that I noticed was
that default configuration, freescale-mx6-sabresd_defconfig, specifies
TEXT_BASE as 0x08f80000, which is the address mapped to external
interface module(EIM). At the same time load address specified in
arch/arm/boards/freescale-mx6-sabresd/lash-header-mx6-sabresd.imxcfg
is 0x10000000, which is the start of DRAM. Is there some MMU setup
that accounts for that, that I am missing?

Thank you,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
