Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ve0-x22b.google.com ([2607:f8b0:400c:c01::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VrEzb-0004TY-2o
 for barebox@lists.infradead.org; Thu, 12 Dec 2013 22:44:27 +0000
Received: by mail-ve0-f171.google.com with SMTP id pa12so830775veb.16
 for <barebox@lists.infradead.org>; Thu, 12 Dec 2013 14:44:05 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20131212195806.GL24559@pengutronix.de>
References: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
 <20131212080359.GE24559@pengutronix.de>
 <CAJyuEefmcqQVKKszuvmGZx4NqaK+j79+-g4gD-ruq9vMO85Wug@mail.gmail.com>
 <20131212195806.GL24559@pengutronix.de>
Date: Thu, 12 Dec 2013 17:44:02 -0500
Message-ID: <CAJyuEecPnTHU2rTgJzkvkv3p56f32jqaS1aQykn91TNGvcUawg@mail.gmail.com>
From: Michael Burkey <mdburkey@gmail.com>
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
Subject: Re: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Thanks for all the help!

I have now at least got it to the point of getting a barebox prompt
via the serial port.

The final thing I had to change was that I realized that since we have
our UART1 using a different set of pins than is the default, I needed
to manually change the IOMUX settings for the early bring-up of the
serial port that Sascha pointed me to earlier.

Basically:

/arch/arm/boards/variscite-mx6/lowlevel.c

-writel(0x4, iomuxbase + 0x01f8);
+writel(0x03, iomuxbase + 0x0280);
+writel(0x03, iomuxbase + 0x0284);
+writel(0x00, iomuxbase + 0x0920);

MANY THANKS!!!!

I'm sure I will have more issues, but this at least gets things
booting up enough to where I can now make progress.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
