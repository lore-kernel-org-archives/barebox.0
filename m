Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2wRs-0004f4-IM
 for barebox@lists.infradead.org; Tue, 04 Aug 2020 12:53:45 +0000
Received: by mail-qt1-x82d.google.com with SMTP id h21so24348819qtp.11
 for <barebox@lists.infradead.org>; Tue, 04 Aug 2020 05:53:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAKd8=GuMSvfaXiTvx4MSOnkLNvTuZg--deRufN6wDaPr8OxA1g@mail.gmail.com>
 <52e432ea-2ecb-2464-9126-379900da2433@pengutronix.de>
 <CAKd8=GvjdkC=mHYq3LpLwtaSi8WhYsn3e1VphTWefbzpq=_ZFA@mail.gmail.com>
 <ce3df13a-29aa-809f-f39c-1213da23038e@pengutronix.de>
 <CAKd8=GsqcUz23Rc81ZFJ5R1TzofXcJd+HGGE0u=UZyRsvZh_-Q@mail.gmail.com>
 <20200803215154.GS31536@pengutronix.de>
In-Reply-To: <20200803215154.GS31536@pengutronix.de>
From: Lars Pedersen <lapeddk@gmail.com>
Date: Tue, 4 Aug 2020 14:53:30 +0200
Message-ID: <CAKd8=GtFaC_SOC-=xBBhWxgQOdkZQ-o2sYW7ya3tEur4qFFmpA@mail.gmail.com>
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
Subject: Re: Getting serial console output on new imx7d tqma7 board UART4
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

Hi Sascha thx for the reply.

/Lars Pedersen

On Mon, 3 Aug 2020 at 23:51, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Hi Lars,
>
> On Thu, Jul 30, 2020 at 12:16:14PM +0200, Lars Pedersen wrote:
>
> > CONFIG_DEBUG_IMX_UART_PORT=1
> > CONFIG_HAS_DEBUG_LL=y
>
> This config still has CONFIG_DEBUG_IMX_UART_PORT=1. You probably sent
> this before you changed it to '4', right? Otherwise this might be the
> issue.

Yes, it has been changed to 4.

>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
