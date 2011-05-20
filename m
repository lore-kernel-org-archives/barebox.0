Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gateway.hbm.com ([213.157.30.2] helo=hbmntx5.hbm.com)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QNPmd-0007LG-9t
	for barebox@lists.infradead.org; Fri, 20 May 2011 13:30:28 +0000
Content-Class: urn:content-classes:message
From: "Tim Sander" <tim.sander@hbm.com>
Date: Fri, 20 May 2011 15:30:19 +0200
References: <201105201407.08429.tim.sander@hbm.com>
	<4DD66946.4050906@eukrea.com>
In-Reply-To: <4DD66946.4050906@eukrea.com>
MIME-Version: 1.0
Message-ID: <201105201530.20237.tim.sander@hbm.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: GPIO Support on pcm043
To: =?iso-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric

Thanks for your answer
> > Is there some obvious error on my side or is there no gpio
> > support for pcm043? At least there seems to be support for
> > the gpio ports on imx?
> > Any hints?
> =

> you first need to configure the mux of the pins to GPIO mode, then you can
> use them as gpio.
After tripping into that trap multiple times, i've already checked that, but
forgot to mention it:
static struct pad_desc pcm043_pads[] =3D {
	...
        MX35_PAD_D3_CLS__GPIO1_4,
        MX35_PAD_D3_SPL__GPIO1_5,
	...

These should be the gpio nrs 4 and 5 which means that
gpio_set_direction 4 1
or
gpio_set_direction 4 0
should light up the led.

The led is working under linux so it's some problem with the gpio setup.

Thanks
Tim

Hottinger Baldwin Messtechnik GmbH, Im Tiefen See 45, 64293 Darmstadt, Germ=
any | www.hbm.com =


Registered as GmbH (German limited liability corporation) in the commercial=
 register at the local court of Darmstadt, HRB 1147  =

Company domiciled in Darmstadt | CEO: Andreas Huellhorst | Chairman of the =
board: James Charles Webster

Als Gesellschaft mit beschraenkter Haftung eingetragen im Handelsregister d=
es Amtsgerichts Darmstadt unter HRB 1147 =

Sitz der Gesellschaft: Darmstadt | Geschaeftsfuehrung: Andreas Huellhorst |=
 Aufsichtsratsvorsitzender: James Charles Webster

The information in this email is confidential. It is intended solely for th=
e addressee. If you are not the intended recipient, please let me know and =
delete this email.

Die in dieser E-Mail enthaltene Information ist vertraulich und lediglich f=
=FCr den Empfaenger bestimmt. Sollten Sie nicht der eigentliche Empfaenger =
sein, informieren Sie mich bitte kurz und loeschen diese E-Mail.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
