Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ot0-x236.google.com ([2607:f8b0:4003:c0f::236])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4zX-0007ms-Ky
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:58:25 +0000
Received: by mail-ot0-x236.google.com with SMTP id 73so42578741otj.0
 for <barebox@lists.infradead.org>; Mon, 16 Jan 2017 02:58:02 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 16 Jan 2017 08:58:01 -0200
Message-ID: <CAOMZO5Du=RGWT2HWRZde15oMAU5hTvwXXdphVDTB3rQ7OubacQ@mail.gmail.com>
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
Subject: Re: i.MX7 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,

On Mon, Jan 16, 2017 at 8:50 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> One issue remaining is that I am currently unable to reset the board
> using the watchdog or the barebox reset command. Out of ideas, will
> fix later.

Nice work!

Have you tried using MX7D_PAD_GPIO1_IO00__WDOD1_WDOG_B pin to reset the board?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
