Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate03.web.de ([217.72.192.234])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PU0TN-0001Xf-K7
	for barebox@lists.infradead.org; Sat, 18 Dec 2010 17:21:37 +0000
Date: Sat, 18 Dec 2010 18:21:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101218172131.GL6017@pengutronix.de>
References: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
	<1292685309-32326-5-git-send-email-s.hauer@pengutronix.de>
	<AANLkTi=D2uErKO0_HL0poEtcwymgU_E1VfeqUPqe+DW1@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTi=D2uErKO0_HL0poEtcwymgU_E1VfeqUPqe+DW1@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/7] LED: Add LED trigger support
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

Hi Marek,

On Sat, Dec 18, 2010 at 05:51:56PM +0100, Belisko Marek wrote:
> Hi,
> =

> On Sat, Dec 18, 2010 at 4:15 PM, Sascha Hauer <s.hauer@pengutronix.de> wr=
ote:
> > This patch allows to associate LEDs with certain triggers, such
> > as heartbeat or network activity.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> > =A0drivers/led/Kconfig =A0| =A0 =A03 +++
> > =A0drivers/led/Makefile | =A0 =A01 +
> > =A0include/led.h =A0 =A0 =A0 =A0| =A0 26 ++++++++++++++++++++++++++
> > =A0include/net.h =A0 =A0 =A0 =A0| =A0 =A03 +++
> > =A0lib/vsprintf.c =A0 =A0 =A0 | =A0 =A04 ++++
> > =A0net/eth.c =A0 =A0 =A0 =A0 =A0 =A0| =A0 20 +++++++++++++++++++-
> > =A0net/net.c =A0 =A0 =A0 =A0 =A0 =A0| =A0 21 ++++++++++++++++-----
> > =A07 files changed, 72 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/led/Kconfig b/drivers/led/Kconfig
> > index b5e2f97..d8540c5 100644
> > --- a/drivers/led/Kconfig
> > +++ b/drivers/led/Kconfig
> > @@ -7,4 +7,7 @@ config LED_GPIO
> > =A0 =A0 =A0 =A0bool "gpio LED support"
> > =A0 =A0 =A0 =A0depends on GENERIC_GPIO
> >
> > +config LED_TRIGGERS
> > + =A0 =A0 =A0 bool "LED triggers support"
> > +
> > =A0endif
> > diff --git a/drivers/led/Makefile b/drivers/led/Makefile
> > index 29b9fd5..6aafa6d 100644
> > --- a/drivers/led/Makefile
> > +++ b/drivers/led/Makefile
> > @@ -1,2 +1,3 @@
> > =A0obj-$(CONFIG_LED) +=3D core.o
> > =A0obj-$(CONFIG_LED_GPIO) +=3D led-gpio.o
> > +obj-$(CONFIG_LED_TRIGGERS) +=3D led-triggers.o
> > diff --git a/include/led.h b/include/led.h
> > index 98b8c2e..2dc0f9d 100644
> > --- a/include/led.h
> > +++ b/include/led.h
> > @@ -22,6 +22,32 @@ int led_register(struct led *led);
> > =A0void led_unregister(struct led *led);
> > =A0void led_unregister(struct led *led);
> >
> > +/* LED trigger support */
> > +enum led_trigger {
> > + =A0 =A0 =A0 led_trigger_panic,
> > + =A0 =A0 =A0 led_trigger_heartbeat,
> > + =A0 =A0 =A0 led_trigger_net_rx,
> > + =A0 =A0 =A0 led_trigger_net_tx,
> > + =A0 =A0 =A0 led_trigger_net_txrx,
> > + =A0 =A0 =A0 led_trigger_max,
> > +};
> shouldn't be enums uppercase?

You're right. Will change this.

Sascha

> > +
> > +#ifdef CONFIG_LED_TRIGGERS
> > +int led_set_trigger(enum led_trigger trigger, struct led *led);
> > +void led_trigger(enum led_trigger trigger, bool enable);
> > +#else
> > +static inline int led_set_trigger(enum led_trigger trigger, struct led=
 *led)
