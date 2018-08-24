Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x241.google.com ([2607:f8b0:4003:c06::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ftIX8-0005LC-SM
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 20:18:16 +0000
Received: by mail-oi0-x241.google.com with SMTP id c190-v6so17434332oig.6
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2018 13:18:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180824195556.jihqkka6bj5tbqpq@pengutronix.de>
References: <20180824151739.8883-1-m.grzeschik@pengutronix.de>
 <20180824170407.geeahhgkqntovpi5@pengutronix.de>
 <20180824195556.jihqkka6bj5tbqpq@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 24 Aug 2018 17:18:02 -0300
Message-ID: <CAOMZO5AMUiaPyaGcfNz2NtApwgthYGSYSH0Xx94F83q1qESKxQ@mail.gmail.com>
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
Subject: Re: [PATCH] imx{5,6}: reset otg port after usb-serial boot
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Michael,

On Fri, Aug 24, 2018 at 4:55 PM, Michael Grzeschik <mgr@pengutronix.de> wrote:

> I get that it is not safe to toggle bits if the clock is not
> there. We could check for the bootsource. Is it possible to
> ensure that we are started by imx-usb-loader?

It is possible to determine if we have started via USB download mode.

Check the is_boot_from_usb() implementation in U-Boot for a reference.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
