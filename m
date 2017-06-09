Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dJM3C-0008IR-7j
 for barebox@lists.infradead.org; Fri, 09 Jun 2017 15:42:15 +0000
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
 [209.85.161.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 351A3239E6
 for <barebox@lists.infradead.org>; Fri,  9 Jun 2017 15:41:51 +0000 (UTC)
Received: by mail-yw0-f177.google.com with SMTP id e142so14047973ywa.1
 for <barebox@lists.infradead.org>; Fri, 09 Jun 2017 08:41:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170609141622.21502-1-o.rempel@pengutronix.de>
References: <20170609141622.21502-1-o.rempel@pengutronix.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 9 Jun 2017 10:41:30 -0500
Message-ID: <CAL_JsqJeSCN88JnVnofb2Ncy4bDyXiKQbLniHmvbE4j854ZePA@mail.gmail.com>
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
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Mark Rutland <mark.rutland@arm.com>, Alexandre Courbot <gnurou@gmail.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, "kernel@pengutronix.de" <kernel@pengutronix.de>, barebox@lists.infradead.org

On Fri, Jun 9, 2017 at 9:16 AM, Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> This property is needed for barebox or may be other bootloaders
> to set proper gpio configuration as early as possible.
>
> This example is mainly based on "lines-initial-states" property
> from this binding documentation:
> Documentation/devicetree/bindings/gpio/gpio-pcf857x.txt

Don't we have a binding for this already based on gpio-hogs.

Rob

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
