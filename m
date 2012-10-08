Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TL9Fk-0002E3-Nk
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 09:03:57 +0000
Date: Mon, 8 Oct 2012 11:03:13 +0200
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20121008090313.GA5498@sig21.net>
References: <1349614983-12495-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349614983-12495-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] designware: add clock support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 07, 2012 at 03:03:03PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> allow the driver to request it's clock and enable it
...
> +	clk = clk_get(dev, NULL);
> +	if (IS_ERR(clk)) {
> +		ret = PTR_ERR(clk);
> +		dev_err(dev, "no clk ret = %d\n", ret);
> +		return ret;
> +	}

Just a minor nit: s/allow/require/.  Users of the driver may
now have to define a dummy clock.  Since the actual clock freqeuency
is not used by the driver you could also make it optional?

And while at it, it's "its", not "it's". :-)

Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
