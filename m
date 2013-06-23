Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UqpOn-0008Cy-He
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 18:52:30 +0000
Date: Sun, 23 Jun 2013 20:52:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130623185206.GN32299@pengutronix.de>
References: <CAGo_u6pP9djhzUZyOLNewL4kDwcY0A_KW1ZmdHVurCwBUxBEEg@mail.gmail.com>
 <1371803042-1179-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371803042-1179-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH v2] OMAP4 do not set TPS62361_REG_ADDR_SET0
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 21, 2013 at 10:24:02AM +0200, Jan Weitzel wrote:
> Don't set SET0 voltage, because it acts as boot voltage for OPP boot.
> Take care that the kernel doesn't drive vset gpio to low. This may
> happen while reseting the gpio module at initialization, look for
> HWMOD_INIT_NO_RESET.
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> Reviewed-by: Nishanth Menon <nm@ti.com>

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
