Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-x235.google.com ([2607:f8b0:4003:c01::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wl3mq-0008GW-7C
 for barebox@lists.infradead.org; Thu, 15 May 2014 22:06:01 +0000
Received: by mail-ob0-f181.google.com with SMTP id wm4so2017846obc.40
 for <barebox@lists.infradead.org>; Thu, 15 May 2014 15:05:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140515212125.GO5858@pengutronix.de>
References: <1400177676-2870-1-git-send-email-fabio.estevam@freescale.com>
 <20140515212125.GO5858@pengutronix.de>
Date: Thu, 15 May 2014 19:05:38 -0300
Message-ID: <CAOMZO5D=SHf19XuptdZTVvn6GGvUEvAcG9RbG9r_g_Z-DZfdsg@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
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
Subject: Re: [PATCH] serial: imx: Fix buggy transmissions when baudrate
 mismatches
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@freescale.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Eric Nelson <eric.nelson@boundarydevices.com>

Hi Sascha,

On Thu, May 15, 2014 at 6:21 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

>> --- a/drivers/serial/serial_imx.c
>> +++ b/drivers/serial/serial_imx.c
>> @@ -258,7 +258,8 @@ static int imx_serial_getc(struct console_device *cdev)
>>         while (readl(priv->regs + priv->devtype->uts) & UTS_RXEMPTY);
>>
>>         ch = readl(priv->regs + URXD0);
>> -
>> +       if (ch >= 0x80)
>> +               ch = '?';
>
> This is not part of the fix, right?

Correct, this is not part of the fix.

This code is just to help reproducing the issue in console, without
the need of hooking an oscilloscope to the UART pins or inspecting
directly the UART TX registers.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
