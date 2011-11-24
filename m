Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RTXQU-0004bY-GO
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 11:25:13 +0000
Received: from beldin.local (unknown
 [IPv6:2a01:e35:2f37:a360:ea11:32ff:fe70:ee3e])
 by smtp1-g21.free.fr (Postfix) with ESMTP id 9A437940617
 for <barebox@lists.infradead.org>; Thu, 24 Nov 2011 12:25:00 +0100 (CET)
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 24 Nov 2011 12:24:55 +0100
Message-ID: <87ipm9yd88.fsf@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: ARM, MMU and IO space mapping
To: barebox@lists.infradead.org

Hi,

I was wandering in the MMU arm implementation and I'm wondering if anybody is
using it and accessing some IO mapped space.

My trouble is that mmu_init() only maps the RAM space (and with cacheable memory
type). For the PXA, I would need a non-cacheable non-bufferable memory type,
which could be allocated either :
 - through dev_request_mem_region(), which would be amended for the MMU case
 - or through a dedicated ioremap() function, which will be empty in no MMU case

The current issue I'm facing is that when I launch barebox with MMU enabled, the
UDC device doesn't work (I presume because the IO space is not mapped into the
MMU). This prevents me from using barebox in MMU context (and therefore I have
no D-Cache).

Would the evolution of dev_request_mem_region() be acceptable, or should I
consider another way ?

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
