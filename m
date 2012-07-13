Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.web.de ([212.227.15.4])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SpcHq-0005yK-I1
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 09:35:49 +0000
Received: from [127.0.0.1] ([109.43.0.11]) by smtp.web.de (mrweb001) with
 ESMTPSA (Nemesis) id 0Lecda-1RzCxk0UYA-00qJtU for
 <barebox@lists.infradead.org>; Fri, 13 Jul 2012 11:35:42 +0200
Message-ID: <4FFFEBEB.40605@web.de>
Date: Fri, 13 Jul 2012 11:35:39 +0200
From: Stutz Sven <stutzsven@web.de>
MIME-Version: 1.0
Reply-To: stutzsven@web.de
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0303243097624528700=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: AT91SAM9263-EK
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--===============0303243097624528700==
Content-Type: multipart/alternative;
 boundary="------------010503020503050805080701"

This is a multi-part message in MIME format.
--------------010503020503050805080701
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hello everybody,

I am trying to learn and to play with the at91sam9263-ek (Rev. B) 
evalboard.

I was really successful building all parts (at91Bootstrap, Barebox, 
Linuximage) and when I upload all files via SAM-BA and I restart the 
device I get the prompt of barebox.

But nothing more
Everything is fine I can also switch on and off the on board leds but I 
cannot load/ start the kernel.

The addresses I use are:
         0x     0000 - 0x1 FFFF at91Bootstrap
         0x  2 0000 -  0x5 FFFF Barebox
         0x  6 0000 -  0x7 FFFF Bareboxenv
         0x  8 0000 -  47 FFFF kernel
         0x48 0000 -7c7 FFFF rootfs
     and rest is data ...

I have change the specific init.c file and boot file in the specific 
environment folder.
First I though the missing *.bb partitions can fix this problem. Then I 
modified the env/init file for that.  Apparently this placeholder "*" in 
this boot script (nand -a dev/nand0.* ) is not working correctly.
     addpart /dev/nand0 $nand_parts
     nand -a /dev/nand0.*

     nand -a dev/nand0.at91bootstrap
     nand -a dev/nand0.barebox
     nand -a dev/nand0.bareboxenv
     nand -a dev/nand0.kernel
     nand -a dev/nand0.rootfs

The second try was to change also this partition table in the specific 
init.c so that both match.
         devfs_add_partition("nand0", 0x00000, SZ_128K, 
DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
         dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
         devfs_add_partition("nand0", SZ_128K, SZ_256K, 
DEVFS_PARTITION_FIXED, "self_raw");
         dev_add_bb_dev("self_raw", "self0");
         devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, 
DEVFS_PARTITION_FIXED, "env_raw");
         dev_add_bb_dev("env_raw", "env0");

But everything without success. It's a little bit strange because when I 
execute the command
     bootm -v /dev/nand0.kernel.bb
First I get the following output
         Barebox:/ bootm -v /dev/nand0.kernel.bb
             Image Name:     Linux-3.4.0
             OS:                      Linux
             Architecture:     ARM
             Type:                   Kernel Image
             Compression:    uncompressed
             Data Size:           2034784 Bytes = 1.9 MB
             Load Address:    20008000
             Entry Point:        20008000
         err -74
         loading os image failed with Out of memory

and if I try again the same command
         Barebox:/ bootm -v /dev/nand0.kernel.bb
         err -74
         Unknown OS filetype (try -f)

also if I try to memcpy or uimage I always get this err 74.

What is this Error 74 (-- Reset level 3)?
Why Out of memory?


Kind regards

Sven


	
Stutz Sven <stutzsven@gmx.de <mailto:stutzsven@gmx.de>>


