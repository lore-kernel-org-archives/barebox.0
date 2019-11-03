Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRI4D-00004t-4t
 for barebox@lists.infradead.org; Sun, 03 Nov 2019 15:45:26 +0000
Received: by mail-wr1-x431.google.com with SMTP id f2so5406645wrs.11
 for <barebox@lists.infradead.org>; Sun, 03 Nov 2019 07:45:22 -0800 (PST)
Received: from [192.168.0.87]
 (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
 by smtp.gmail.com with ESMTPSA id b1sm7316253wrw.77.2019.11.03.07.45.19
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 03 Nov 2019 07:45:19 -0800 (PST)
Message-ID: <1572795919.10526.27.camel@googlemail.com>
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Sun, 03 Nov 2019 16:45:19 +0100
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: chf.fritz@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: state: eMMC boot0-partitions backend for Linux
To: barebox@lists.infradead.org

Hi,

 I would like to use emmc-hardware-partition boot1 as a state backend,
this has the charm of keeping the big hw-partition clean while using SLC
for e.g. serial numbers.

Within barebox using an emmc-hardware-partition boot1 as a state backend
just works!

But trying to hand over this backend to Linux fails right before
starting the kernel:

  WARNING: Failed to fixup node in of_state_fixup+0x1/0x288: No such device

I guess dt-utils also has no support for using /dev/mmcblk1boot0 as a
backend (by default Linux doesn't allow to write to boot0/1) ?

What would be the best way to add this feature?

Any ideas?

 -- Christoph


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
