Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cm5ro-0004P1-Te
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 21:45:03 +0000
Date: Thu, 9 Mar 2017 22:44:35 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170309214435.GA11122@ravnborg.org>
References: <20170309170545.25325-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170309170545.25325-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH 1/3] console_countdown: width to of countdown to 4 digits
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Oleksij.

On Thu, Mar 09, 2017 at 06:05:43PM +0100, Oleksij Rempel wrote:
> From: Marc Kleine-Budde <mkl@pengutronix.de>
> 
> This patch increases the displayed width of the countdown to 4 digits,
> otherwise waiting for more then 99 seconds doesn't look good.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

Since this was originally authored bu Marc, and then the
patch is handled by you - you are supposed to "Sign-off" the patch.

The idea is that the "Signed-off-by:" tell the path the patch
took from the original author until applied.

So in this case:
Marc Kleine-Budde => Oleksij Rempel => Sascha

Where Sascha will only "Signed-off" if applying as a patch, not when pulling a git tree.


All the above is my understanding - if I am mistaken then I hope
someone on the list will correct me.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
