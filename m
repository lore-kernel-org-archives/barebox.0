Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kA6Vo-000224-R5
 for barebox@lists.infradead.org; Mon, 24 Aug 2020 07:03:25 +0000
Date: Mon, 24 Aug 2020 09:03:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200824070323.GI13023@pengutronix.de>
References: <20200820073039.3042-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200820073039.3042-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2] serial: imx: set CTS if DT property "linux,
 rs485-enabled-at-boot-time" is present
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, david@protonic.nl

On Thu, Aug 20, 2020 at 09:30:39AM +0200, Oleksij Rempel wrote:
> If we have a "linux,rs485-enabled-at-boot-time" DT property, we should
> set CTS flag as soon as possible to the active state. This will set an
> RS485 transmitter to receive-enable mode. Otherwise the RS485 bus will
> be blocked for entire system boot time and other bus participants will
> not be able to communicate.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/serial/serial_imx.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

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
