Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og114.obsmtp.com ([64.18.0.28])
	by canuck.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QzReF-0006OG-AC
	for barebox@lists.infradead.org; Fri, 02 Sep 2011 11:11:01 +0000
Message-ID: <4E60B9BC.2040604@ge.com>
Date: Fri, 02 Sep 2011 12:10:52 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <4E5E583B.4070302@ge.com>
	<CAC2XfkW=6QG8hFLv01b0GdFeZ=RNJ9=g8iEfirUj0Masp66qMw@mail.gmail.com>
In-Reply-To: <CAC2XfkW=6QG8hFLv01b0GdFeZ=RNJ9=g8iEfirUj0Masp66qMw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1443179377=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Hello world
To: plumbedZero c <plumbedzero.c@gmail.com>, barebox@lists.infradead.org

This is a multi-part message in MIME format.
--===============1443179377==
Content-Type: multipart/alternative;
 boundary="------------000002070201080309040502"

This is a multi-part message in MIME format.
--------------000002070201080309040502
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello Plumbedzero,
Here is what I did:

make omap3530_beagle_defconfig
make ARCH=arm CROSS_COMPILE=arm-poky-linux-gnueabi-

I use a 32MB SD card formatted for FAT.

As per documentation,
I copied the file MLO, barebox.bin as u-boot.bin and normal.scr as 
boot.scr (not used yet) on the SD card.



Texas Instruments X-Loader 1.4.2 (Feb 19 2009 - 12:01:24)
Reading boot sector
Loading u-boot.bin from mmc


barebox 2011.08.0 (Aug 31 2011 - 14:07:34)

Board: Texas Instrument's Beagle
I2C probe
i2c-omap@i2c-omap0: bus 0 rev3.12 at 100 kHz
ehci@ehci0: USB EHCI 1.00
NAND device: Manufacturer ID: 0x2c, Chip ID: 0xba (Micron NAND 256MiB 
1,8V 16-bit)
Malloc space: 0x80c00000 -> 0x81000000 (size  4 MB)
Stack space : 0x80bf8000 -> 0x80c00000 (size 32 kB)
Open /dev/env0 No such file or directory
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
sh: No such file or directory

Hit any key to stop autoboot: Usage: timeout [OPTION]... <timeout>
Wait <timeout> seconds for a timeout. Return 1 if the user intervented
or 0 if a timeout occured
   -a  interrupt on any key
   -c  interrupt on ctrl-c
   -r  interrupt on return
   -s  silent mode



On 01/09/11 15:08, plumbedZero c wrote:
> Hi Renaud,
>
> Sorry for mailing you but I couldn't stop myself writing to you. I 
> have struggled a lot to compile barebox for beagleboard and it 
> compiled, however I am not able to load it as I don't get any boot 
> prompt after loading it to beagle board.
>
> Can you share the process of compilation and if configuration file 
> required.
>
> Also I would be interested in the Hello World program. In case if you 
> are able to make it then let me know as well. Hope you dont mind my 
> multiple requests.
>
>
> Thanks
>
> On Wed, Aug 31, 2011 at 8:50 AM, Renaud Barbier <renaud.barbier@ge.com 
> <mailto:renaud.barbier@ge.com>> wrote:
>
>     Hello,
>     I just loaded barebox on a beagle board and I am experimenting
>     with it.
>
>     I was wondering how I could load and execute a simple hello world
>     program.
>
>     It looks like I would have to use a module.
>
>     Could somebody give me some pointers?
>
>     Cheers,
>     Renaud
>
>     _______________________________________________
>     barebox mailing list
>     barebox@lists.infradead.org <mailto:barebox@lists.infradead.org>
>     http://lists.infradead.org/mailman/listinfo/barebox
>
>

-- 
Renaud Barbier
14, Links Place
3/2 great Michael House
Edinburgh, EH67EN
Tel: +44 131 561 3532


