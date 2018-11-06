Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJxBd-0001iS-Vl
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 08:58:15 +0000
Date: Tue, 6 Nov 2018 09:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181106085802.jf35euogwuhbkptw@pengutronix.de>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
 <CAHQ1cqHvUBpqwFNE6J=krcxaZfZWovWuqzC6wTfkDxnzQ-obsg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHvUBpqwFNE6J=krcxaZfZWovWuqzC6wTfkDxnzQ-obsg@mail.gmail.com>
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Nov 05, 2018 at 03:16:52PM -0800, Andrey Smirnov wrote:
> On Mon, Nov 5, 2018 at 7:51 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > The following series contains a bigger at91 header file cleanup. With
> > this the SoC header files become completely SoC namespaced which means
> > they can all be included as desired without conflicts. This makes the
> > way free for more at91 multiboard support.
> >
> > I don't have that much AT91 hardware on my desk, so I am unable to test
> > this properly. Testing feedback very much appreciated. Sam maybe?
> >
> 
> I applied the series on 'next' and ran it on my AT91SAM9x5 devkit with
> at91sam9g25 module. Didn't do anything sophisticated, just booted and
> made sure that USB port can enumerate a USB stick, Ethernet pings and
> I can read data off MMC. FWIW:

Thanks for testing Andrey. That sounds promising. I myself ran it on a
sama5d3 board.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
