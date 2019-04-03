Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBcYs-0000L2-3O
 for barebox@lists.infradead.org; Wed, 03 Apr 2019 09:52:03 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=a3f-osx.local)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <a.fatoum@pengutronix.de>) id 1hBcYq-0008Sh-Cu
 for barebox@lists.infradead.org; Wed, 03 Apr 2019 11:52:00 +0200
References: <20190401201210.17975-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <bbe97cb3-2e21-2eb2-a727-5b1014d3fd73@pengutronix.de>
Date: Wed, 3 Apr 2019 11:52:00 +0200
MIME-Version: 1.0
In-Reply-To: <20190401201210.17975-1-a.fatoum@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 0/6] clk: imx6: work around LDB hang caused by ERR009219
To: barebox@lists.infradead.org

On 1/4/19 22:12, Ahmad Fatoum wrote:
> The erratum already has a Linux workaround. On barebox, it can currently
> happen if there's an appropriate assigned-clock-parents property or the
> reparenting happens (i.e. CONFIG_DRIVER_VIDEO_IMX_IPUV3 is selected on a
> board with the aforementioned CPU/Revision pairs). Linux has removed the
> reparenting along with the bug fix. If barebox did this, boards that
> depended on the reparenting may be broken.

After a discussion with Philipp and Sascha, I'll rearrange this patch series:
Patch 6/6 will wander to the start of the series and will remove the quirk of
the ldb _sometimes_ having pll5_video_div as parent and instead never set it
by default, like the kernel does now but potentially breaking boards that
depended on barebox setting this. 

Now with the need for the funny conditionals removed, I can squash 1/6, 3/6, 4/6,
without much loss of comprehensibility (not that it was particularly comprehensible
before..).


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