--------------010503020503050805080701
Content-Type: text/html; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DISO-8=
859-15">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-text-flowed" style=3D"font-family: -moz-fixed;
      font-size: 14px;" lang=3D"x-western">Hello everybody,
      <br>
      <br>
      I am trying to learn and to play with the at91sam9263-ek (Rev. B)
      evalboard.
      <br>
      <br>
      I was really successful building all parts (at91Bootstrap,
      Barebox, Linuximage) and when I upload all files via SAM-BA and I
      restart the device I get the prompt of barebox.
      <br>
      <br>
      But nothing more
      <br>
      Everything is fine I can also switch on and off the on board leds
      but I cannot load/ start the kernel.
      <br>
      <br>
      The addresses I use are:
      <br>
      =A0=A0=A0=A0=A0=A0=A0 0x=A0=A0=A0=A0 0000 - 0x1 FFFF at91Bootstrap
      <br>
      =A0=A0=A0=A0=A0=A0=A0 0x=A0 2 0000 -=A0 0x5 FFFF Barebox
      <br>
      =A0=A0=A0=A0=A0=A0=A0 0x=A0 6 0000 -=A0 0x7 FFFF Bareboxenv
      <br>
      =A0=A0=A0=A0=A0=A0=A0 0x=A0 8 0000 -=A0 47 FFFF kernel
      <br>
      =A0=A0=A0=A0=A0=A0=A0 0x48 0000 -7c7 FFFF rootfs
      <br>
      =A0=A0=A0 and rest is data ...
      <br>
      <br>
      I have change the specific init.c file and boot file in the
      specific environment folder.
      <br>
      First I though the missing *.bb partitions can fix this problem.
      Then I modified the env/init file for that.=A0 Apparently this
      placeholder "*" in this boot script (nand -a dev/nand0.* ) is not
      working correctly.
      <br>
      =A0=A0=A0 addpart /dev/nand0 $nand_parts
      <br>
      =A0=A0=A0 nand -a /dev/nand0.*
      <br>
      <br>
      =A0=A0=A0 nand -a dev/nand0.at91bootstrap
      <br>
      =A0=A0=A0 nand -a dev/nand0.barebox
      <br>
      =A0=A0=A0 nand -a dev/nand0.bareboxenv
      <br>
      =A0=A0=A0 nand -a dev/nand0.kernel
      <br>
      =A0=A0=A0 nand -a dev/nand0.rootfs
      <br>
      <br>
      The second try was to change also this partition table in the
      specific init.c so that both match.
      <br>
      =A0=A0=A0=A0=A0=A0=A0 devfs_add_partition("nand0", 0x00000, SZ_128K,
      DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
      <br>
      =A0=A0=A0=A0=A0=A0=A0 dev_add_bb_dev("at91bootstrap_raw", "at91bootst=
rap");
      <br>
      =A0=A0=A0=A0=A0=A0=A0 devfs_add_partition("nand0", SZ_128K, SZ_256K,
      DEVFS_PARTITION_FIXED, "self_raw");
      <br>
      =A0=A0=A0=A0=A0=A0=A0 dev_add_bb_dev("self_raw", "self0");
      <br>
      =A0=A0=A0=A0=A0=A0=A0 devfs_add_partition("nand0", SZ_256K + SZ_128K,=
 SZ_128K,
      DEVFS_PARTITION_FIXED, "env_raw");
      <br>
      =A0=A0=A0=A0=A0=A0=A0 dev_add_bb_dev("env_raw", "env0");
      <br>
      <br>
      But everything without success. It's a little bit strange because
      when I execute the command
      <br>
      =A0=A0=A0 bootm -v /dev/nand0.kernel.bb
      <br>
      First I get the following output
      <br>
      =A0=A0=A0=A0=A0=A0=A0 Barebox:/ bootm -v /dev/nand0.kernel.bb
      <br>
      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Image Name:=A0=A0=A0=A0 Linux-3.4.0
      <br>
      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 OS:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Linux
      <br>
      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Architecture:=A0=A0=A0=A0 ARM
      <br>
      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Type:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 Kernel Image
      <br>
      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Compression:=A0=A0=A0 uncompressed
      <br>
      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Data Size:=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 2034784 Bytes =3D 1.9 MB
      <br>
      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Load Address:=A0=A0=A0 20008000
      <br>
      =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Entry Point:=A0=A0=A0=A0=A0=A0=A0 2=
0008000
      <br>
      =A0=A0=A0=A0=A0=A0=A0 err -74
      <br>
      =A0=A0=A0=A0=A0=A0=A0 loading os image failed with Out of memory
      <br>
      <br>
      and if I try again the same command
      <br>
      =A0=A0=A0=A0=A0=A0=A0 Barebox:/ bootm -v /dev/nand0.kernel.bb
      <br>
      =A0=A0=A0=A0=A0=A0=A0 err -74
      <br>
      =A0=A0=A0=A0=A0=A0=A0 Unknown OS filetype (try -f)
      <br>
      <br>
      also if I try to memcpy or uimage I always get this err 74.
      <br>
      <br>
      What is this Error 74 (-- Reset level 3)?
      <br>
      Why Out of memory?
      <br>
      <br>
      <br>
      Kind regards
      <br>
      <br>
      Sven
      <br>
      <br>
    </div>
    <table class=3D"moz-vcard-table">
      <tbody>
        <tr>
          <td valign=3D"top"> <br>
          </td>
          <td>
            <table id=3D"moz-vcard-properties-table">
              <tbody>
                <tr>
                  <td class=3D"moz-vcard-title-property"> Stutz Sven=A0&lt;=
<a
                      href=3D"mailto:stutzsven@gmx.de" private=3D"">stutzsv=
en@gmx.de</a>&gt;</td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
      </tbody>
    </table>
  </body>
</html>

--------------010503020503050805080701--


--===============0303243097624528700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0303243097624528700==--
