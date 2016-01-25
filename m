Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x232.google.com ([2a00:1450:4010:c07::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNpBY-00034b-NY
 for barebox@lists.infradead.org; Mon, 25 Jan 2016 22:00:33 +0000
Received: by mail-lf0-x232.google.com with SMTP id h129so94504916lfh.3
 for <barebox@lists.infradead.org>; Mon, 25 Jan 2016 14:00:12 -0800 (PST)
Date: Tue, 26 Jan 2016 01:25:25 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160126012525.a3aa00195c6ea22a17492bd0@gmail.com>
In-Reply-To: <5310547036.20160125181545@ambibox.ru>
References: <5310547036.20160125181545@ambibox.ru>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox vs Raspberry PI
To: support@ambibox.ru
Cc: barebox@lists.infradead.org

On Mon, 25 Jan 2016 18:15:45 +0600
support@ambibox.ru wrote:

Hi, Dmitriy!


> =

> barebox-2016.01.0
> Raspberry PI B+
> =

> It generates the following files:
>  - barebox
>  - barbox.bin
>  - barebox.map
>  - System.map
>  - barebox-flash-image -> barebox.bin
> =

>   I tried replacing the kernel.img file with barebox.bin with no luck
> =

> =

>   How to run a barebox on a Raspberry PI ?

I have just successfully run barebox v2016.01.0 on my Raspberry Pi Model B+.

I have examinied your barebox.bin. Yes, I have no luck with your barebox.bi=
n either.
Please check the differences of your .config and .config after ``make ARCH=
=3Darm rpi_defconfig``.

Here is my success story (based on Documentation/boards/bcm2835.rst, e.g. h=
ttp://git.pengutronix.de/?p=3Dbarebox.git;a=3Dblob;f=3DDocumentation/boards=
/bcm2835.rst;h=3D13cebb01c471c9fa5124b8507546e8f7169c4380;hb=3D62c9a8c00099=
6a2c82078d0ea0fa8315c7b34e0b).

1. Download NOOBS Lite (https://downloads.raspberrypi.org/NOOBS_lite_latest=
),
see INSTRUCTIONS-README.txt inside zip archive for detailed microSD-card in=
stallation instructions;
Check that your raspberry pi board succesfully starts =


You have to see this serial console output:

    Uncompressing Linux... done, booting the kernel

    Welcome to the rescue system
    recovery login:

2. Install ARM toolchain =


I have used Sourcery CodeBench arm-2014.05-29, http://sourcery.mentor.com/p=
ublic/gnu_toolchain/arm-none-linux-gnueabi/arm-2014.05-29-arm-none-linux-gn=
ueabi-i686-pc-linux-gnu.tar.bz2

3. clone barebox repo, check out v2016.01.0 and compile

$ git clone git://git.pengutronix.de/git/barebox.git /tmp/barebox
...
$ cd /tmp/barebox
$ git checkout v2016.01.0
$ make ARCH=3Darm rpi_defconfig
...
$ make ARCH=3Darm CROSS_COMPILE=3D/opt/arm-2014.05/bin/arm-none-linux-gnuea=
bi-
...

you will get barebox.bin file


4. Copy barebox.bin to the microSD card and name it recovery.img.

5. turn your Raspberry Pi on. You have to see something like this
in your Raspberry Pi serial console:


barebox 2016.01.0 #1 Tue Jan 26 00:50:43 MSK 2016


Board: RaspberryPi Model B+ (BCM2835/ARM1176JZF-S)
bcm2835-gpio bcm2835-gpio0: probed gpiochip0 with base 0
malloc space: 0x03c00000 -> 0x03ffffff (size 4 MiB)
bcm2835_mci bcm2835_mci0: registered as bcm2835_mci0
mci0: detected SD card version 2.0
mci0: registered disk0
environment load /boot/barebox.env: No such file or directory
Maybe you have to create the partition.
running /env/bin/init...

Hit any key to stop autoboot:  3
barebox@RaspberryPi Model B+ (BCM2835/ARM1176JZF-S):/
# =


--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
