Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsXpw-0000Uv-3Z
 for barebox@lists.infradead.org; Wed, 22 Aug 2018 18:26:33 +0000
Date: Wed, 22 Aug 2018 20:26:15 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180822182615.GA21464@ravnborg.org>
References: <20180820145215.GA22058@ravnborg.org>
 <20180820145612.17576-2-sam@ravnborg.org>
 <20180821075019.cl2r4w7zbyxilb26@pengutronix.de>
 <20180821194644.GA14835@ravnborg.org>
 <73450612-5333-d00e-9889-be0633938797@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73450612-5333-d00e-9889-be0633938797@pengutronix.de>
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
Subject: Re: [PATCH v3 2/3] phylib: add support for reset-gpios
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Wed, Aug 22, 2018 at 03:14:57PM +0200, Ahmad Fatoum wrote:
> Hello Sam,
> 
> On 08/21/2018 09:46 PM, Sam Ravnborg wrote:
> > But macb.txt or the general bindigns do not mention
> > a mdio child.
> > And the Linux macb_main.c do not support a "mdio" node either.
> > So my best guess is that the "mdio" support in macb was accidently
> > ported over from fec-imx when adding DT support.
> [snip]
> > Considering the above I will do the following:
> > a) Remove "mdio" support from macb.c
> 
> While submitting a macb patch to linux-netdev, I was asked [1] to add
> support for a "mdio" subtree in the macb binding. I intend to submit
> it when net-next opens for inclusion into Linux v4.20.
> That way, macb would look at phys in the list of its children as well
> as the children of its "mdio" child.
> 
> Just a heads up to avoid removing functionality that would've to be
> reinstated later on...
> 
> [1]: https://www.spinics.net/lists/netdev/msg519196.html

Thanks for bringing this to my attention.
I will leave the code as-is.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
