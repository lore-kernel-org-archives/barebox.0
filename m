Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dtDFB-0001WC-DJ
 for barebox@lists.infradead.org; Sat, 16 Sep 2017 13:34:51 +0000
Date: Sat, 16 Sep 2017 15:34:15 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170916133415.GA6457@ravnborg.org>
References: <20170915083922.25134-1-l.stach@pengutronix.de>
 <20170915083922.25134-4-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170915083922.25134-4-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 03/12] clk: versatile: add basic clocks
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Lucas.

On Fri, Sep 15, 2017 at 10:39:13AM +0200, Lucas Stach wrote:
> This adds the necessary basic clocks used on the ARM versatile
> platforms.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> + *
> + * Copyright (C) 2013 ARM Limited
> + */
> +
> +//#include <linux/amba/sp810.h>

Looks like a leftover of some sort.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
