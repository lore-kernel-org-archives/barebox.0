Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22a.google.com ([2a00:1450:400c:c05::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCDXp-00012u-Dx
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 19:58:45 +0000
Received: by mail-wi0-f170.google.com with SMTP id f8so6034809wiw.3
 for <barebox@lists.infradead.org>; Tue, 29 Jul 2014 12:58:22 -0700 (PDT)
Message-ID: <53D7FCD9.1010209@gmail.com>
Date: Tue, 29 Jul 2014 21:58:17 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406553970-18157-1-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406553970-18157-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v2 0/5] Marvell EBU PCIe driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 07/28/2014 03:26 PM, Sebastian Hesselbarth wrote:
> Second round of the Marvell EBU PCIe driver patch set. Compared
> to v1, I reworked pci_scan_bus to properly set IORESOURCE flags
> for all resources, and added auto-incrementing pci bus numbering.
> 
> Patch 1 is unchanged and still fixes resource computation of mbus
> driver. Patch 2 now properly sets IORESOURCE flags for I/O, 32b
> MEM, and 64b MEM resources.
> 
> Patch 3 is a squashed and reworked patch dealing with pci host
> controller registration: bus number is now assigned from an auto-
> incremented bus_index and already provided pci_controller's
> set_busno is called right before pci_scan_bus to allow the
> controller to update internal registers related with bus number.
> This patch also sets a back-reference to the pci_controller of
> a pci_bus and cleans up some unused left-overs from Linux import.
> 
> Patch 4 is unchanged import of of_pci_get_devfn() and Patch 5
> finally adds the PCIe controller driver for Marvell MVEBU SoCs.
> Individual changelogs are also at the corresponding patch mails.
> 
> Again, this has been tested on Armada 370 Mirabox.

Sascha,

before you consider applying this, I had the chance to test it
on Armada XP, too. Both the driver and pci core need some more
fixes, so please wait for v3.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
