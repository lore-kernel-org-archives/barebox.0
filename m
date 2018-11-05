Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJo7R-0000pa-0u
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 23:17:18 +0000
Received: by mail-wr1-x441.google.com with SMTP id r10-v6so11405564wrv.6
 for <barebox@lists.infradead.org>; Mon, 05 Nov 2018 15:17:06 -0800 (PST)
MIME-Version: 1.0
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 5 Nov 2018 15:16:52 -0800
Message-ID: <CAHQ1cqHvUBpqwFNE6J=krcxaZfZWovWuqzC6wTfkDxnzQ-obsg@mail.gmail.com>
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
Subject: Re: [PATCH 00/22] AT91 header cleanup
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Nov 5, 2018 at 7:51 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> The following series contains a bigger at91 header file cleanup. With
> this the SoC header files become completely SoC namespaced which means
> they can all be included as desired without conflicts. This makes the
> way free for more at91 multiboard support.
>
> I don't have that much AT91 hardware on my desk, so I am unable to test
> this properly. Testing feedback very much appreciated. Sam maybe?
>

I applied the series on 'next' and ran it on my AT91SAM9x5 devkit with
at91sam9g25 module. Didn't do anything sophisticated, just booted and
made sure that USB port can enumerate a USB stick, Ethernet pings and
I can read data off MMC. FWIW:

Tested-by: Andrey Smirnov <andrew.smrinov@gmail.com>

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
