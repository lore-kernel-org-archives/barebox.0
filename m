Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S4bSN-0003hW-IE
 for barebox@lists.infradead.org; Mon, 05 Mar 2012 17:12:19 +0000
Date: Mon, 5 Mar 2012 18:12:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120305171214.GX3852@pengutronix.de>
References: <1330942784-22394-1-git-send-email-j.weitzel@phytec.de>
 <1330942784-22394-2-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330942784-22394-2-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH 2/2] omap: move do_set_mux to omap4_generic
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 05, 2012 at 11:19:44AM +0100, Jan Weitzel wrote:
> do_set_mux is used by two boards.
>  	return 0;
>  }
> +
> +void do_set_mux(u32 base, struct pad_conf_entry const *array, int size)
> +{
> +	int i;
> +	struct pad_conf_entry *pad = (struct pad_conf_entry *) array;
> +
> +	for (i = 0; i < size; i++, pad++)
> +		writew(pad->val, base + pad->offset);
> +}

Same here.


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
