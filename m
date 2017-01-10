Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([208.187.125.9])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cR2KJ-0000i4-6Q
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 19:43:24 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 10 Jan 2017 19:42:59 +0000
Message-ID: <1484077438.30810.14.camel@kymetacorp.com>
References: <12b302f6-75ae-bf83-370b-abaf0aef9d29@mev.co.uk>
In-Reply-To: <12b302f6-75ae-bf83-370b-abaf0aef9d29@mev.co.uk>
Content-Language: en-US
Content-ID: <4633D1B7A0E5944BB7B70B48ABAB8144@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: Problem loading environment from spi-nor flash partition since
 barebox 2017.01.0
To: "abbotti@mev.co.uk" <abbotti@mev.co.uk>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, 2017-01-10 at 16:01 +0000, Ian Abbott wrote:
> Hi!
> 
> I thought I'd try updating my custom SoCFPGA-based board from barebox 
> 2016.11.0 to 2017.01.0, and have only run into one problem, which is 
> that it is no longer loading the barebox environment during boot:
> 
> barebox-environment environment.5: probe failed: No such device
> environment load /dev/env0: No such file or directory

> After a bit of poking around, I discovered that it is failing in 
> __of_find_path() at these lines:
> 
> 	if (!dev->driver)
> 		return -ENODEV;
> 
> Those lines were added by commit 
> 82eb3dff10ae0c0436e0fcd5ff0c9cd2a2caab3c ("of_path: handle no driver for 
> device").

I assume the call to __of_find_path() is traced back to
environment_probe()?

It looks to me like the environment driver needs to be updated to
support PROBE_DEFER.  It should detect ENODEV from of_find_path() as a
possible device not probed yet error and return PROBE_DEFER.

I wonder if of_find_path should return EPROBE_DEFER itself?  It seems
like it might be easier to catch this in of_find_path() once instead of
in all callers of of_find_path().

> I'm not sure which bit of code is responsible for setting dev->driver 
> (or whether it is appropriate in this case), but if I remove that test, 
> the environment loads OK.

This makes me wonder if probe defer, which I think is still problem, is
not your problem.  

> 		environment@0 {
> 			compatible = "barebox,environment";
> 			device-path = &flash, "partname:barebox-environment";

> &qspi {
> 	flash: flash@0 {
> 		partition@c0000 {
> 			label = "barebox-environment";
> 			reg = <0xc0000 0x20000>;
> 		};

In this case, the env points to the flash node for the specific chip
select, which is a child of the node for the qspi device.  qspi has a
driver.  But the child for the chip select isn't really a device in its
own right, it just part of the qspi device.  I don't believe there is a
driver for it.  I wonder if dev->driver will always be NULL for that
device?

Maybe the bug here is that a device node for a flash chip select or a
partition doesn't have a driver itself.  So either the !dev->driver test
is wrong, or the device should have ->driver point to the driver of its
parent device.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
