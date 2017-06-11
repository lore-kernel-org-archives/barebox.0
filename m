Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1.mentorg.com ([192.94.38.131])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dK8zd-0008Dq-9S
 for barebox@lists.infradead.org; Sun, 11 Jun 2017 19:57:51 +0000
References: <20170609141622.21502-1-o.rempel@pengutronix.de>
 <CAL_JsqJeSCN88JnVnofb2Ncy4bDyXiKQbLniHmvbE4j854ZePA@mail.gmail.com>
 <20170611061919.jsbc7x67ut4segj5@pengutronix.de>
From: Vladimir Zapolskiy <vladimir_zapolskiy@mentor.com>
Message-ID: <2432df7e-5d20-42c9-ddc0-044c2ca5ce2b@mentor.com>
Date: Sun, 11 Jun 2017 22:57:18 +0300
MIME-Version: 1.0
In-Reply-To: <20170611061919.jsbc7x67ut4segj5@pengutronix.de>
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
To: Oleksij Rempel <ore@pengutronix.de>, Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>, Alexandre Courbot <gnurou@gmail.com>, "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Oleksij Rempel <o.rempel@pengutronix.de>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "kernel@pengutronix.de" <kernel@pengutronix.de>, barebox@lists.infradead.org

Hi Oleksij,

On 06/11/2017 09:19 AM, Oleksij Rempel wrote:
> Hi Rob,
> 
> On Fri, Jun 09, 2017 at 10:41:30AM -0500, Rob Herring wrote:
>> On Fri, Jun 9, 2017 at 9:16 AM, Oleksij Rempel <o.rempel@pengutronix.de> wrote:
>>> This property is needed for barebox or may be other bootloaders
>>> to set proper gpio configuration as early as possible.
>>>
>>> This example is mainly based on "lines-initial-states" property
>>> from this binding documentation:
>>> Documentation/devicetree/bindings/gpio/gpio-pcf857x.txt
>>
>> Don't we have a binding for this already based on gpio-hogs.
> 
> Markus Pargmann was working on this topic before and suddenly was not
> able to finish it.

that's fine, but the proposed extension is supposedly not wanted.

> I found only some not finished discussions and no code or documentation
> in linux kernel upstream.
> 
> So far, I was able to find fallowing patches and discussions:
> patch 23.08.2015, last comment 11.05.2017:
> https://patchwork.kernel.org/patch/7096721/
> 
> patch 23.02.2016, last comment 09.03.2016:
> https://patchwork.ozlabs.org/patch/586743/
> 
> Since there was objections about node-like design for gpio-initval, I
> provided an array property, which is similar to initval properties already used
> for different other device nodes. For example:
> 
> Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> qcom,ath10k-calibration-data
> 
> Documentation/devicetree/bindings/gpio/gpio-pcf857x.txt
> lines-initial-states

It'd rather be better to fix the drivers and remove the properties
from these found device tree binding descriptions.

> 
> Please fixme if I miss something.

Why is GPIO hogging mechanism not good enough for your purpose?

--
With best wishes,
Vladimir

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
