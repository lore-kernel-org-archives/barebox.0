Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx011.vodafonemail.xion.oxcs.net ([153.92.174.89])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpon-0000v6-NK
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 08:22:43 +0000
Received: from vsmx003.vodafonemail.xion.oxcs.net (unknown [192.168.75.197])
 by mta-5-out.mta.xion.oxcs.net (Postfix) with ESMTP id EB2C659CF54
 for <barebox@lists.infradead.org>; Thu, 18 Jun 2020 08:22:28 +0000 (UTC)
Received: from app-44.app.xion.oxcs.net (app-44.app.xion.oxcs.net [10.10.1.44])
 by mta-7-out.mta.xion.oxcs.net (Postfix) with ESMTPA id D0B9A539CA0
 for <barebox@lists.infradead.org>; Thu, 18 Jun 2020 08:22:24 +0000 (UTC)
Date: Thu, 18 Jun 2020 10:21:12 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <1925287845.342649.1592468544667@mail.vodafone.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: eMMC partitions kernel comand line
To: barebox@lists.infradead.org

Hallo,

I'm working on an arm IMX7 module with an eMMC flash on it.

I don't need/want to have a partition table on the eMMC, some hardcoded
partitions are just OK. I've already defined them in the barebox device tree
and it works, for barebox:

...
  partition@0 {
    label = "bl_env";
    reg = <BLENV_OFS BLENV_SIZE>;
  };
  partition@1 {
    label = "boot";
    reg = <BOOT_OFS BOOT_SIZE>;
  };
...

Unfortunately the same trick is not supported by the linux kernel.
What works for the kernel is the special command line option:

blkdevparts=mmcblk1:1M(bl_env),50M(boot),...

My question is: is it possible to let barebox automatically generate
this command line according to what it has in its device tree or do I
have to do it manually.

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
