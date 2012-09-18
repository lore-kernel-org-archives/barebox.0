Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TE04S-0006BZ-6L
 for barebox@lists.infradead.org; Tue, 18 Sep 2012 15:50:47 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 607FAFF9FB5
 for <barebox@lists.infradead.org>; Tue, 18 Sep 2012 17:56:28 +0200 (CEST)
Date: Tue, 18 Sep 2012 17:48:06 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120918154806.GS25990@game.jcrosoft.org>
References: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
 <1347480407-16865-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347480407-16865-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 02/15] of: add devicetree probing support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> +		    !strcmp(pp->name, "linux,phandle"))
> +			continue;
> +
> +		np = of_find_node_by_path(pp->value);
> +		if (!np)
> +			continue;
> +
> +		/* walk the alias backwards to extract the id and work out
> +		 * the 'stem' string */
> +		while (isdigit(*(end-1)) && end > start)
> +			end--;
> +		len = end - start;
> +
> +		id = simple_strtol(end, 0, 10);
> +		if (id < 0)
> +			continue;
> +
> +		/* Allocate an alias_prop with enough space for the stem */
> +		ap = xzalloc(sizeof(*ap) + len + 1);
xzalloc does not if nomem
> +		if (!ap)
> +			continue;
> +		ap->alias = start;
> +		of_alias_add(ap, np, id, start, len);
> +	}
> +}
> +
Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
