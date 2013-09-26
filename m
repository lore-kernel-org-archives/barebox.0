Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x232.google.com ([2a00:1450:4013:c00::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPID8-0002ff-0s
 for barebox@lists.infradead.org; Thu, 26 Sep 2013 20:30:54 +0000
Received: by mail-ee0-f50.google.com with SMTP id d51so802550eek.37
 for <barebox@lists.infradead.org>; Thu, 26 Sep 2013 13:30:32 -0700 (PDT)
Message-ID: <1380227429.10759.1.camel@lolumad>
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Thu, 26 Sep 2013 22:30:29 +0200
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
Subject: Wrong barebox_image_size value
To: barebox@lists.infradead.org

Dear barebox developers and users;
I am compiling barebox for freescale-imx53-smd board. My issue is,
that the image does not contain the correct size record.
The "bootloader size" needed by the flashing tool is initialized in
freescale-mx53-smd/flash_header.c, in structure flash_header,
field .boot_data.size.
Formerly there used to be a hardcoded value 0x40000, nowadays we use
DCD_BAREBOX_SIZE which expands into (barebox_image_size + 4095), where
"barebox_image_size" has real size computed by the linker.
When the value .boot_data.size is filled by hand (as 0x40000), correct
value is stored in the barebox image.
Proof: hexdump -s 0x24 -n 4 barebox-flash-image
0000024 0000 0004

however if .boot_data.size = DCD_BAREBOX_SIZE,
$ hexdump -s 0x24 -n 4 barebox-flash-image
0000024 0fff 0000
where this 0xfff is the "+4095" added to round the value. (I am pretty
sure the offset into the image used by hexdump is correct).

The barebox version I am using most recent git, branch master.
The compiler (maybe here is the point of failure) is
arm-cortex_a8-linux-gnueabi-gcc (crosstool-NG hg+default-86a8d1d467c8)
4.4.6.

I will appreciate any help;
Rostislav Lisovy


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
