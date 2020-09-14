Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHoDP-0003yD-5k
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 13:08:17 +0000
Date: Mon, 14 Sep 2020 15:08:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200914130813.GR4498@pengutronix.de>
References: <20200828033014.54583-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200828033014.54583-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH] kconfig: update to Linux 5.9-rc2
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Fri, Aug 28, 2020 at 12:30:14PM +0900, Masahiro Yamada wrote:
> The previous sync was Linux 5.7-rc2. Resync scripts/kconfig/ and
> scripts/Kconfig.include with Linux 5.9-rc2.
> 
> Highlights:
> 
>  - fix and improve 'make xconfig'
> 
>  - remove '---help---' keyword
> 
>  - forbid nested 'choice' blocks
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
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
