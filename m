Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x243.google.com ([2607:f8b0:4003:c06::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSZWS-0002Zo-0m
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 02:59:05 +0000
Received: by mail-oi0-x243.google.com with SMTP id i205-v6so19786276oib.1
 for <barebox@lists.infradead.org>; Mon, 11 Jun 2018 19:58:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180612015326.26192-54-andrew.smirnov@gmail.com>
References: <20180612015326.26192-1-andrew.smirnov@gmail.com>
 <20180612015326.26192-54-andrew.smirnov@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 11 Jun 2018 23:58:52 -0300
Message-ID: <CAOMZO5BXfg-KQNcpG9UKKmi8qfVWW6ZZzipPYRLMAi8R2bv_QQ@mail.gmail.com>
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Mon, Jun 11, 2018 at 10:53 PM, Andrey Smirnov
<andrew.smirnov@gmail.com> wrote:

> +       pinctrl_fec1_data_tx: fec1datatxgrp {
> +               pinmux = <
> +                       MX8MQ_IOMUXC_ENET_TD3_ENET1_RGMII_TD3
> +                       MX8MQ_IOMUXC_ENET_TD2_ENET1_RGMII_TD2
> +                       MX8MQ_IOMUXC_ENET_TD1_ENET1_RGMII_TD1
> +                       MX8MQ_IOMUXC_ENET_TD0_ENET1_RGMII_TD0
> +                       MX8MQ_IOMUXC_ENET_TXC_ENET1_RGMII_TXC
> +                       MX8MQ_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL
> +               >;
> +               drive-strength = <7>;
> +               slew-rate = <3>;

In the arm linux kernel list it was suggested that the old pinctrl
style (the same we use on mx5/mx6/mx7) should be used instead of this
new generic pinctrl setting.

Thanks

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
