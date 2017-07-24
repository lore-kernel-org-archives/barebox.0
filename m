Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZfoL-0003qC-Pn
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 16:02:28 +0000
Date: Mon, 24 Jul 2017 18:01:58 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170724160158.GC18294@ravnborg.org>
References: <20170724145400.2279-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170724145400.2279-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/9] i.MX7 SabreSD support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

> Also, note, that for a reason I haven't been able to track down yet,
> compiling Barebox + this patchset without support for FEC will cause
> upstream kernel (at least 4.12-rc1) to hang during boot while trying
> to access FEC's register file. I suspect clock initialization issue,
> but, as I said, I did not find that out conclusively.
Maybe you should include this explanation in the patch that
enables this option?

> 
> Anyway, as usual, any feedback is wellcome.

I have browsed the patches, and provided a little feedback.
Apart form this the series looks good to me.

But then for most parts I am not intiminate with the
code so do not assume too much based on this.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
