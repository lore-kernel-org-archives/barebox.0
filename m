Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIPw-0005tt-Dk
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 10:03:45 +0000
Date: Tue, 14 Apr 2020 12:03:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200414100342.GH27288@pengutronix.de>
References: <20200407153112.6513-1-giorgio.nicole@arcor.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407153112.6513-1-giorgio.nicole@arcor.de>
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
Subject: Re: [PATCH 1/2] ARM: i.MX: fixed enabling the MMU after switching in
 non secure mode.
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 07, 2020 at 05:31:11PM +0200, Giorgio Dal Molin wrote:
> The Domain Access Control Register (DACR) in CP15 is banked between
> secure and non secure mode: there a copy of the reg. in secure mode and a
> second copy in non secure mode.
> As barebox boots on the imx7 SOC it runs in secure mode and initializes
> the secure-mode copy of DACR (with 0x00000001).
> After switching to non secure mode, for example with the command 'smc -n'
> or while booting a kernel image with global.bootm.secure_state=nonsecure,
> the active value of DACR is the copy in non-secure mode and that copy
> was still uninitialized and in an UNKNOWN state.
> 
> This caused the cpu to hang as soon as the MMU was enabled in non-secure
> mode.
> 
> We fix this by reading the DACR value in secure mode just before switching
> to non secure and then initializing it again with the same value.
> 
> Signed-off-by: Giorgio Dal Molin <giorgio.nicole@arcor.de>
> ---
>  arch/arm/cpu/mmu.h | 9 +++++++++
>  arch/arm/cpu/sm.c  | 4 +++-
>  2 files changed, 12 insertions(+), 1 deletion(-)

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
