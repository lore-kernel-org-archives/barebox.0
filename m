Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibhXq-0003aE-7i
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 08:59:03 +0000
Date: Mon, 2 Dec 2019 09:59:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191202085900.6joqgplkyqtt2si7@pengutronix.de>
References: <20191128163707.6055-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128163707.6055-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2] scripts: imx: report file where error occurred
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 28, 2019 at 05:37:08PM +0100, Ahmad Fatoum wrote:
> Especially when using #include directives in imxcfg files, error
> messages can be hard to follow because line numbers differ between
> preprocessor and source files. Teach the imx image generation tool about
> preprocessing line number / file name directive, so it can give more
> useful error messages. Instead of:
> 
>   error in line 11: Invalid argument
> 
> It now says:
> 
>   $barebox/arch/arm/boards/$som/flash-header-$board.imxcfg:5: Invalid argument
> 
> No change in compiled barebox binaries.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

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
