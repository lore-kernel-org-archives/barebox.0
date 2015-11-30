Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x22d.google.com ([2607:f8b0:4001:c06::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a3Td5-0005ZO-Oo
 for barebox@lists.infradead.org; Mon, 30 Nov 2015 18:56:52 +0000
Received: by iofh3 with SMTP id h3so184922241iof.3
 for <barebox@lists.infradead.org>; Mon, 30 Nov 2015 10:56:30 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 30 Nov 2015 10:56:30 -0800
Message-ID: <CAHQ1cqFvLA2UnRBcsdUk05-4OJP33D1E=R7i0tkBtrGX_SvoFQ@mail.gmail.com>
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
Subject: i.MX6 PCIe support
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi All,

I am working on adding EEPROM programming capabilities to e1000 driver
on a custom i.MX6Q (automotive) board with i210 (8086:1531) connected
over PCIe link. Unfortunately I am observing some bad/unexpected
behavior that might indicate PCIe issues.

What I am seeing is device(i210) enumerating on PCIe bus, however any
accesses to its registers via its memory "window" result in either
0xFFFFFFFF or 0xDEADBEEF. I tried accessing various PCIe configuration
registers of that device and it seem to work fine (as a part of that
test I read out some AER registers and they didn't indicate presence
of any PCIe link related errors).

However when I boot Linux kernel (with 'igb' driver patched to
recognize 8086:1531 VID:PID) on that board and run 'eepromARMtool'
(Intel provided EEPROM programming tool) I can see it reading various
registers correctly

My questions are:
   - Is anyone currently using i.MX6 PCIe driver in 'next' branch?
   - Has anyone seen similar behavior on this particular controller
and discovered the root cause?

Any thought or advise are greatly appreciated.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
