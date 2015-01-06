Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x231.google.com ([2607:f8b0:400d:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y8aXI-0006YO-4H
 for barebox@lists.infradead.org; Tue, 06 Jan 2015 20:15:28 +0000
Received: by mail-qg0-f49.google.com with SMTP id f51so4139638qge.22
 for <barebox@lists.infradead.org>; Tue, 06 Jan 2015 12:15:05 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20150105090651.GD30369@pengutronix.de>
References: <1420044590-26343-1-git-send-email-andrew.smirnov@gmail.com>
 <20150105090651.GD30369@pengutronix.de>
Date: Tue, 6 Jan 2015 12:15:05 -0800
Message-ID: <CAHQ1cqH+z2uBW7BtiFfcOio9KyH9Bis3gFzKgiN4Qme10tCR+A@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [RFC, PATCH] i.MX6: phytec: Do not hardcode default environment
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> Looking at it you should rather replace the compatible checks in
> phytec_pfla02_init with their baseboards, so instead of:
>
>         if (!of_machine_is_compatible("phytec,imx6q-pfla02") &&
>                         !of_machine_is_compatible("phytec,imx6dl-pfla02") &&
>                         !of_machine_is_compatible("phytec,imx6s-pfla02"))
>                 return 0;
>
> do a:
>
>         if (!of_machine_is_compatible("phytec,imx6x-pbab01") &&
>                         !of_machine_is_compatible("phytec,imx6dl-pbab05") &&
>                         !of_machine_is_compatible("phytec,imx6q-pbab02"))
>                 return 0;
>
> Then the phytec default env will only be added for the phytec baseboards
> and not for your custom one. Note phyflex_err006282_workaround() won't
> be called either then, you may need your own version of this then.
>

Good point. I'll look into it.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
