Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTgqT-00049C-W6
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 07:09:27 +0000
Date: Wed, 29 Apr 2020 09:09:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200429070924.GC5877@pengutronix.de>
References: <20200429053914.4775-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429053914.4775-1-ahmad@a3f.at>
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
Subject: Re: [PATCH 1/5] commands: remove left-over CMD_AT91MUX Kconfig option
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Wed, Apr 29, 2020 at 07:39:10AM +0200, Ahmad Fatoum wrote:
> 71ff9bfebd ("pinctrl: at91: add pinctrl driver") removed the
> implementation of the command, but left the now useless config option.
> Remove it.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  commands/Kconfig | 16 ----------------
>  1 file changed, 16 deletions(-)

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
