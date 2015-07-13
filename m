Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEaIc-0001Dl-7o
 for barebox@lists.infradead.org; Mon, 13 Jul 2015 09:45:23 +0000
Date: Mon, 13 Jul 2015 11:44:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150713094458.GA5161@pengutronix.de>
References: <1435939105-12189-1-git-send-email-alllecs@yandex.ru>
 <1435939105-12189-3-git-send-email-alllecs@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1435939105-12189-3-git-send-email-alllecs@yandex.ru>
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
Subject: Re: [PATCH 2/3] ddr_spd: add routine for printing DDR2 SPD contents
 in human-readable format
To: Alexander Smirnov <alllecs@yandex.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Fri, Jul 03, 2015 at 06:58:24PM +0300, Alexander Smirnov wrote:
> +
> +	pcclk = ddrclk * tbits / 8;
> +	pcclk = pcclk - (pcclk % 100);
> +	i_i = (s->nrow_addr & 0x0f) + (s->ncol_addr & 0x0f) - 17;
> +	k = ((s->mod_ranks & 0x7) + 1) * s->nbanks;
> +	trcd = ((s->trcd >> 2) + ((s->trcd & 3) * 0.25)) * 100 / ctime;
> +	trp = ((s->trp >> 2) + ((s->trp & 3) * 0.25)) * 100 / ctime;

Floats are not allowed in barebox, so the above has to be rewritten to
something like:

	trcd = (((s->trcd >> 2) * 4) + (s->trcd & 3)) * 25 / ctime;
	trp = (((s->trp >> 2) * 4) + (s->trp & 3)) * 25 / ctime;

Could you verify this is correct?

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
