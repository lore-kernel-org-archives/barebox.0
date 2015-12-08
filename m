Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x236.google.com ([2607:f8b0:4001:c06::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a69pP-00022m-Qs
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 04:24:40 +0000
Received: by iouu10 with SMTP id u10so13150450iou.0
 for <barebox@lists.infradead.org>; Mon, 07 Dec 2015 20:24:18 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1449480510.3118.4.camel@pengutronix.de>
References: <CAHQ1cqFvLA2UnRBcsdUk05-4OJP33D1E=R7i0tkBtrGX_SvoFQ@mail.gmail.com>
 <1448964622.8275.40.camel@pengutronix.de>
 <CAHQ1cqGG-3uW53YH6bJGya60hBzrMrqgvc-_hCPapLpfcL2pRQ@mail.gmail.com>
 <1449480510.3118.4.camel@pengutronix.de>
Date: Mon, 7 Dec 2015 20:24:18 -0800
Message-ID: <CAHQ1cqGcNR9Q42FEePMfHLi7H4VdJ0QdTrCsqbVN6rw3q4rHFQ@mail.gmail.com>
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
Subject: Re: i.MX6 PCIe support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> Can you please compile barebox with config PCI_DEBUG set and provide the
> output of that? Mybe with and without your change applied?

Here's the output (I also added the code to print bridge's *_BASE and
*_LIMIT values):

Good (with my change present):

imx6-pcie 1ffc000.pcie: Link up, Gen=1
pci: pci_scan_bus for bus 0
pci:  last_io = 0x00000000, last_mem = 0x01000000, last_mem_pref = 0x00000000
pci: class = 00000604, hdr_type = 00000001
pci: 00:00 [16c3:abcd]
pci: pci_scan_bus for bus 1
pci:  last_io = 0x00000000, last_mem = 0x01000000, last_mem_pref = 0x00000000
pci: class = 00000200, hdr_type = 00000000
pci: 01:00 [8086:1531]
pci: pbar0: mask=ff800000 NP memory 8388608 bytes
pci: pbar1 set bad mask
pci: pbar2: mask=ffffffe1 io 32 bytes
pci: pbar3: mask=ffffc000 NP memory 16384 bytes
pci: pbar4 set bad mask
pci: pbar5 set bad mask
pci: pci_scan_bus returning with max=02
pci: pbar0: mask=fff0000e NP memory 1048576 bytes
pci: pbar1 set bad mask
pci-16c3:abcd.0: bridge window [mem 0x10000000-0x00000000 pref]
pci-16c3:abcd.0: bridge window [mem 0x01000000-0x01800000]
pci-16c3:abcd.0: bridge window [io 0x00000000-0x00000000]

Bad (without my change present):

imx6-pcie 1ffc000.pcie: Link up, Gen=1
pci: pci_scan_bus for bus 0
pci:  last_io = 0x00000000, last_mem = 0x01000000, last_mem_pref = 0x00000000
pci: class = 00000604, hdr_type = 00000001
pci: 00:00 [16c3:abcd]
pci: pbar0: mask=fff0000e NP memory 1048576 bytes
pci: pbar1 set bad mask
pci: pci_scan_bus for bus 1
pci:  last_io = 0x00000000, last_mem = 0x01100000, last_mem_pref = 0x00000000
pci: class = 00000200, hdr_type = 00000000
pci: 01:00 [8086:1531]
pci: pbar0: mask=ff800000 NP memory 8388608 bytes
pci: pbar1 set bad mask
pci: pbar2: mask=ffffffe1 io 32 bytes
pci: pbar3: mask=ffffc000 NP memory 16384 bytes
pci: pbar4 set bad mask
pci: pbar5 set bad mask
pci: pci_scan_bus returning with max=02
pci-16c3:abcd.0: bridge window [mem 0x10000000-0x00000000 pref]
pci-16c3:abcd.0: bridge window [mem 0x01100000-0x01900000]
pci-16c3:abcd.0: bridge window [io 0x00000000-0x00000000]


Regards,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