> > +{
> > + =A0 =A0 =A0 return 0;
> > +}
> > +
> > +static inline void led_trigger(enum led_trigger trigger, bool enable)
> > +{
> > +}
> > +#endif
> > +
> > +int led_get_trigger(enum led_trigger trigger);
> > +
> > =A0/* gpio LED support */
> > =A0struct gpio_led {
> > =A0 =A0 =A0 =A0int gpio;
> > diff --git a/include/net.h b/include/net.h
> > index c695e5f..71c314e 100644
> > --- a/include/net.h
> > +++ b/include/net.h
> > @@ -18,6 +18,7 @@
> > =A0#include <malloc.h>
> > =A0#include <stdlib.h>
> > =A0#include <clock.h>
> > +#include <led.h>
> > =A0#include <asm/byteorder.h> =A0 =A0 /* for nton* / ntoh* stuff */
> >
> >
> > @@ -417,4 +418,6 @@ static inline unsigned char *net_udp_get_payload(st=
ruct net_connection *con)
> > =A0int net_udp_send(struct net_connection *con, int len);
> > =A0int net_icmp_send(struct net_connection *con, int len);
> >
> > +void led_trigger_network(enum led_trigger trigger, int active);
> > +
> > =A0#endif /* __NET_H__ */
> > diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> > index e2ea84d..6117337 100644
> > --- a/lib/vsprintf.c
> > +++ b/lib/vsprintf.c
> > @@ -17,6 +17,7 @@
> > =A0#include <malloc.h>
> >
> > =A0#include <common.h>
> > +#include <led.h>
> > =A0#include <reloc.h>
> >
> > =A0unsigned long simple_strtoul(const char *cp,char **endp,unsigned int=
 base)
> > @@ -625,6 +626,9 @@ void __noreturn panic(const char *fmt, ...)
> > =A0 =A0 =A0 =A0vprintf(fmt, args);
> > =A0 =A0 =A0 =A0putchar('\n');
> > =A0 =A0 =A0 =A0va_end(args);
> > +
> > + =A0 =A0 =A0 led_trigger(led_trigger_panic, 1);
> > +
> > =A0#if defined (CONFIG_PANIC_HANG)
> > =A0 =A0 =A0 =A0hang();
> > =A0#else
> > diff --git a/net/eth.c b/net/eth.c
> > index a82a263..6ac4f09 100644
> > --- a/net/eth.c
> > +++ b/net/eth.c
> > @@ -77,7 +77,13 @@ int eth_send(void *packet, int length)
> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0eth_current->active =3D 1;
> > =A0 =A0 =A0 =A0}
> >
> > - =A0 =A0 =A0 return eth_current->send(eth_current, packet, length);
> > + =A0 =A0 =A0 led_trigger_network(led_trigger_net_tx, 1);
> > +
> > + =A0 =A0 =A0 ret =3D eth_current->send(eth_current, packet, length);
> > +
> > + =A0 =A0 =A0 led_trigger_network(led_trigger_net_tx, 0);
> > +
> > + =A0 =A0 =A0 return ret;
> > =A0}
> >
> > =A0int eth_rx(void)
> > @@ -183,4 +189,16 @@ void eth_unregister(struct eth_device *edev)
> > =A0 =A0 =A0 =A0list_del(&edev->list);
> > =A0}
> >
> > +void led_trigger_network(enum led_trigger trigger, int enable)
> > +{
> > + =A0 =A0 =A0 static bool rx_active, tx_active;
> >
> > + =A0 =A0 =A0 led_trigger(trigger, enable);
> > +
> > + =A0 =A0 =A0 if (trigger =3D=3D led_trigger_net_tx)
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 tx_active =3D enable;
> > + =A0 =A0 =A0 if (trigger =3D=3D led_trigger_net_rx)
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 rx_active =3D enable;
> > +
> > + =A0 =A0 =A0 led_trigger(led_trigger_net_txrx, tx_active || rx_active);
> > +}
> > diff --git a/net/net.c b/net/net.c
> > index a613d1d..afd5964 100644
> > --- a/net/net.c
> > +++ b/net/net.c
> > @@ -628,19 +628,30 @@ int net_receive(unsigned char *pkt, int len)
> > =A0{
> > =A0 =A0 =A0 =A0struct ethernet *et =3D (struct ethernet *)pkt;
> > =A0 =A0 =A0 =A0int et_protlen =3D ntohs(et->et_protlen);
> > + =A0 =A0 =A0 int ret;
> >
> > - =A0 =A0 =A0 if (len < ETHER_HDR_SIZE)
> > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 return 0;
> > + =A0 =A0 =A0 led_trigger_network(led_trigger_net_rx, 1);
> > +
> > + =A0 =A0 =A0 if (len < ETHER_HDR_SIZE) {
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 ret =3D 0;
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 goto out;
> > + =A0 =A0 =A0 }
> >
> > =A0 =A0 =A0 =A0switch (et_protlen) {
> > =A0 =A0 =A0 =A0case PROT_ARP:
> > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 return net_handle_arp(pkt, len);
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 ret =3D net_handle_arp(pkt, len);
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> > =A0 =A0 =A0 =A0case PROT_IP:
> > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 return net_handle_ip(pkt, len);
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 ret =3D net_handle_ip(pkt, len);
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> > =A0 =A0 =A0 =A0default:
> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0debug("%s: got unknown protocol type: %d=
\n", __func__, et_protlen);
> > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 return 1;
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 ret =3D 1;
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> > =A0 =A0 =A0 =A0}
> > +out:
> > + =A0 =A0 =A0 led_trigger_network(led_trigger_net_rx, 0);
> > + =A0 =A0 =A0 return ret;
> > =A0}
> >
> > =A0static int net_init(void)
> > --
> > 1.7.2.3
> >
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> >
> =

> thanks,
> =

> marek
> =

> -- =

> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
> =

> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> icq: 290551086
> web: http://open-nandra.com
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
