Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=sivan.tkos.co.il)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tdyyx-00014k-Ah
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 07:56:29 +0000
Date: Thu, 29 Nov 2012 09:56:21 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20121129075621.GC12054@sapphire.tkos.co.il>
References: <1354175353-8717-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354175353-8717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH v2] ARM i.MX: Add Garz+Fricke Vincell Board support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Thu, Nov 29, 2012 at 08:49:13AM +0100, Sascha Hauer wrote:
> This adds support for the Garz+Fricke Vincell board. This has
> a i.MX53 Processor with 512MB of DDR3 RAM.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

[...]

> +void blink(void)
> +{
> +	volatile int i;
> +
> +	writel(0x1, 0x53fa82a8);
> +	writel(0x2, 0x53f88004);
> +
> +	while (1) {
> +		for (i = 0; i < 1000000; i++);
> +		writel(0x2, 0x53f88000);
> +		for (i = 0; i < 1000000; i++);
> +		writel(0x0, 0x53f88000);
> +	}
> +}

Static? Is it a debugging aid? It's not used int this patch.

baruch

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
