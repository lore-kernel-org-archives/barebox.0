Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout-p-202.mailbox.org ([2001:67c:2050::465:202])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCLqo-0001IK-QH
 for barebox@lists.infradead.org; Wed, 17 Feb 2021 12:22:39 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4DgcRb2NqtzQlV1
 for <barebox@lists.infradead.org>; Wed, 17 Feb 2021 13:22:35 +0100 (CET)
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id JPveJCGgRLeq for <barebox@lists.infradead.org>;
 Wed, 17 Feb 2021 13:22:32 +0100 (CET)
Date: Wed, 17 Feb 2021 13:22:32 +0100 (CET)
From: barebox+mailing@cookiesoft.de
Message-ID: <1474779923.1916.1613564552090@office.mailbox.org>
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
Subject: Heartbeat LED during init script
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hey everyone,

we use the barebox bootloader in on of our products.
Because of some norms we need to make a memtest of the RAM. To do that, we use the provided memtest tool.
So one of our our scripts is `/env/init/10-memtest`, which has just `memtest -tc` in it.


The other script is `/env/init/05-heartbeat` which contains 

#!/bin/sh

led -b board-red 100 1000

So, at first the 05 script is executed, afterwards the memtest script.

The problem is, that during the memtest the led does not blink, but flashes red the whole time. After the memtest is done, the blinking is done perfectly fine, but not during the memtest.

I create a small video to showcase this exact problem: https://imgur.com/a/9sxHTcm

Can anybody tell me why the barebox isn't able to keep up with the blinking as well as how to mitigate that?

Greetings,
Marcel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
