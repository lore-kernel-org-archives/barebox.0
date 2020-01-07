Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from blaine.gmane.org ([195.159.176.226])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomxI-0002bX-Ms
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 11:23:26 +0000
Received: from list by blaine.gmane.org with local (Exim 4.89)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1iomxG-000DC6-Lx
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 12:23:22 +0100
From: Frederick Gotham <cauldwell.thomas@gmail.com>
Date: Tue, 7 Jan 2020 11:23:16 -0000 (UTC)
Message-ID: <XnsAB3D73D8140D5fgotham@195.159.176.226>
References: <XnsAB3C88D4289BBfgotham@195.159.176.226>
 <bda10b42b8fd15316beff74d9b4102a17f7312a9.camel@pengutronix.de>
 <ee89e9f9-7ddf-ef42-0ad6-5881c74ebb48@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Watchdog Timer with x86 processor
To: barebox@lists.infradead.org

Ahmad Fatoum <a.fatoum@pengutronix.de> wrote in
news:ee89e9f9-7ddf-ef42-0ad6-5881c74ebb48@pengutronix.de: 

> As described in the linked documentation, it's useless for monitoring
> Linux boot, because it's a boot service and these are terminated very
> early in the Linux boot process.
> 
> Only usable x86 watchdog we have at the moment is the Fintek Super I/O
> watchdog. If you have another Super I/O, but your BIOS exports a WDAT
> ACPI table, barebox v2019.01.0 will come with ACPI driver support, so
> you could write an ACPI driver on top. Alternatively, you could turn on
> the watchdog in the BIOS and leave barebox out of it altogether.



Just to be clear about what I'm doing.

I have an embedded Linux device whose CPU is 64-Bit quad-core.

Once the device has successfully booted up, there is a watchdog timer that 
makes sure everything keeps running smoothly. So if my device freezes AFTER 
it boots up successfully, then this eventuality is dealt with.

What I have NOT dealt with though, is the case of the device freezing mid-
boot. So let's say that Barebox tries to load the Linux kernel, and let's say 
the kernel get 15% loaded and then it freezes. If this happens, I need the 
device to reboot.

How would you go about this? Would you use the watchdog timer in the BIOS, or 
would you use the one in Barebox?


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
