Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC4iU-0006q3-AU
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 11:37:42 +0000
Date: Mon, 6 Jul 2015 13:37:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150706113720.GP18700@pengutronix.de>
References: <1435939105-12189-1-git-send-email-alllecs@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1435939105-12189-1-git-send-email-alllecs@yandex.ru>
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
Subject: Re: [PATCH 0/3] add spd_decode command (SPD EEPROM data decoder)
To: Alexander Smirnov <alllecs@yandex.ru>
Cc: barebox@lists.infradead.org

On Fri, Jul 03, 2015 at 06:58:22PM +0300, Alexander Smirnov wrote:
> Alexander Smirnov (3):
>   common: move DDR_SPD to common/Kconfig
>   ddr_spd: add routine for printing DDR2 SPD contents in human-readable
>     format
>   commands: add spd_decode command

Applied, thanks

I dropped the description of the differences between your version and
decode-dimms though, because git am didn't like the patch in the commit
log at all.

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