--------------000002070201080309040502
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello Plumbedzero,<br>
    Here is what I did:<br>
    <br>
    make omap3530_beagle_defconfig<br>
    make ARCH=arm CROSS_COMPILE=arm-poky-linux-gnueabi-<br>
    <br>
    I use a 32MB SD card formatted for FAT.<br>
    <br>
    As per documentation,<br>
    I copied the file MLO, barebox.bin as u-boot.bin and normal.scr as
    boot.scr (not used yet) on the SD card.<br>
    <br>
    <br>
    <br>
    Texas Instruments X-Loader 1.4.2 (Feb 19 2009 - 12:01:24)<br>
    Reading boot sector<br>
    Loading u-boot.bin from mmc<br>
    <br>
    <br>
    barebox 2011.08.0 (Aug 31 2011 - 14:07:34)<br>
    <br>
    Board: Texas Instrument's Beagle<br>
    I2C probe<br>
    i2c-omap@i2c-omap0: bus 0 rev3.12 at 100 kHz<br>
    ehci@ehci0: USB EHCI 1.00<br>
    NAND device: Manufacturer ID: 0x2c, Chip ID: 0xba (Micron NAND
    256MiB 1,8V 16-bit)<br>
    Malloc space: 0x80c00000 -&gt; 0x81000000 (size&nbsp; 4 MB)<br>
    Stack space : 0x80bf8000 -&gt; 0x80c00000 (size 32 kB)<br>
    Open /dev/env0 No such file or directory<br>
    no valid environment found on /dev/env0. Using default environment<br>
    running /env/bin/init...<br>
    sh: No such file or directory<br>
    <br>
    Hit any key to stop autoboot: Usage: timeout [OPTION]...
    &lt;timeout&gt;<br>
    Wait &lt;timeout&gt; seconds for a timeout. Return 1 if the user
    intervented<br>
    or 0 if a timeout occured<br>
    &nbsp; -a&nbsp; interrupt on any key<br>
    &nbsp; -c&nbsp; interrupt on ctrl-c<br>
    &nbsp; -r&nbsp; interrupt on return<br>
    &nbsp; -s&nbsp; silent mode<br>
    <br>
    <br>
    <br>
    On 01/09/11 15:08, plumbedZero c wrote:
    <blockquote
cite="mid:CAC2XfkW=6QG8hFLv01b0GdFeZ=RNJ9=g8iEfirUj0Masp66qMw@mail.gmail.com"
      type="cite">Hi Renaud,<br>
      <br>
      Sorry for mailing you but I couldn't stop myself writing to you. I
      have struggled a lot to compile barebox for beagleboard and it
      compiled, however I am not able to load it as I don't get any boot
      prompt after loading it to beagle board.<br>
      <br>
      Can you share the process of compilation and if configuration file
      required. <br>
      <br>
      Also I would be interested in the Hello World program. In case if
      you are able to make it then let me know as well. Hope you dont
      mind my multiple requests.<br>
      <br>
      <br>
      Thanks<br>
      <br>
      <div class="gmail_quote">On Wed, Aug 31, 2011 at 8:50 AM, Renaud
        Barbier <span dir="ltr">&lt;<a moz-do-not-send="true"
            href="mailto:renaud.barbier@ge.com">renaud.barbier@ge.com</a>&gt;</span>
        wrote:<br>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex;">
          Hello,<br>
          I just loaded barebox on a beagle board and I am experimenting
          with it.<br>
          <br>
          I was wondering how I could load and execute a simple hello
          world program.<br>
          <br>
          It looks like I would have to use a module.<br>
          <br>
          Could somebody give me some pointers?<br>
          <br>
          Cheers,<br>
          Renaud<br>
          <br>
          _______________________________________________<br>
          barebox mailing list<br>
          <a moz-do-not-send="true"
            href="mailto:barebox@lists.infradead.org" target="_blank">barebox@lists.infradead.org</a><br>
          <a moz-do-not-send="true"
            href="http://lists.infradead.org/mailman/listinfo/barebox"
            target="_blank">http://lists.infradead.org/mailman/listinfo/barebox</a><br>
        </blockquote>
      </div>
      <br>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Renaud Barbier
14, Links Place
3/2 great Michael House
Edinburgh, EH67EN
Tel: +44 131 561 3532</pre>
  </body>
</html>

--------------000002070201080309040502--


--===============1443179377==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1443179377==--
