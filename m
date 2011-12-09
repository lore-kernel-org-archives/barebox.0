Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RZ1vk-0005E5-3J
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 15:00:10 +0000
Received: from mail192.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id DF34B104FEFC
 for <barebox@lists.infradead.org>; Fri,  9 Dec 2011 16:00:18 +0100 (CET)
Date: Fri, 9 Dec 2011 15:56:01 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111209145601.GO23884@game.jcrosoft.org>
References: <1323187817-28668-1-git-send-email-m.grzeschik@pengutronix.de>
 <20111209112831.GE8203@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111209112831.GE8203@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: *** PROBABLY SPAM *** [PATCH 4/7] at91sam9260_devices: add
 flag to change ETX{2,3} pincfg on add_device_eth
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:28 Fri 09 Dec     , Michael Grzeschik wrote:
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  arch/arm/mach-at91/at91sam9260_devices.c |    9 +++++++--
please update all soc
>  1 files changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
> index 177f770..be1fdd9 100644
> --- a/arch/arm/mach-at91/at91sam9260_devices.c
> +++ b/arch/arm/mach-at91/at91sam9260_devices.c
> @@ -63,8 +63,13 @@ void at91_add_device_eth(struct at91_ether_platform_data *data)
>  		at91_set_B_periph(AT91_PIN_PA25, 0);	/* ERX2 */
>  		at91_set_B_periph(AT91_PIN_PA26, 0);	/* ERX3 */
>  		at91_set_B_periph(AT91_PIN_PA27, 0);	/* ERXCK */
> -		at91_set_B_periph(AT91_PIN_PA23, 0);	/* ETX2 */
> -		at91_set_B_periph(AT91_PIN_PA24, 0);	/* ETX3 */
> +		if (data->flags & AT91SAM_ETX2_ETX3_ALTERNATIVE) {
I really don't like the idea to propagate pin configuration to the drivers
this show stay at board or soc config level

I prefer to add a new parameter than use a flag use by the driver
please make this more generic alt_config1 as this will what is going to be use
by the pinctrl on at91

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
