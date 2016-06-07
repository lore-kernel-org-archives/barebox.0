Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bANC4-0001y3-Fk
 for barebox@lists.infradead.org; Tue, 07 Jun 2016 20:01:45 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 7 Jun 2016 20:01:20 +0000
Message-ID: <1465329688.15779.156.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <1C46DD732561E04AB305C13A3EE6B7EF@kymetacorp.com>
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
Subject: [PATCH 0/5] Fix problems with DS1307 RTC driver
To: barebox <barebox@lists.infradead.org>, Andrey Smirnov <andrew.smirnov@gmail.com>

Recent patches to add ds1341 support to the ds1307 driver and another
patch to add the ability to configure rtc features cause a problem when
combined.  The work was done in parallel and the code for configuration
doesn't properly configure the different register layout in the ds1341
since that chip was yet supported.

This series tries to correct the problem.  
The first patch fixes ds1341 and ds1337 by disabling configuration for
those chips.

The rest of the series cleans up the driver and eventually supports
configuration for both types of chips.  The DT bindings are changed, but
since they have yet to appear in any released barebox version I think
this is ok.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
