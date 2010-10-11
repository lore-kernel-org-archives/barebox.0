Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5ARr-0007Xi-Hs
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 04:57:20 +0000
Date: Mon, 11 Oct 2010 06:56:51 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20101011045651.GB6962@jasper.tkos.co.il>
References: <20101010230505.17833.46593.stgit@zaytsev.su>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101010230505.17833.46593.stgit@zaytsev.su>
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
Subject: Re: [PATCH] Add basic support from ARM Versatile/PB
To: Alexey Zaytsev <alexey.zaytsev@gmail.com>
Cc: barebox@lists.infradead.org, Bahadir Balban <bbalban@b-labs.com>

Hi Alexey,

On Sun, Oct 10, 2010 at 11:15:37PM +0000, Alexey Zaytsev wrote:
> Signed-off-by: Alexey Zaytsev <alexey.zaytsev@gmail.com>
> ---

[snip]

> +config VERSATILE_SMC91C111
> +	bool "Use smc91c111 instead of smc91x (for QEMU)"
> +	default 0
> +	help
> +	 Enable this option to run barebox inside qemu.
> +	 Real versatile boards are equipped with smc911x,
> +	 but qemu only provides smc91111, which is a bit different.

s/smc91111/smc9111/?

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
