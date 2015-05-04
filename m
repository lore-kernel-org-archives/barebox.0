Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x232.google.com ([2607:f8b0:4001:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpKjW-0003ao-UY
 for barebox@lists.infradead.org; Mon, 04 May 2015 18:04:47 +0000
Received: by igblo3 with SMTP id lo3so88796014igb.0
 for <barebox@lists.infradead.org>; Mon, 04 May 2015 11:04:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150504070119.GJ6325@pengutronix.de>
References: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
 <1430619980-26243-8-git-send-email-andrew.smirnov@gmail.com>
 <20150504070119.GJ6325@pengutronix.de>
Date: Mon, 4 May 2015 11:04:25 -0700
Message-ID: <CAHQ1cqGjdGfVhbLLXf1JeiuTm898uxvMCh7cPXsAphEVfTF6qQ@mail.gmail.com>
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
Subject: Re: [PATCH 7/8] i.MX: serial: Distil common clock ungating code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> Please add a imx6_ namespace to this function. The calling code always
> knows that it is running on imx6, so you can use IMX6_CCM_BASE_ADDR
> directly rather than using soc##_. The function above is imx6 specific
> anyway since only this SoC has the gate registers on 0x68..0x80.

What about i.MX51? As far as I can tell it is the same as i.MX6 in
this aspect. This function wouldn't have any consumers on i.MX51
architecture, of course, but shouldn't this function have a SoC
variant agnostic name, just for the sake of genericity?


>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
