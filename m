Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22c.google.com ([2a00:1450:400c:c05::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9dKk-0005pO-6n
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 16:54:34 +0000
Received: by mail-wi0-f172.google.com with SMTP id n3so6354465wiv.17
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 09:54:10 -0700 (PDT)
Message-ID: <53CE9720.6050204@gmail.com>
Date: Tue, 22 Jul 2014 18:53:52 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1405545909-9855-1-git-send-email-antonynpavlov@gmail.com>
 <1405545909-9855-2-git-send-email-antonynpavlov@gmail.com>
 <53CE25FE.9070903@gmail.com>
 <20140722202150.923eb98d9268383756226e99@gmail.com>
In-Reply-To: <20140722202150.923eb98d9268383756226e99@gmail.com>
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
Subject: Re: [PATCH v2] i2c: add Marvell 64xxx driver
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 07/22/2014 06:21 PM, Antony Pavlov wrote:
> On Tue, 22 Jul 2014 10:51:10 +0200
> Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> wrote:
>> I finally finished work on xHCI and PCI on Armada 370. Now I come
> 
> Are you speaking about PCIe support for Armada 370 in barebox?

Yes, but not only on Armada 370 but Orion SoCs in general. I am about
to clean the PCIe driver now and see if I can give it a go on Dove or
Kirkwood easily.

This is what I got today with both PCIe driver and xHCI PCI driver:

barebox 2014.07.0-00181-g2d9d176ef3c7-dirty #1081 Tue Jul 22 09:20:08
CEST 2014
Board: Globalscale Mirabox
xHCI PCI pci0: USB xHCI 0.96
barebox:/ usb
USB: scanning bus for devices...
Using index 0 for the new disk
Bus 001 Device 002: ID 0951:1653 DT 100 G2
Bus 001 Device 001: ID 0000:0000 USB 3.0 Root Hub
2 USB Device(s) found
barebox:/ mount -a
ext4 ext40: EXT2 rev 1, inode_size 256
none on / type ramfs
none on /dev type devfs
/dev/disk0.0 on /mnt/disk0.0 type ext4
barebox:/ ls /mnt/disk0.0/
.             ..            lost+found


Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
