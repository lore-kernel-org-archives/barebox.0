Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dT61T-0002dq-4Q
 for barebox@lists.infradead.org; Thu, 06 Jul 2017 12:36:46 +0000
Message-ID: <1499344455.22075.55.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 06 Jul 2017 14:34:15 +0200
In-Reply-To: <20170705171813.17527-1-andrey.gusakov@cogentembedded.com>
References: <20170705171813.17527-1-andrey.gusakov@cogentembedded.com>
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
Subject: Re: [PATCH v1 00/10] video: tc358767: fixes and improvements
To: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 05.07.2017, 20:18 +0300 schrieb Andrey Gusakov:
> Hi Barebox,
> 
> This set of patches fixes several issues that was found during testing
> tc358767 with desktop DisplayPort displays.
> 
> Changes since v0:
>  - signed-off added
>  - 'fix AUXDATAn registers access' is broken into two
>  - ALIGN used
> 
> Andrey Gusakov (10):
>   video: tc358767: fix EDID read for DP displays
>   video: tc358767: fix DP0_MISC register set
>   video: tc358767: fix timing calculation
>   video: tc358767: fix AUXDATAn registers access during write
>   video: tc358767: do not fail if sink supports more than 2 lanes
>   video: tc358767: support newer DPCD revisions and higher data rates
>   video: tc358767: optimize aux i2c bus checks
>   video: tc358767: optimize DPCD register write
>   video: tc358767: filter out modes with too high pixelclock
>   video: tc358767: accept any hsync and vsync polatiry
> 
>  drivers/video/tc358767.c | 229 ++++++++++++++++++++++++++++++++++++-----------
>  1 file changed, 179 insertions(+), 50 deletions(-)
> 
Applied, thanks.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
