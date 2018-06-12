Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSkfe-0004KM-5F
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 14:53:19 +0000
Received: by mail-it0-x244.google.com with SMTP id a3-v6so15789194itd.0
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 07:53:06 -0700 (PDT)
MIME-Version: 1.0
References: <20180612015326.26192-1-andrew.smirnov@gmail.com>
 <20180612015326.26192-54-andrew.smirnov@gmail.com>
 <CAOMZO5BXfg-KQNcpG9UKKmi8qfVWW6ZZzipPYRLMAi8R2bv_QQ@mail.gmail.com>
In-Reply-To: <CAOMZO5BXfg-KQNcpG9UKKmi8qfVWW6ZZzipPYRLMAi8R2bv_QQ@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 07:52:52 -0700
Message-ID: <CAHQ1cqESHnXkaf33=-9RxVJVps8yv-aYBxCcRTXLv+1wy9hd8g@mail.gmail.com>
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
Subject: Re: [PATCH v4 53/54] ARM: i.MX8: Add i.MX8mq EVK support
To: Fabio Estevam <festevam@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jun 11, 2018 at 7:58 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Andrey,
>
> On Mon, Jun 11, 2018 at 10:53 PM, Andrey Smirnov
> <andrew.smirnov@gmail.com> wrote:
>
> > +       pinctrl_fec1_data_tx: fec1datatxgrp {
> > +               pinmux = <
> > +                       MX8MQ_IOMUXC_ENET_TD3_ENET1_RGMII_TD3
> > +                       MX8MQ_IOMUXC_ENET_TD2_ENET1_RGMII_TD2
> > +                       MX8MQ_IOMUXC_ENET_TD1_ENET1_RGMII_TD1
> > +                       MX8MQ_IOMUXC_ENET_TD0_ENET1_RGMII_TD0
> > +                       MX8MQ_IOMUXC_ENET_TXC_ENET1_RGMII_TXC
> > +                       MX8MQ_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL
> > +               >;
> > +               drive-strength = <7>;
> > +               slew-rate = <3>;
>
> In the arm linux kernel list it was suggested that the old pinctrl
> style (the same we use on mx5/mx6/mx7) should be used instead of this
> new generic pinctrl setting.
>

Yeah, I think I saw that ML discussion when I was researching this.
AFAICT from looking at for-next in Shawn's tree,
fsl,imx7ulp-pinctrl.txt is still going to be using "new style"
binding, so the code that I wrote is still useful to support that. And
once upstream Linux DT i.MX8M code trickles down, it should be pretty
trivial to switch to old sytle just by changing .flags. With all that
in mind, I'd be inclined to keep code as is unless told to change it
by Sascha.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
