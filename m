Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NZKkv-0005jE-8p
	for barebox@lists.infradead.org; Mon, 25 Jan 2010 08:57:10 +0000
Date: Mon, 25 Jan 2010 09:57:00 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100125085700.GB12480@pengutronix.de>
References: <1264404750-11596-1-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-2-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-3-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-4-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1264404750-11596-4-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 03/12] cache functions from kernel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On Mon, Jan 25, 2010 at 08:32:21AM +0100, Sascha Hauer wrote:
>  void mmu_enable(void)
>  {
>  	asm volatile (
> -		"mrc p15, 0, r1, c1, c0, 0;"
> -		"orr r1, r1, #0x0007;"  /* enable MMU + Dcache */
> -		"mcr p15, 0, r1, c1, c0, 0"
> +		"bl __mmu_cache_on;"
>  		:
>  		:
> -		: "r1" /* Clobber list */
> +		: "r0", "r1", "r2", "r3", "r6", "r10", "r12"
You should add "cc" and "mem" to the list of clobbered registers.

>          );
>  }
>  =

> @@ -67,28 +65,13 @@ void mmu_enable(void)
>   */
>  void mmu_disable(void)
>  {
> +
>  	asm volatile (
> -		"nop; "
> -		"nop; "
> -		"nop; "
> -		"nop; "
> -		"nop; "
> -		"nop; "
> -		/* test, clean and invalidate cache */
> -		"1:	mrc	p15, 0, r15, c7, c14, 3;" =

> -		"	bne	1b;"
> -		"	mov	pc, lr;"
> -		"	mov r0, #0x0;"
> -		"	mcr p15, 0, r0, c7, c10, 4;" /* drain the write buffer   */
> -		"	mcr p15, 0, r1, c7, c6, 0;"  /* clear data cache         */
> -		"	mrc p15, 0, r1, c1, c0, 0;"
> -		"	bic r1, r1, #0x0007;"        /* disable MMU + DCache     */
> -		"	mcr p15, 0, r1, c1, c0, 0;"
> -		"	mcr p15, 0, r0, c7, c6, 0;" /* flush d-cache             */
> -		"	mcr p15, 0, r0, c8, c7, 0;" /* flush i+d-TLBs            */
> +		"bl __mmu_cache_flush;"
> +		"bl __mmu_cache_off;"
>  		:
>  		:
> -		: "r0" /* Clobber list */
> +		: "r0", "r1", "r2", "r3", "r6", "r10", "r12"
ditto

Best regards
Uwe

-- =

Pengutronix e.K.                              | Uwe Kleine-K=F6nig         =
   |
Industrial Linux Solutions                    | http://www.pengutronix.de/ =
 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
