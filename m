Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XQru6-0001Wv-7Z
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 05:54:18 +0000
Date: Mon, 8 Sep 2014 07:53:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140908055355.GI5352@pengutronix.de>
References: <1409838437-3625-1-git-send-email-s.trumtrar@pengutronix.de>
 <1409838437-3625-2-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1409838437-3625-2-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v3 1/4] Add a Firmware programming framework
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On Thu, Sep 04, 2014 at 03:47:14PM +0200, Steffen Trumtrar wrote:
> +/*
> + * firmwaremgr_list_handlers - list registered firmware device handlers
> + *                             in pretty format
> + */
> +void firmwaremgr_list_handlers(void)
> +{
> +	struct firmware_mgr *mgr;
> +
> +	printf("firmware programming handlers:\n\n");
> +
> +	if (list_empty(&firmwaremgr_list)) {
> +		printf("(none)\n");
> +		return;
> +	}
> +
> +	printf("%-11s%-11s\n", "name:", "model:");
> +
> +	list_for_each_entry(mgr, &firmwaremgr_list, list) {
> +		printf("%-11s", mgr->handler->id);
> +		if (mgr->handler->model)
> +			printf("%-11s", mgr->handler->model);
> +		printf("\n");

You should add a whitespace between both %-11s. Otherwise there won't be
any whitespace between the strings when they are longer than 11 chars.

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
