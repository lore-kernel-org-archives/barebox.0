Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x236.google.com ([2607:f8b0:4002:c01::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WlCsB-0004vT-8s
 for barebox@lists.infradead.org; Fri, 16 May 2014 07:48:07 +0000
Received: by mail-yh0-f54.google.com with SMTP id i57so4021598yha.41
 for <barebox@lists.infradead.org>; Fri, 16 May 2014 00:47:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140516061744.GT5858@pengutronix.de>
References: <1400158031-16391-1-git-send-email-holgerschurig@gmail.com>
 <20140516061744.GT5858@pengutronix.de>
Date: Fri, 16 May 2014 09:47:45 +0200
Message-ID: <CAOpc7mEiYP9y0neVuG_H3FN0CXK2kXyxtX684NAj59Kr9h2H9g@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: [PATCH v2] ahs2: initial support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Holger Schurig <schurig@dlog.com>

> This file is currently not compiled in.

I know, because I current environment have my own _defconfig still as
a quilt-patch. It's local, because it contains hardcoded the IP
address of my development box for TFTP, for example. I thought that I
put up the real environment once I'm able to decide about the final
environment.

> You can either remove it in case
> you don't need it, or move the env/ directory in your board file to
> defaultenv-ahs2/, add to the make rules:
>
> bbenv-y += defaultenv-ahs2
>
> And in some initcall do:
>
> defaultenv_append_directory(defaultenv_ahs2);
>
> This way the ahs2 specific files will be in the environment exactly when
> the binary is started on your board.

Good to know. But, as said, currently I cannot do this. After all,
this is an "initial support" patch.


>> +static inline void early_uart1_init(void)
>> +{
>> +     // 2681: IOMUXC_UART1_UART_RX_DATA_SELECT_INPUT to ALT1 (CSI0_DATA10_ALT3 )
>> +     // 2621: IOMUXC_ECSPI2_MISO_SELECT_INPUT to ALT2 (CSI0_DATA10_ALT2)
>> +     // 2092: IOMUXC_SW_MUX_CTL_PAD_CSI0_DATA10 to ALT3 (UART1_TX_DATA)
>
> What are these numbers?

The page numbers in the i.MX6 reference manual :-)



> Please replace with /* C comments */

Sigh, we still aren't in the year 2014 ?!?!?   Somehow this  "no //"
reminds me that the other day a collegue of me asked me to set the
baudrate to 38400 :-)

And while at it: may I suggest that barebox switches to C99?   Thould
would also liberate the placement of variable definitions ...



>> +     aliases {
>> +             ethernet0 = &fec;
>> +     };
>
> Could you add this to the imx6qdl.dtsi file instead?

Sure, I actually don't even know if it is needed. I took it via cut-and-paste.

> Normally this should be in the upstream dtsi file, but as long as it
> isn't we can keep it in barebox.

I'll look if it is needed, and if yes, I'll put it in the dtsi file.


>> +     phy: ethernet-phy@0 {
>> +             speed = <10>;
>> +             duplex = <1>;
>> +     };
>
> speed 10? really?

Now, there are two reasons why I tried this:

* our hardware guys had an error on our layout (wrong resistors). I
should have removed that, my board is now fixed.

* currently, the most time consuming operation in in my
barebox-loads-linux-via-TFTP is the autonegotiation of the PHY. After
"ifup eth0" a "time ping 10.1.2.3" reports 4580ms. Transfers after
that are fast enought. My attempt was a try to use some fixes speed,
even a slow one.

But I now grepped for "of_" below drivers/net, I actually think that
neiher fec_imx.c nor phy/smsc.c cares for device tree settings.

Do you have any idea on how to speed up auto-negotiation?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
