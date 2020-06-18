Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlu7H-0004b4-FW
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 12:58:07 +0000
Date: Thu, 18 Jun 2020 14:58:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200618125801.GI11869@pengutronix.de>
References: <20200616055202.9308-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616055202.9308-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 0/2] transfer Protonic barebox development to the
 mainline
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, David Jander <david@protonic.nl>

On Tue, Jun 16, 2020 at 07:52:00AM +0200, Oleksij Rempel wrote:
> This is initial patch set to transfer Protonic barebox development to the mainline.
> Most important changes of this patches are in
> arch/arm/boards/protonic-imx6 folder. The devicetrees are mostly
> unchanged, since they will be replaced by kernel version soon. 
> 
> changes v2:
> - use imx6_cpu_lowlevel_init instead of arm_cpu_lowlevel_init
> - use imx6q_barebox_entry instead of barebox_arm_entry
> - remove debug_ll. Currently it is not needed
> - remove part of pinmuxing from DCD files
> 
> Oleksij Rempel (2):
>   ARM: dts: imx6: add Protonic boards
>   ARM: add imx6 based Protonic boads

Applied, thanks

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
