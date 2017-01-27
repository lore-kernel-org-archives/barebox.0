Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cX4mN-0002Ij-Ur
 for barebox@lists.infradead.org; Fri, 27 Jan 2017 11:33:25 +0000
Date: Fri, 27 Jan 2017 12:32:45 +0100 (CET)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <20170126071640.owiwqt5eyr3wtzr7@pengutronix.de>
Message-ID: <alpine.DEB.2.00.1701271227450.25349@blala.de>
References: <1485343915-24850-1-git-send-email-akurz@blala.de>
 <20170126071640.owiwqt5eyr3wtzr7@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH] ARM: i.MX7: add AIPS base address defines
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org



On Thu, 26 Jan 2017, Sascha Hauer wrote:

> On Wed, Jan 25, 2017 at 12:31:55PM +0100, Alexander Kurz wrote:
> > Import the ARM IP bus base addresses from IMX7DRM 05/2016 AIPS Memory Map
> 
> In my reference manual the addresses are given directly as numbers. I
> often wondered for the other i.MX SoCs what the advantage of such such
> multi-stage defines is:
> 
> #define MX7_AIPS1_ARB_BASE_ADDR     0x30000000
> #define MX7_ATZ1_BASE_ADDR          MX7_AIPS1_ARB_BASE_ADDR
> #define MX7_AIPS1_OFF_BASE_ADDR     (MX7_ATZ1_BASE_ADDR + 0x200000)
> #define MX7_GPIO1_BASE_ADDR         (MX7_AIPS1_OFF_BASE_ADDR)
> 
> I often enough ended up calculating the values by hand to get the
> address to type into barebox md/mw commands or to see which address
> is meant to look it up in the reference manual (for some defines which
> do not have a clear name)
> 
> Are there any real advantages of these multi stage defines? Otherwise
> I would suggest to use the absolute addresses directly.
Yes indeed, the lookup of cascaded defines is quite annoying and I am not
aware of any benefit.
I'll post an updated version of this patch.
Cheers, Alexander

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
