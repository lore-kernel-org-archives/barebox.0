Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gMsZk-0005Xj-EC
 for barebox@lists.infradead.org; Wed, 14 Nov 2018 10:39:15 +0000
Received: by mail-qk1-x72c.google.com with SMTP id q1so24807317qkf.13
 for <barebox@lists.infradead.org>; Wed, 14 Nov 2018 02:39:01 -0800 (PST)
MIME-Version: 1.0
From: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Date: Wed, 14 Nov 2018 11:38:49 +0100
Message-ID: <CAEp+FuCwQYNjA1cachB09Lsa9ALfruvKQv-MWQjZdz5wexbEUg@mail.gmail.com>
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
Subject: Cannot update barebox 2018.04.0 anymore
To: barebox@lists.infradead.org

Hello,

    I have updated my barebox image on a imx6ul board and since then I
cannot update it again.
I think I might have left something out in the barebox config last
time but I do not know what.
    I try to do the following:

barebox_update -y -t /mnt/disk0.0/barebox.bin
ocotp0.permanent_write_enable=1
mw -l -d /dev/imx-ocotp 0x14 x00000093
mw -l -d /dev/imx-ocotp 0x18 0x00000010
mw -l 0x20D8004 0x00000093
mw -l -d /dev/imx-ocotp 0x14 0x00000093
mw -l -d /dev/imx-ocotp 0x18 0x00000010
md 0x20D8004+4

and the output is:

  Image Metadata:
  build: #1 Fri Nov 9 03:15:37 PST 2018
  release: 2018.04.0
  parameter: memsize=512
imx-bbu-nand-fcb: imx_bbu_nand_update: No FCB device!
barebox_update: No such device
ocotp0: reloading shadow registers...
ocotp0: reloading shadow registers...
020d8004: 00000093                                           ....
barebox@Phytec phyCORE-i.MX6 Ultra Lite SOM:/ ls /dev/
cs0                         disk0
disk0.0                     eeprom0
full                        imx-ocotp
mdio0-phy01                 mem
nand0                       nand0.bb
nand0.nand-env              nand0.nand-env.bb
nand0.nand-factory          nand0.nand-factory.bb
nand0.nand-fit1             nand0.nand-fit1.bb
nand0.nand-fit2             nand0.nand-fit2.bb
nand0.nand-fsbl-uboot       nand0.nand-fsbl-uboot.bb
nand0.nand-maker            nand0.nand-maker.bb
nand0.oob                   nand0.raw
netconsole-1                null
prng                        ram0
serial0-1                   zero
barebox@Phytec phyCORE-i.MX6 Ultra Lite SOM:/

  What could the reason for the bolded error messages?

Thanks,
      Mihaita

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
