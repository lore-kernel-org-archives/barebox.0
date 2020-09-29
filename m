Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNB1y-0002ai-Ri
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 08:30:40 +0000
Date: Tue, 29 Sep 2020 10:30:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200929083036.GZ11648@pengutronix.de>
References: <20200928155041.32649-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200928155041.32649-1-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH 00/18] Barebox Deep-Probe
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Marco,

On Mon, Sep 28, 2020 at 05:50:23PM +0200, Marco Felsch wrote:
> Hi all,
> 
> this series is our approach to address the EPROBE_DEFER and initcall
> shifting problem. I skip the deep-probe explanation here and instead
> refer to the detailed commit message of patch 15. 
> 
> Patche 1-11:
>  - Fixes and cleanups I found during the development of deep-probe

I applied these to -next, so no need to resend them for the next round.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
