Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOuG-0006sx-J5
 for barebox@lists.infradead.org; Mon, 06 Jan 2020 09:42:41 +0000
Date: Mon, 6 Jan 2020 10:42:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200106094235.iiafszzpurjtqfdj@pengutronix.de>
References: <1574771276-27996-1-git-send-email-duhuanpeng@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574771276-27996-1-git-send-email-duhuanpeng@loongson.cn>
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
Subject: Re: [PATCH] MIPS: loongson: rename CPU_LOONGSON1 to CPU_GS232
To: Du Huanpeng <duhuanpeng@loongson.cn>
Cc: barebox@lists.infradead.org

On Tue, Nov 26, 2019 at 08:27:56PM +0800, Du Huanpeng wrote:
> The CPU in the loongson 1b SoC is called GS232.
> Here is some active chips and it's core:
> 
> NAME              CPU       Core(s)
> The loongson 3 series/server & desktop
>   3A3000/3B3000     GS464E    64bit x4
>   3A2000/3B2000     GS464E    64bit x4
>   3B1500            GS464     64bit x8
>   3A1000            GS464     64bit x4
> 
> The loongson 2 series/low power
>   2K1000            GS264     64bit x2
>   2F                GS464     64bit x1
>   2H                GS464     64bit x1
> 
> The loongson 1 series/embeded
>   1C101             GS132R    32bit ?
>   1D                GS132     32bit ?
>   1C                GS232     32bit x1
>   1B                GS232     32bit x1
>   1A                GS232     32bit x1
> 
> see:
> [1] http://www.loongson.cn/product/
> 
> Signed-off-by: Du Huanpeng <duhuanpeng@loongson.cn>
> ---
>  arch/mips/Kconfig           | 4 ++--
>  arch/mips/Makefile          | 2 +-
>  arch/mips/include/asm/cpu.h | 4 ++--
>  arch/mips/lib/cpu-probe.c   | 4 ++--
>  4 files changed, 7 insertions(+), 7 deletions(-)

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
