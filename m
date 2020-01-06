Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioT8l-0005rW-Qx
 for barebox@lists.infradead.org; Mon, 06 Jan 2020 14:13:57 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1ioT8i-0004FP-T6
 for barebox@lists.infradead.org; Mon, 06 Jan 2020 15:13:52 +0100
References: <XnsAB3C88D4289BBfgotham@195.159.176.226>
 <bda10b42b8fd15316beff74d9b4102a17f7312a9.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ee89e9f9-7ddf-ef42-0ad6-5881c74ebb48@pengutronix.de>
Date: Mon, 6 Jan 2020 15:13:52 +0100
MIME-Version: 1.0
In-Reply-To: <bda10b42b8fd15316beff74d9b4102a17f7312a9.camel@pengutronix.de>
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
To: barebox@lists.infradead.org

On 1/6/20 2:47 PM, Rouven Czerwinski wrote:
> Your list is interesntigly missing WATCHDOG_EFI, which can be used on
> x86_64 machines.

As described in the linked documentation, it's useless for monitoring Linux
boot, because it's a boot service and these are terminated very early in the
Linux boot process.

Only usable x86 watchdog we have at the moment is the Fintek Super I/O watchdog.
If you have another Super I/O, but your BIOS exports a WDAT ACPI table, barebox
v2019.01.0 will come with ACPI driver support, so you could write an ACPI driver on
top. Alternatively, you could turn on the watchdog in the BIOS and leave barebox
out of it altogether.

I've an iTCO patch series sitting on a local branch. I'll take a look and see
if it's usable. Main problem is that the iTCO is accessible over PCI, but we
have no EFI PCI support in barebox so far[1].

[1]: There's an incomplete patch series here:
     https://www.mail-archive.com/barebox@lists.infradead.org/msg33441.html

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
