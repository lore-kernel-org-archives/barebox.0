Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dRxeF-0006ss-Gt
 for barebox@lists.infradead.org; Mon, 03 Jul 2017 09:28:05 +0000
Message-ID: <1499074029.2308.12.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 03 Jul 2017 11:27:09 +0200
In-Reply-To: <20170630114304.8070-1-andrey.gusakov@cogentembedded.com>
References: <20170630114304.8070-1-andrey.gusakov@cogentembedded.com>
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
Subject: Re: [PATCH 0/8] video: tc358767: fixes and improvements
To: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Cc: barebox@lists.infradead.org, Chris.Healy@zii.aero

Hi Andrey,

Am Freitag, den 30.06.2017, 14:42 +0300 schrieb Andrey Gusakov:
> Hi Barebox,
> 
> This set of patches fixes several issues that was found during testing
> tc358767 with several desktop DP displays.
> 
> Andrey Gusakov (8):
>   video: tc358767: do not fail if sink supports more than 2 lanes
>   video: tc358767: support newer DPCD revisions and higher data rates
>   video: tc358767: fix EDID read for DP displays
>   video: tc358767: fix DP0_MISC register set
>   video: tc358767: fix timing calculation
>   video: tc358767: fix AUXDATAn registers access
>   video: tc358767: filter out modes with too high pixelclock
>   video: tc358767: accept any hsync and vsync polatiry
> 
>  drivers/video/tc358767.c | 218 ++++++++++++++++++++++++++++++++++++++---------
>  1 file changed, 179 insertions(+), 39 deletions(-)
> 
All those patches are missing a signed-off-by line, so I can not apply
them. Please fix this for the next revision.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
