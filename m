Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a5s6G-000698-W0
 for barebox@lists.infradead.org; Mon, 07 Dec 2015 09:28:53 +0000
Message-ID: <1449480510.3118.4.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 07 Dec 2015 10:28:30 +0100
In-Reply-To: <CAHQ1cqGG-3uW53YH6bJGya60hBzrMrqgvc-_hCPapLpfcL2pRQ@mail.gmail.com>
References: <CAHQ1cqFvLA2UnRBcsdUk05-4OJP33D1E=R7i0tkBtrGX_SvoFQ@mail.gmail.com>
 <1448964622.8275.40.camel@pengutronix.de>
 <CAHQ1cqGG-3uW53YH6bJGya60hBzrMrqgvc-_hCPapLpfcL2pRQ@mail.gmail.com>
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

Am Sonntag, den 06.12.2015, 22:03 -0800 schrieb Andrey Smirnov:
> >> However when I boot Linux kernel (with 'igb' driver patched to
> >> recognize 8086:1531 VID:PID) on that board and run 'eepromARMtool'
> >> (Intel provided EEPROM programming tool) I can see it reading various
> >> registers correctly
> >>
> >> My questions are:
> >>    - Is anyone currently using i.MX6 PCIe driver in 'next' branch?
> >
> > I didn't try the latest revision, but with v2015.10.0 PCIe on i.MX6 was
> > working fine.
> >
> >>    - Has anyone seen similar behavior on this particular controller
> >> and discovered the root cause?
> >>
> > The symptoms you describe do look to me like the firmware on the i210
> > device doesn't get initialized. Unfortunately I don't have any specific
> > pointers where to start searching for the root cause.
> >
> 
> I kept looking into the issue and noticed one thing that Linux kernel
> does differently -- when handling PCI bridges it allocates bridge
> window before that PCI bridge's BAR windows in address space as can be
> seen below:
> 
> [    0.831099] imx6q-pcie 1ffc000.pcie: PCI host bridge to bus 0000:00
> [    0.837480] pci_bus 0000:00: root bus resource [io  0x1000-0x10000]
> [    0.843878] pci_bus 0000:00: root bus resource [mem 0x01000000-0x01efffff]
> [    0.850881] pci_bus 0000:00: root bus resource [bus 00-ff]
> [    0.856913] PCI: bus0: Fast back to back transfers disabled
> [    0.880182] PCI: bus1: Fast back to back transfers disabled
> [    0.885980] pci 0000:00:00.0: BAR 8: assigned [mem 0x01000000-0x01bfffff]
> [    0.892902] pci 0000:00:00.0: BAR 0: assigned [mem 0x01c00000-0x01cfffff]
> [    0.899806] pci 0000:00:00.0: BAR 6: assigned [mem
> 0x01d00000-0x01d0ffff pref]
> [    0.907154] pci 0000:00:00.0: BAR 7: assigned [io  0x1000-0x1fff]
> [    0.913387] pci 0000:01:00.0: BAR 0: assigned [mem 0x01000000-0x017fffff]
> [    0.920324] pci 0000:01:00.0: BAR 3: assigned [mem 0x01800000-0x01803fff]
> [    0.927241] pci 0000:01:00.0: BAR 2: assigned [io  0x1000-0x101f]
> [    0.933480] pci 0000:00:00.0: PCI bridge to [bus 01]
> [    0.938553] pci 0000:00:00.0:   bridge window [io  0x1000-0x1fff]
> [    0.944772] pci 0000:00:00.0:   bridge window [mem 0x01000000-0x01bfffff]
> [    0.951984] pcieport 0000:00:00.0: Signaling PME through PCIe PME interrupt
> [    0.959056] pci 0000:01:00.0: Signaling PME through PCIe PME interrupt
> 
> 
> When I tried emulating this behavior in Barebox by moving
> "setup_device(dev, 2)" from line 384 to be right after
> "postscan_setup_bridge(dev)" in "drivers/pci/pci.c" I was able to
> communicate with i210.
> 
> I am bit hesitant to make a patch yet, since for the life of me I
> cannot explain this behavior, any thoughts on why this can be
> happening?
> 
Can you please compile barebox with config PCI_DEBUG set and provide the
output of that? Mybe with and without your change applied?

Thanks,
Lucas

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
