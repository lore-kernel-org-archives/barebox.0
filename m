Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxtI-0005AY-0U
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 10:47:55 +0000
Date: Mon, 14 Oct 2019 12:47:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191014104750.7img6qntx3mcwoor@pengutronix.de>
References: <20191009164009.24265-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009164009.24265-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 0/3] ARMv7: mmu: fix setting eXecute Never for device
 memory
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 09, 2019 at 06:40:06PM +0200, Ahmad Fatoum wrote:
> Greetings,
> 
> in 0198567c4 ("ARM: mmu: mark uncached regions as eXecute never on v7"),
> I had my first attempt at supporting eXecute Never in barebox.
> This was meant to prevent speculative execution from accessing
> read-sensitive device memory and the erratic behavior it could entail.
> 
> The XN bit not only prevents speculation, but also any execution at all,
> as the name suggests, so the patchset can be tested by just executing
> the code and asserting that the prefetch abort occurs, something that
> I unfortunately missed during the first time round.
> 
> This patchset rectifies this and now Prefetch Aborts are thrown as
> expected. They weren't before barebox uses a domain with manager permissions
> for all mappings. This means that no permission checks at all are conducted
> and our new XN settings were without effect.
> 
> There are theoritical regressions with this patch: any ARMv7 barebox platform
> that directly jumps into ROM code with the MMU enabled will cease to
> work. Assuming all memory outside of the barebox text section and SDRAM to be
> non-executable however seems the right thing to do. Platforms that do
> call back into ROM code should explicitly indicate that they intend to
> do so in the PBL.
> 
> These patches fix a cache corruption issue[1] I've observed on the i.MX6UL(L)
> that resulted from speculative fetches into the MMDC region following the 512M
> SDRAM on the EVKs.
> 
> This time I tested it by by jumping into IO memory with go -m, which I had
> introduced in this patch:
> https://www.spinics.net/lists/u-boot-v2/msg38947.html
> 
> Tested SoCs:
> 
> - i.MX6UL (Cortex-A7, barebox directly loaded into SDRAM)
> - i.MX6Q  (Cortex-A9, barebox directly loaded into SDRAM)
> - SAMA5D3 (Cortex-A5, barebox loaded into SRAM then SDRAM)
> 
> [1]: https://community.nxp.com/thread/511925
> 
> Cheers
> Ahmad Fatoum (3):
>   ARM: cache-armv7: remove duplicate domain initialization
>   ARM: mmu: set R/W bits in ARMv7 translation table
>   ARM: mmu: use client domain permissions to support ARMv7 eXecute Never

Finally this is resolved \o/

Thanks Ahmad. Applied.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
