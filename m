Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Par9K-0001kr-Qn
	for barebox@lists.infradead.org; Thu, 06 Jan 2011 14:49:11 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
Date: Thu, 06 Jan 2011 15:48:38 +0100
Message-ID: <m38vyym6k9.fsf@intrepid.localdomain>
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
Subject: New round of my IXP42x patches
To: barebox@lists.infradead.org

I've fixed the 3 remaining patches:
1.  Fix error handling with malloc, memalign etc. Introduce xmemalign().

    The idea is to panic() when there is no memory available for normal
    operation. Exception: code which can consume arbitrary amount of RAM
    (example: files allocated in ramfs) must report error instead of
    panic().

    This patch also fixes code which didn't check for NULL from malloc()
    etc.

    Usage: malloc(), xmemalign() return NULL when out of RAM.
    xmalloc(), xmemalign() always return non-NULL or panic().

(I've removed the clkdev changes as requested)

2.  ARM: support big/little endian switching in "bootz".
    I've renamed CONFIG_BOOTZ_ENDIANNESS_SWITCH to
                 CONFIG_BOOT_ENDIANNESS_SWITCH anticipating support for
    endianness switching for bootm and bootu, either automatic or with
    additional parameter.

3. ARM: Add support for IXP4xx CPU and for Goramo Multilink router
   platform.

Fixed the memalign() -> xmemalign() usage in IXP4xx Ethernet driver.

I'm currently using Barebox with these three patches applied.
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
