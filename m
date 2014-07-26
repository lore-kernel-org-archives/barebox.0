Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XApO7-0003yy-83
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 23:59:00 +0000
Received: by mail-lb0-f169.google.com with SMTP id s7so3987812lbd.28
 for <barebox@lists.infradead.org>; Fri, 25 Jul 2014 16:58:35 -0700 (PDT)
Date: Sat, 26 Jul 2014 04:11:16 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140726041116.b5954ec1418ea412e97d8161@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: led-gpio: do we really need xstrdup
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Hi all!

Do we really need xstrdup for led's name?

Please see drivers/led/led-gpio.c: led_gpio_of_probe()

for_each_child_of_node(dev->device_node, child) {
                struct gpio_led *gled;
                enum of_gpio_flags flags;
                int gpio;
                =

                gpio =3D of_get_named_gpio_flags(child, "gpios", 0, &flags);
                if (gpio < 0)
                        continue;
                =

                gled =3D xzalloc(sizeof(*gled));
                gled->led.name =3D xstrdup(child->name);
                                 ^^^^^^^^^^^^^^^^^^^^^^^^^ ??????????????

                gled->gpio =3D gpio;
                gled->active_low =3D (flags & OF_GPIO_ACTIVE_LOW) ? 1 : 0;
                =

                dev_dbg(dev, "register led %s on gpio%d, active_low =3D %d\=
n",    =

                        gled->led.name, gled->gpio, gled->active_low);     =
     =


                led_gpio_register(gled);
                led_of_parse_trigger(&gled->led, child);
        }



--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
