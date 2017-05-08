Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7h2a-0007fw-ER
 for barebox@lists.infradead.org; Mon, 08 May 2017 11:41:26 +0000
Date: Mon, 8 May 2017 13:41:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170508114101.byb73mubbmcbunyc@pengutronix.de>
References: <20170505113435.19928-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170505113435.19928-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/5] MIPS: start*.S and barebox.lds.S fixups
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, May 05, 2017 at 02:34:30PM +0300, Antony Pavlov wrote:
> Antony Pavlov (5):
>   MIPS: start*.S: drop redundant .text
>   MIPS: barebox.lds.S: drop unneeded '_start = .'
>   MIPS: barebox.lds.S: remove unused got
>   MIPS: barebox.lds.S: put .text_entry contents after _stext and _text
>   MIPS: start.S: put entry code into the ".text_entry" section

Applied, thanks

Sascha

> 
>  arch/mips/boot/start-pbl.S  | 1 -
>  arch/mips/boot/start.S      | 3 +--
>  arch/mips/lib/barebox.lds.S | 6 +-----
>  3 files changed, 2 insertions(+), 8 deletions(-)
> 
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
