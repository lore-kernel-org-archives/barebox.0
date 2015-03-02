Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YSJaF-0003YC-1g
 for barebox@lists.infradead.org; Mon, 02 Mar 2015 06:12:04 +0000
Date: Mon, 2 Mar 2015 07:11:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150302061138.GE11010@pengutronix.de>
References: <1425215557-6525-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425215557-6525-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] ARM: do not specify -static and -pie at the same time
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sun, Mar 01, 2015 at 02:12:37PM +0100, Lucas Stach wrote:
> PIE is a form of dynamic linking and thus inherently incompatible
> with -static. It worked ok as the current behavior of ld.bfd is
> to not respect -static if -pie has been specified.
> 
> ld.gold and future versions of ld.bfd will fail to link if both
> of those incompatible switches are specified at the same time.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

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
