Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZUIt-00086y-VM
 for barebox@lists.infradead.org; Wed, 19 Dec 2018 05:21:57 +0000
Message-ID: <7c265230ded826f59b0a4e16f90abd6ec5d6c4a2.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 19 Dec 2018 06:21:40 +0100
In-Reply-To: <87mup229o8.fsf@dell.be.48ers.dk>
References: <cover.61efbc8cc3e2f39adccce96b40af1bb32a30bc66.1545130027.git-series.r.czerwinski@pengutronix.de>
 <20181218140606.lmubb4dff77khwgq@pengutronix.de>
 <87mup229o8.fsf@dell.be.48ers.dk>
Mime-Version: 1.0
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
Subject: Re: [PATCH v5 0/9] Raspberry Pi miniuart support
To: Peter Korsgaard <peter@korsgaard.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 2018-12-18 at 15:26 +0100, Peter Korsgaard wrote:
> > > > > > "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
>  > On Tue, Dec 18, 2018 at 11:47:35AM +0100, Rouven Czerwinski wrote:
>  >> This patch series adds support for the raspberry pi miniuart
> (also called
>  >> aux-uart) to barebox.
>  >> With this series the miniuart overlay is no longer necessary to
> start barebox on
>  >> Raspberry Pi 3.
>  >> 
>  >> v5:
>  >> - Add defines for register and base values
>  >> from Sascha Hauer and Roland Hieber
> 
>  > Applied, thanks
> 
> Where did those defines actually go? I still see a bunch of magic
> values.
> 
They are either contained directly in the original patch (for 5/9) or
in the new 9/9 patch.

- Rouven 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
