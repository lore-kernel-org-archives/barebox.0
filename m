Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a3htY-00075Y-3j
 for barebox@lists.infradead.org; Tue, 01 Dec 2015 10:10:48 +0000
Message-ID: <1448964622.8275.40.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 01 Dec 2015 11:10:22 +0100
In-Reply-To: <CAHQ1cqFvLA2UnRBcsdUk05-4OJP33D1E=R7i0tkBtrGX_SvoFQ@mail.gmail.com>
References: <CAHQ1cqFvLA2UnRBcsdUk05-4OJP33D1E=R7i0tkBtrGX_SvoFQ@mail.gmail.com>
Mime-Version: 1.0
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
Subject: Re: i.MX6 PCIe support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Andrey,

Am Montag, den 30.11.2015, 10:56 -0800 schrieb Andrey Smirnov:
> Hi All,
> 
> I am working on adding EEPROM programming capabilities to e1000 driver
> on a custom i.MX6Q (automotive) board with i210 (8086:1531) connected
> over PCIe link. Unfortunately I am observing some bad/unexpected
> behavior that might indicate PCIe issues.
> 
> What I am seeing is device(i210) enumerating on PCIe bus, however any
> accesses to its registers via its memory "window" result in either
> 0xFFFFFFFF or 0xDEADBEEF. I tried accessing various PCIe configuration
> registers of that device and it seem to work fine (as a part of that
> test I read out some AER registers and they didn't indicate presence
> of any PCIe link related errors).
> 
> However when I boot Linux kernel (with 'igb' driver patched to
> recognize 8086:1531 VID:PID) on that board and run 'eepromARMtool'
> (Intel provided EEPROM programming tool) I can see it reading various
> registers correctly
> 
> My questions are:
>    - Is anyone currently using i.MX6 PCIe driver in 'next' branch?

I didn't try the latest revision, but with v2015.10.0 PCIe on i.MX6 was
working fine.

>    - Has anyone seen similar behavior on this particular controller
> and discovered the root cause?
> 
The symptoms you describe do look to me like the firmware on the i210
device doesn't get initialized. Unfortunately I don't have any specific
pointers where to start searching for the root cause.

Regards,
Lucas
-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
