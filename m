Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioqwe-00007m-TD
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 15:39:02 +0000
References: <XnsAB3C88D4289BBfgotham@195.159.176.226>
 <bda10b42b8fd15316beff74d9b4102a17f7312a9.camel@pengutronix.de>
 <ee89e9f9-7ddf-ef42-0ad6-5881c74ebb48@pengutronix.de>
 <XnsAB3D73D8140D5fgotham@195.159.176.226>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <223f55e5-85ce-3c0b-795c-885d180e7ceb@pengutronix.de>
Date: Tue, 7 Jan 2020 16:38:57 +0100
MIME-Version: 1.0
In-Reply-To: <XnsAB3D73D8140D5fgotham@195.159.176.226>
Content-Language: en-US
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
Subject: Re: Watchdog Timer with x86 processor
To: barebox@lists.infradead.org, Frederick Gotham <cauldwell.thomas@gmail.com>

Hi,

On 1/7/20 12:23 PM, Frederick Gotham wrote:
> What I have NOT dealt with though, is the case of the device freezing mid-
> boot. So let's say that Barebox tries to load the Linux kernel, and let's say 
> the kernel get 15% loaded and then it freezes. If this happens, I need the 
> device to reboot.
> 
> How would you go about this? Would you use the watchdog timer in the BIOS, or 
> would you use the one in Barebox?

First you need to determine what watchdogs you have and determine which to choose
- Do you have a Super I/O chip? Does it have a watchdog?
- You have an iTCO watchdog. Are e.g. smbus devices correctly reset with an iTCO
  reset? A Super I/O reset might be more 'global'

Then you need to check what interfaces you have:
- Can the BIOS enable the watchdog?
- Can the BIOS provide a WDAT ACPI table for your watchdog?

Having the BIOS enable the watchdog is preferable, because then you can monitor
barebox execution reliably as well. If your BIOS can't do that, it exports
the wrong watchdog or you would like easy access to the barebox shell without
being reset all the time, you can then evaluate which driver would work
best for you:

- implement iTCO watchdog driver in barebox
- implement Super I/O watchdog in barebox (Porting over the Fintek Watchdog
  from Linux was quite straight-forward)
- implement WDAT watchdog in barebox

I've taken a look at my iTCO driver and it works mostly fine for iTCO version 3
(QEMU), but you'll probably need to port the missing parts for your particular
version from the kernel. I'll clean it up and send it to the list later this week. 

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
