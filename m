Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is0WE-00063B-85
 for barebox@lists.infradead.org; Thu, 16 Jan 2020 08:28:52 +0000
Date: Thu, 16 Jan 2020 09:28:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200116082843.q2fh7yiw22pv64ru@pengutronix.de>
References: <20200114201744.267746-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114201744.267746-1-dev@lynxeye.de>
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
Subject: Re: [PATCH] ARM: qemu-virt64: convert to assembly entry
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 14, 2020 at 09:17:44PM +0100, Lucas Stach wrote:
> The C entry function isn't naked, so tries to push to the stack
> in the function prologue. This doesn't work on QEMU where there
> is no valid SP on entry. Convert the lowlevel entry to the
> assembly facilities provided for this case.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/boards/qemu-virt64/Makefile        |  2 +-
>  arch/arm/boards/qemu-virt64/lowlevel.c      |  4 +++-
>  arch/arm/boards/qemu-virt64/lowlevel_init.S | 12 ++++++++++++
>  3 files changed, 16 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/boards/qemu-virt64/lowlevel_init.S

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
