Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVIy-0007Jh-Qx
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 11:33:22 +0000
Received: by mail-qt1-x82e.google.com with SMTP id c24so16568375qtp.5
 for <barebox@lists.infradead.org>; Mon, 20 Jan 2020 03:33:16 -0800 (PST)
MIME-Version: 1.0
From: Frederick Gotham <cauldwell.thomas@gmail.com>
Date: Mon, 20 Jan 2020 11:33:13 +0000
Message-ID: <CALtZhhMAHMh0HBatmQVL=uU6hYBuK3wvYPntqbQ-7rR5OzX_xA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: cauldwell.thomas@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Issue CPU instructions to start watchdog?
To: barebox@lists.infradead.org

I'm developing an embedded Linux device, and I'm using Barebox as a
part of Buildroot. The CPU is x64 with 4 cores, and it has an Intel
TCO watchdog timer.

The exact processor I'm using is the Intel Silver N5000, and the
datasheet for it says:
"TCO_TMR is the watchdog timer provided by the ACPI block. It is used
by an OS monitor for OS crashes."

When I boot up Barebox, it does not have the file "/dev/watchdog".
I've tried a few different things but I just simply can't get Barebox
to recognise the Intel watchdog timer.

Ideally I would like to have the watchdog timer start running at Power
On, however my current BIOS  hasn't got any watchdog settings, and so
until I get a new BIOS (which might never happen), I have to start the
watchdog timer from within Barebox in order to get the device to
reboot if the Linux kernel freezes while it's loading.

At this stage I think I might actually have to write assembler to
issue instructions to the CPU to start the Watchdog timer. I have
looked this up and it's definitely not straight-forward, e.g.
interfacing with the ACPI block and its registers... I would be pretty
much writing a device driver.

Anyone got any ideas?

I really need my device to reboot if the Linux kernel freezes while loading.

Frederick

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
