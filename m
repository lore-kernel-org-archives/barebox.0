Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdvVJ-0001M9-DL
 for barebox@lists.infradead.org; Mon, 31 Dec 2018 11:13:07 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990397AbeLaLM7bLe0p (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Mon, 31 Dec 2018 12:12:59 +0100
Date: Mon, 31 Dec 2018 12:12:58 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181231111258.GA6011@lenoch>
References: <20181114085233.5000-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181114085233.5000-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] of: Add .of suffix to device names from devicetree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Barebox List <barebox@lists.infradead.org>

On Wed, Nov 14, 2018 at 09:52:33AM +0100, Sascha Hauer wrote:
> Previous implementation used to add a number to the device names
> for devices registered from the device tree which did not have a 'reg'
> property, thus a device node named "state" resulted in a device name
> "state.<x>". Current implementation skips that number and we get a
> device named "state". This conflicts with our barebox state
> implementation which tries to register a device named "state" itself.
> We could rename the state device nodes of all our device trees, but it
> causes less trouble to rename the devices.
> 
> This adds a ".of" suffix to the device names for devices registered from
> the device tree which also has the nice effect that they now can easily
> be recognized.

Well, that also breaks scripting based on device name (example):
-if [ ${fffa4000.gadget@fffa4000.vbus} != 1 ]
+if [ ${fffa4000.gadget@fffa4000.of.vbus} != 1 ]
 then
        echo "No USB Device cable plugged, normal boot"
        exit 0

I can live with that, but would welcome suggestions how to write above
code in some nicer way.

Thank you

> Fixes: 7e497d48acbd11 ("of: Port latest of_device_make_bus_id() implementation")

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
