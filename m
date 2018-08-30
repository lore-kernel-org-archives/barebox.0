Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvErm-0003b7-Vr
 for barebox@lists.infradead.org; Thu, 30 Aug 2018 04:47:36 +0000
Date: Thu, 30 Aug 2018 06:45:15 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180830044515.GA18792@ravnborg.org>
References: <20180829221727.15273-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180829221727.15273-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH v3] lxc: add new package
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Michael.
On Thu, Aug 30, 2018 at 12:17:27AM +0200, Michael Grzeschik wrote:
> This patch adds support for the lxc container system. We install the
> userspace lib and application.
> 
> To make sure all necessary kernel options are enabled use:
> $ CONFIG=/path/to/kernelconfig lxc-checkconfig
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>

-WRONGMAILLIST?

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
