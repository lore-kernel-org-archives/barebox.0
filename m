Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGl4N-0000Ue-W1
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 09:07:24 +0000
Date: Thu, 29 Jan 2015 10:07:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150129090701.GA12209@pengutronix.de>
References: <1422499872-3311-1-git-send-email-yamada.m@jp.panasonic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422499872-3311-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: Re: [PATCH] blackfin: fix undefined reference with CONFIG_CMD_MAGICVAR
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 29, 2015 at 11:51:12AM +0900, Masahiro Yamada wrote:
> For Blackfin, C symbols are prefixed with '_'.
> 
> If CONFIG_CMD_MAGICVAR is enabled for Blackfin, the following error occurs:
> 
> commands/built-in.o: In function `do_magicvar':
> commands/magicvar.c:(.text+0x3326): undefined reference to `__barebox_magicvar_start'
> commands/magicvar.c:(.text+0x332a): undefined reference to `__barebox_magicvar_end'
> commands/magicvar.c:(.text+0x332e): undefined reference to `__barebox_magicvar_start'
> commands/magicvar.c:(.text+0x3332): undefined reference to `__barebox_magicvar_end'
> make: *** [barebox] Error 1
> 
> Add '_' to __barebox_magicvar_start and __barebox_magicvar_end,
> like the other symbols in this linker script.
> 
> Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
