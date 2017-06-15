Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dLNmB-0006ps-Hu
 for barebox@lists.infradead.org; Thu, 15 Jun 2017 05:57:05 +0000
Date: Thu, 15 Jun 2017 07:56:32 +0200
From: Oleksij Rempel <ore@pengutronix.de>
Message-ID: <20170615055632.qjtyf6kiqdam3mho@pengutronix.de>
References: <20170609141622.21502-1-o.rempel@pengutronix.de>
 <CAL_JsqJeSCN88JnVnofb2Ncy4bDyXiKQbLniHmvbE4j854ZePA@mail.gmail.com>
 <20170611061919.jsbc7x67ut4segj5@pengutronix.de>
 <2432df7e-5d20-42c9-ddc0-044c2ca5ce2b@mentor.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2432df7e-5d20-42c9-ddc0-044c2ca5ce2b@mentor.com>
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
Subject: Re: [PATCH v1 1/1] gpio: of: provide option generic property for
 initial line states
To: Vladimir Zapolskiy <vladimir_zapolskiy@mentor.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Alexandre Courbot <gnurou@gmail.com>, Oleksij Rempel <o.rempel@pengutronix.de>, Linus Walleij <linus.walleij@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, "kernel@pengutronix.de" <kernel@pengutronix.de>, barebox@lists.infradead.org

Hi Vladimir,

On Sun, Jun 11, 2017 at 10:57:18PM +0300, Vladimir Zapolskiy wrote:
> Hi Oleksij,
> 
> On 06/11/2017 09:19 AM, Oleksij Rempel wrote:
> > Hi Rob,
> > 
> > On Fri, Jun 09, 2017 at 10:41:30AM -0500, Rob Herring wrote:
> >> On Fri, Jun 9, 2017 at 9:16 AM, Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> >>> This property is needed for barebox or may be other bootloaders
> >>> to set proper gpio configuration as early as possible.
> >>>
> >>> This example is mainly based on "lines-initial-states" property
> >>> from this binding documentation:
> >>> Documentation/devicetree/bindings/gpio/gpio-pcf857x.txt
> >>
> >> Don't we have a binding for this already based on gpio-hogs.
> > 
> > Markus Pargmann was working on this topic before and suddenly was not
> > able to finish it.
> 
> that's fine, but the proposed extension is supposedly not wanted.

:(

> > I found only some not finished discussions and no code or documentation
> > in linux kernel upstream.
> > 
> > So far, I was able to find fallowing patches and discussions:
> > patch 23.08.2015, last comment 11.05.2017:
> > https://patchwork.kernel.org/patch/7096721/
> > 
> > patch 23.02.2016, last comment 09.03.2016:
> > https://patchwork.ozlabs.org/patch/586743/
> > 
> > Since there was objections about node-like design for gpio-initval, I
> > provided an array property, which is similar to initval properties already used
> > for different other device nodes. For example:
> > 
> > Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> > qcom,ath10k-calibration-data
> > 
> > Documentation/devicetree/bindings/gpio/gpio-pcf857x.txt
> > lines-initial-states
> 
> It'd rather be better to fix the drivers and remove the properties
> from these found device tree binding descriptions.

no sure if it is possible. WiFi calibration data is kind of initval too.

> > 
> > Please fixme if I miss something.
> 
> Why is GPIO hogging mechanism not good enough for your purpose?

Becouse it should not permanently hog a gpio. The "Hogging" should be
released as soon as some driver will request it.

Right now, if I define gpio-hog, boot loader will configure it and start
linux. But linux will never let it free.

If you have other suggestions which fit to this use case, please tell
me. I assume, right now I'm just blind.

Other way, I can imagine is to create real device nodes which use this
gpios. Compatible for this devices will be like this:
some_gpio_holder: gpio@0 {
	compatible = "gpio-for-userspace";
	gpio = <&gpio1 5 GPIO_ACTIVE_HIGH>;
};

Boot loader will configure it as needed, an linux will do nothing with
it so it can be used over /dev/gpio interface.

> --
> With best wishes,
> Vladimir

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
