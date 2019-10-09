Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIF0Z-0001Jg-2L
 for barebox@lists.infradead.org; Wed, 09 Oct 2019 16:40:17 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2019 18:40:06 +0200
Message-Id: <20191009164009.24265-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 0/3] ARMv7: mmu: fix setting eXecute Never for device memory
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Greetings,

in 0198567c4 ("ARM: mmu: mark uncached regions as eXecute never on v7"),
I had my first attempt at supporting eXecute Never in barebox.
This was meant to prevent speculative execution from accessing
read-sensitive device memory and the erratic behavior it could entail.

The XN bit not only prevents speculation, but also any execution at all,
as the name suggests, so the patchset can be tested by just executing
the code and asserting that the prefetch abort occurs, something that
I unfortunately missed during the first time round.

This patchset rectifies this and now Prefetch Aborts are thrown as
expected. They weren't before barebox uses a domain with manager permissions
for all mappings. This means that no permission checks at all are conducted
and our new XN settings were without effect.

There are theoritical regressions with this patch: any ARMv7 barebox platform
that directly jumps into ROM code with the MMU enabled will cease to
work. Assuming all memory outside of the barebox text section and SDRAM to be
non-executable however seems the right thing to do. Platforms that do
call back into ROM code should explicitly indicate that they intend to
do so in the PBL.

These patches fix a cache corruption issue[1] I've observed on the i.MX6UL(L)
that resulted from speculative fetches into the MMDC region following the 512M
SDRAM on the EVKs.

This time I tested it by by jumping into IO memory with go -m, which I had
introduced in this patch:
https://www.spinics.net/lists/u-boot-v2/msg38947.html

Tested SoCs:

- i.MX6UL (Cortex-A7, barebox directly loaded into SDRAM)
- i.MX6Q  (Cortex-A9, barebox directly loaded into SDRAM)
- SAMA5D3 (Cortex-A5, barebox loaded into SRAM then SDRAM)

[1]: https://community.nxp.com/thread/511925

Cheers
Ahmad Fatoum (3):
  ARM: cache-armv7: remove duplicate domain initialization
  ARM: mmu: set R/W bits in ARMv7 translation table
  ARM: mmu: use client domain permissions to support ARMv7 eXecute Never

 arch/arm/cpu/cache-armv7.S |  2 --
 arch/arm/cpu/mmu-early.c   |  7 ++++++-
 arch/arm/cpu/mmu.c         | 18 ++++++++++++------
 arch/arm/cpu/mmu.h         |  1 +
 4 files changed, 19 insertions(+), 9 deletions(-)

-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
