Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ULtoV-0004Kb-Ao
 for barebox@lists.infradead.org; Sat, 30 Mar 2013 11:19:14 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
Date: Sat, 30 Mar 2013 12:19:07 +0100
Message-ID: <m3r4ixgmok.fsf@intrepid.localdomain>
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
Subject: IXP4xx again
To: barebox@lists.infradead.org

Hi,

I'm posting 3 patches:
- the first one fixes a problem with XScale processors. They don't
support "clean + invalidate data cache entry" operation, we must use
separate "clean" and "invalidate".

- the second patch implements "alternate" memory layout, in which
the code+data+bss appears first in memory space, then the malloc space
follows (and then stack). This is required to support large malloc space
(as large as possible) on systems with variable amount of RAM.

- the third patch does IXP4xx (CPU support) + Goramo MultiLink platform.
I can obviously split it if needed but perhaps it can go in in one
piece.

Against "next" branch, tested with regular 2013.03.0.
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
