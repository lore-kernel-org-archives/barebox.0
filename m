Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x229.google.com ([2607:f8b0:4001:c06::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a61a1-0001wK-0v
 for barebox@lists.infradead.org; Mon, 07 Dec 2015 19:36:13 +0000
Received: by ioir85 with SMTP id r85so957224ioi.1
 for <barebox@lists.infradead.org>; Mon, 07 Dec 2015 11:35:52 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20151207102335.GG11966@pengutronix.de>
References: <1449474763-14099-1-git-send-email-andrew.smirnov@gmail.com>
 <20151207102335.GG11966@pengutronix.de>
Date: Mon, 7 Dec 2015 11:35:52 -0800
Message-ID: <CAHQ1cqFev23Dc-0zUBDZkmLCeeD_8vH99K-eqyq0GqjQ0_6MMg@mail.gmail.com>
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
Subject: Re: [PATCH 1/7] imx: ocotp: Add code to initialize 'cdev->device_node'
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Dec 7, 2015 at 2:23 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Andrey,
>
> I had to port the LM75 driver to barebox just a few days ago and so came
> up with exactly the same patch 2/7 and 3/7. I applied 1-3 right away.
>

Shucks! I had those three patches sitting on my laptop for a couple of
weeks. Sorry for procrastinating with submitting them, could have
saved you some trouble :-)


> In my case I not only have a LM75 but also a PT100 connected to a
> Microchip MCP3421 which in Linux is abstracted as a IIO device. IIO has
> the advantage that it's more formalized and has it's own device tree
> binding that allows to connect sensor devices with their consumers. I
> picked some of the pieces from IIO and created something I called
> iodevice. I'll post it in the next few days. One thing I am missing in
> your approach is the readout of values as device parameters so that the
> values can be evaluated in scripts. On the other hand you have a command
> that allows to show the values of all sensors which I currently don't
> have. Maybe we can distil the best of both approaches.

I would be more than happy to work on combining our code. How about
you go ahead and submit your framework/drivers and I'll rework TEMPMON
and hwmon (should we rename the command?) patches to use it. I doubt
there would be anything worth salvaging in my LM75 driver, so we can
just drop that patch.

Sounds good?

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
