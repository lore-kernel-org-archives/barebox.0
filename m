Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.web.de ([212.227.15.4])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SrQoD-0004O4-Df
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 09:44:47 +0000
Received: from [10.0.2.15] ([109.43.0.14]) by smtp.web.de (mrweb002) with
 ESMTPSA (Nemesis) id 0LyUy6-1Ttl393r0w-016Agg for
 <barebox@lists.infradead.org>; Wed, 18 Jul 2012 11:44:35 +0200
Message-ID: <5006857D.4020505@web.de>
Date: Wed, 18 Jul 2012 11:44:29 +0200
From: Stutz Sven <stutzsven@web.de>
MIME-Version: 1.0
References: <50065575.4090808@web.de>
In-Reply-To: <50065575.4090808@web.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: AT91SAM9263-EK
To: barebox@lists.infradead.org


Hello Sascha,

thanks a lot for your help.

When I completely switch off the ecc, Barebox is loading the Linux kernel.
But I guess that the ecc is necessary especially for NAND-Flash devices.


The AT91SAM9263 controller has a ecc unit implemented. There are three 
registers and the error calculation is done automatically, only the 
error correction must be done in software.
Or is it better to you use the software ecc and I should try to fix the 
software problem?
Can you give me some hints to fix this problem?

Btw. I have found the description table for the NAND devices. But what 
would happen if I change the connections between the controller and the 
NAND-Flash, where are those port description stored or the timings to 
access the data bus?


best regards Sven



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
