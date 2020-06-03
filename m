Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgONg-0000DS-8c
 for barebox@lists.infradead.org; Wed, 03 Jun 2020 08:04:13 +0000
Date: Wed, 3 Jun 2020 10:04:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200603080410.GV11869@pengutronix.de>
References: <20200602085412.16554-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602085412.16554-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 00/25] sandbox: support COMPILE_TESTing drivers
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 02, 2020 at 10:53:47AM +0200, Ahmad Fatoum wrote:
> This series adds the last few bells and whistles to COMPILE_TEST
> these drivers under sandbox as well.
> 
> The five last patches address the first few issues found by
> clang-analyzer. There are still hundreds more in need of triage:
> http://a3f.at/up/barebox-clang-analyzer/
> 
> (Check it out; control flow visualization is pretty! j/k to navigate)
> 
> v1 -> v2:
>   - Patch stack rebased
>   - Added separate <asm-generic/bitio.h> (Sascha)
>   - fixed Author/Signed-off-by mismatch (Roland)
>   - Drop local_irq_ stubs (Sascha)

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
