Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aP3B3-0001Qd-Gd
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 07:09:05 +0000
Date: Fri, 29 Jan 2016 08:08:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160129070847.GI13058@pengutronix.de>
References: <1453908178-7106-1-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1453908178-7106-1-git-send-email-yegorslists@googlemail.com>
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
Subject: Re: [PATCH 1/5] Introduce include/linux/sched.h
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Wed, Jan 27, 2016 at 04:22:54PM +0100, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Move cond_resched() from barebox-wrapper.h to its original
> place.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  fs/ubifs/ubifs.h                | 1 +
>  include/linux/barebox-wrapper.h | 2 --
>  include/linux/sched.h           | 6 ++++++
>  3 files changed, 7 insertions(+), 2 deletions(-)
>  create mode 100644 include/linux/sched.h

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
