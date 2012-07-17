Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sr5L9-000837-0Q
 for barebox@lists.infradead.org; Tue, 17 Jul 2012 10:49:16 +0000
In-Reply-To: <019301cd6409$31d9c110$958d4330$@cpdesign.com.au>
References: <OFBC23BC86.8730299C-ONC1257A3D.002F1072-C1257A3D.002F655C@o0802.rafi.inhouse>
 <20120716103054.GJ30009@pengutronix.de>
 <OFEB4CC2A7.F85A0448-ONC1257A3D.0042AC6D-C1257A3D.00438D25@o0802.rafi.inhouse>
 <2711184.rUQpv2fWDx@dev1>
 <OFD0402E5D.322F9E54-ONC1257A3E.00363476-C1257A3E.0036BF7D@o0802.rafi.inhouse>
 <019301cd6409$31d9c110$958d4330$@cpdesign.com.au>
MIME-Version: 1.0
Message-ID: <OF057F3206.F7F44DAE-ONC1257A3E.003B5F38-C1257A3E.003B6F60@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Tue, 17 Jul 2012 12:49:11 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6033822906200556122=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: RE: Antwort: Re: Antwort: Re: Antwort: Re: Antwort: Re:
 barebox image size
To: marc@cpdesign.com.au
Cc: barebox@lists.infradead.org, Marc Reilly <marc.reilly@gmail.com>

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============6033822906200556122==
Content-Type: multipart/alternative; boundary="=_alternative 003B6F60C1257A3E_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 003B6F60C1257A3E_=
Content-Type: text/plain; charset="US-ASCII"

Ahh, thank you for the hint with the BB!
And finally - it is working!!
I forgot to change the erase settings in the lauterbach script.

Thank you all for your help and long lives barebox ;)

- christian



Von:    "Marc Reilly" <marc@cpdesign.com.au>
An:     <christian.buettner@rafi.de>, 
Kopie:  <barebox@lists.infradead.org>, "'Sascha Hauer'" 
<s.hauer@pengutronix.de>
Datum:  17.07.2012 12:44
Betreff:        RE: Antwort: Re: Antwort: Re: Antwort: Re: Antwort: Re: 
barebox image size
Gesendet von:   Marc Reilly <marc.reilly@gmail.com>



Hi,

>ok i was able to preceed a little. The new error message after booting 
is: 
>
>Board: RAFI i.MX53 
>eth@eth0: got MAC address from EEPROM: ******** 
>NAND device: Manufacturer ID: 0xec, Chip ID: 0xf1 (Samsung NAND 128MiB 
3,3V
8-bit) 
>Bad block table found at page 65472, version 0x01 
>Bad block table found at page 65408, version 0x01 
>nand_read_bbt: Bad block at 0x060a0000 
>Malloc space: 0x7df00000 -> 0x7fefffff (size 32 MB) 
>Stack space : 0x7def8000 -> 0x7df00000 (size 32 kB) 
>envfs: wrong magic on /dev/env0 
>running /env/bin/init... 
>not found 
>barebox:/ 

What commands are you using to erase and program the flash area?

>Environment config 
>nand_parts="512k(barebox)ro,512k(bareboxenv),4M(kernel),120M(root)" 

>board_init.c 
>devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self0"); 

>devfs_add_partition("nand0", 0x80000, 0x80000, PARTITION_FIXED, "env0"); 

These partitions aren't bad block aware, from memory, I think u want
something like:

devfs_add_partition("nand0", 0x80000, 0x80000, PARTITION_FIXED, 
"env0_raw");
dev_add_bb_dev("env0_raw", "env0");

Cheers,
Marc



--=_alternative 003B6F60C1257A3E_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Ahh, thank you for the hint with the BB!</font>
<br><font size=2 face="sans-serif">And finally - it is working!!</font>
<br><font size=2 face="sans-serif">I forgot to change the erase settings
in the lauterbach script.</font>
<br>
<br><font size=2 face="sans-serif">Thank you all for your help and long
lives barebox ;)</font>
<br>
<br><font size=2 face="sans-serif">- christian</font>
<br>
<br>
<br>
<br><font size=1 color=#5f5f5f face="sans-serif">Von: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">&quot;Marc Reilly&quot;
&lt;marc@cpdesign.com.au&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">An: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">&lt;christian.buettner@rafi.de&gt;,
</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Kopie: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">&lt;barebox@lists.infradead.org&gt;,
&quot;'Sascha Hauer'&quot; &lt;s.hauer@pengutronix.de&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Datum: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">17.07.2012 12:44</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Betreff: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">RE: Antwort:
Re: Antwort: Re: Antwort: Re: Antwort: Re: barebox image size</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Gesendet von: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">Marc Reilly
&lt;marc.reilly@gmail.com&gt;</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=2>Hi,<br>
<br>
&gt;ok i was able to preceed a little. The new error message after booting
is: <br>
&gt;<br>
&gt;Board: RAFI i.MX53 <br>
&gt;eth@eth0: got MAC address from EEPROM: ******** <br>
&gt;NAND device: Manufacturer ID: 0xec, Chip ID: 0xf1 (Samsung NAND 128MiB
3,3V<br>
8-bit) <br>
&gt;Bad block table found at page 65472, version 0x01 <br>
&gt;Bad block table found at page 65408, version 0x01 <br>
&gt;nand_read_bbt: Bad block at 0x060a0000 <br>
&gt;Malloc space: 0x7df00000 -&gt; 0x7fefffff (size 32 MB) <br>
&gt;Stack space : 0x7def8000 -&gt; 0x7df00000 (size 32 kB) <br>
&gt;envfs: wrong magic on /dev/env0 <br>
&gt;running /env/bin/init... <br>
&gt;not found <br>
&gt;barebox:/ <br>
<br>
What commands are you using to erase and program the flash area?<br>
<br>
&gt;Environment config <br>
&gt;nand_parts=&quot;512k(barebox)ro,512k(bareboxenv),4M(kernel),120M(root)&quot;
<br>
<br>
&gt;board_init.c <br>
&gt;devfs_add_partition(&quot;nand0&quot;, 0x00000, 0x80000, PARTITION_FIXED,
&quot;self0&quot;); <br>
&gt;devfs_add_partition(&quot;nand0&quot;, 0x80000, 0x80000, PARTITION_FIXED,
&quot;env0&quot;); <br>
<br>
These partitions aren't bad block aware, from memory, I think u want<br>
something like:<br>
<br>
devfs_add_partition(&quot;nand0&quot;, 0x80000, 0x80000, PARTITION_FIXED,
&quot;env0_raw&quot;);<br>
dev_add_bb_dev(&quot;env0_raw&quot;, &quot;env0&quot;);<br>
<br>
Cheers,<br>
Marc<br>
<br>
</font></tt>
<br>
--=_alternative 003B6F60C1257A3E_=--


--===============6033822906200556122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6033822906200556122==--
