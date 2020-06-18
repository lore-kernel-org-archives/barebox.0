Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvk6-0002th-21
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 14:42:15 +0000
Date: Thu, 18 Jun 2020 16:42:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200618144212.GO11869@pengutronix.de>
References: <20200617145016.2919-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617145016.2919-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] ARM: rpi: dts: fix MMIO resources clash breaking boot
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 17, 2020 at 04:50:16PM +0200, Ahmad Fatoum wrote:
> The rpi3b device tree specifies 1G of RAM in the memory node, but maps
> the highest 16M of RAM's physical address range for peripheral use.
> 
> When support for device tree probing was first added for the rpi3b
> in e8fab18835a1 ("ARM: rpi: switch to DT probe and multi-image build"),
> it had a memory { } node overriding the kernel node size with 0, so the
> size is computed later correctly.
> 
> 1dc748b3b202 ("dts: update to v5.1-rc1") came and renamed the upstream
> memory { } node to memory@0. So instead of overriding the old, we
> now created a second dummy along with the broken node.
> barebox did only parse the dummy, so it continued to limp along.
> 
> 8226f7f90973 ("of: base: parse all available memory nodes") started
> considering both nodes and rendered barebox v2020.05.0 unable to start
> up on the rpi3b because of the conflict between RAM range and peripherals
> like the bcm2835_mbox caused by parsing the broken memory node.
> 
> At least one board also was broken for the same reason[1], so a more
> robust approach is in order. For nodes that lack a phandle, the
> &{/path} syntax can be used instead. This has the benefit that should
> the path disappear in future, a compile failure would result.
> 
> [1] 0d26ce1c11a1 ("ARM: Phytec phyFLEX i.MX6: delete wrong memory node")
> 
> Fixes: 1dc748b3b202 ("dts: update to v5.1-rc1")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
