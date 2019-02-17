Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvPFh-0004yT-EC
 for barebox@lists.infradead.org; Sun, 17 Feb 2019 16:25:15 +0000
Date: Sun, 17 Feb 2019 17:25:09 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190217162509.GA19150@ravnborg.org>
References: <20190204102937.GA2663@lenoch> <20190216221433.GA1604@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190216221433.GA1604@ravnborg.org>
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
Subject: Re: [PATCH] dts: Revert at91 switch to new PMC clock bindings
To: Ladislav Michl <ladis@linux-mips.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Sat, Feb 16, 2019 at 11:14:33PM +0100, Sam Ravnborg wrote:
> Hi Ladislav
> 
> > Recent DTS update brought in switch to the new PMC clock
> > bindings, however we do not support that yet. Revert this
> > change until PMC clock bindings support is implemented.
> 
> I have now ported the clk code from the kernel so barebox
> have support for PMC bindings.
> Can you give it a try and see if this works for you.
> 
> So far I have only tested this on at91sam9263ek - a DT enabled board.
> It builds for non-DT boards.
> 
> Patch needs a bit love before it is ready to submit.
> Could I get early feedback that would be great.
Updated patchset sent please try this is possible.

Thanks,
	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
