Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailbox.openface.ca ([216.46.1.7])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WANBq-00028b-5R
 for barebox@lists.infradead.org; Mon, 03 Feb 2014 17:20:10 +0000
Received: from MSI-01-S01.MSI.Local (mail.morganschaffer.com [207.115.108.90])
 by mailbox.openface.ca (8.14.2/8.14.2) with ESMTP id s13HJnSC017084
 for <barebox@lists.infradead.org>;
 Mon, 3 Feb 2014 12:19:49 -0500 (EST)
From: "Balasa, Bogdan" <BBalasa@Morganschaffer.com>
Date: Mon, 3 Feb 2014 17:19:47 +0000
Message-ID: <4C598A31AEBE214FB619D7F2DC3BD8AB0127A14A86@MSI0E01.MSI.Local>
Content-Language: fr-FR
MIME-Version: 1.0
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
Subject: barebox env userspace
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

I try to modify the barebox environment from linux userspace with:

1.	Load environment from SPI NOR flash:
               ./bareboxenv-target -l /mnt /dev/mtd1

2.	Erase environment from SPI nor flash
flash_erase /dev/mtd1 0 0

# do some modifications in "/mnt"

3.	Save environment to NOR flash
./bareboxenv-target -s /mnt /dev/mtd1

----
After reset I can see my modifications in the files within barebox but the changes are not taken into account by barebox.
It's like they are not saved in the persistent storage "dev/env0".(it's like a saveenv is missing).

What am I missing such that the changes to be saved in the persistent storage 'dev/env0' from userspace?

---
Userspace:
cat /proc/mtd
dev: size erasesize name
mtd0: 00080000 00010000 "m25p0.barebox"
mtd1: 00010000 00010000 "m25p0.bareboxenv"
mtd2: 00200000 00020000 "nand0.barebox"
mtd3: 00020000 00020000 "nand0.bareboxenv"
mtd4: 00800000 00020000 "nand0.kernel"
mtd5: 03200000 00020000 "nand0.root"
mtd6: 00800000 00020000 "nand0.kernel2"
mtd7: 03200000 00020000 "nand0.root2"
mtd8: 389e0000 00020000 "nand0.data"

Thank you,
Bogdan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
