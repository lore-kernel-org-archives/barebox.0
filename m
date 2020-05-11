Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY28N-0008My-Lp
 for barebox@lists.infradead.org; Mon, 11 May 2020 06:41:54 +0000
Date: Mon, 11 May 2020 08:41:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200511064148.GQ5877@pengutronix.de>
References: <20200511061703.593030-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511061703.593030-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] fixup! ARM: i.MX: boot: interpret reserved boot as
 forced serial
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Mon, May 11, 2020 at 08:17:03AM +0200, Ahmad Fatoum wrote:
> imx6_get_boot_source is used by the zii-imx6q-rdu2 board in PBL,
> but cpu_is_mx6ul accesses a global variable that's not linked
> into PBL. Fix this by using cpu_mx6_is_mx6ul instead.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>

Yeah, thanks, I was about to complain because my compile test failed ;)

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
