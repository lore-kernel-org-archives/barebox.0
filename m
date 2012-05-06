Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SR5pn-00067j-Rg
 for barebox@lists.infradead.org; Sun, 06 May 2012 18:05:29 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m3wr4qmhwq.fsf@intrepid.localdomain>
 <20120506174334.GW4141@pengutronix.de>
Date: Sun, 06 May 2012 20:01:58 +0200
In-Reply-To: <20120506174334.GW4141@pengutronix.de> (Sascha Hauer's message of
 "Sun, 6 May 2012 19:43:34 +0200")
Message-ID: <m37gwpyyqx.fsf@intrepid.localdomain>
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
Subject: Re: RFC: Fix big endian MMIO primitives.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> Maybe we should rather use the __raw_* variants in the cfi driver aswell
> which is the only user of the functions below.

We can do that for the sake of compatibility with Linux.

> For some reason I
> believed that the __raw_* variants also do little endian accesses which
> is wrong.
> I don't like the naming of the __raw_* variants very much as the
> underscores and 'raw' suggests that these are internal functions which
> one should rather not use, but in fact these are the correct functions
> in most SoC (non PCI) drivers. Anyway, since Linux has this functions we
> should use them aswell, everything else probably leads to more
> confusion.

I don't know.

I would rename:
__raw_* -> cpu_*() as they are just plain and simple accessors with
native endianness.

readl() and friends -> le32_readl() etc.
The 'l' is somewhat redundant, the size is already determined by '32'
(and 16, 8). Maybe le32_read() or read_le32()?

Your call. We can just limit this renaming to cpu_* -> __raw_*.


To be honest, I would like this stuff renamed in Linux as well. Perhaps
some day.
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
