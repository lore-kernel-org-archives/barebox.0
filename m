Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SqmJI-0004Cs-Fa
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 14:30:31 +0000
In-Reply-To: <50042475.3000604@cmotion.eu>
References: <OFBC23BC86.8730299C-ONC1257A3D.002F1072-C1257A3D.002F655C@o0802.rafi.inhouse>
 <20120716085418.GG30009@pengutronix.de>
 <OFCC857403.C150E96B-ONC1257A3D.003283FD-C1257A3D.0032D943@o0802.rafi.inhouse>
 <20120716092101.GI30009@pengutronix.de>
 <OF1A7E21F3.CEBD2AB0-ONC1257A3D.0034CA43-C1257A3D.0034EAA0@o0802.rafi.inhouse>
 <20120716103054.GJ30009@pengutronix.de>
 <OFEB4CC2A7.F85A0448-ONC1257A3D.0042AC6D-C1257A3D.00438D25@o0802.rafi.inhouse>
 <50041B84.9080707@cmotion.eu>
 <OF4671681E.10E4C59C-ONC1257A3D.004BF387-C1257A3D.004C38C5@o0802.rafi.inhouse>
 <50042475.3000604@cmotion.eu>
MIME-Version: 1.0
Message-ID: <OFF346C629.B473EAE5-ONC1257A3D.004F9F2C-C1257A3D.004FA724@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Mon, 16 Jul 2012 16:30:01 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3217078007420192340=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: Antwort: Re: Antwort: Re: Antwort: Re: Antwort: Re:
 barebox image size
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============3217078007420192340==
Content-Type: multipart/alternative; boundary="=_alternative 004FA722C1257A3D_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 004FA722C1257A3D_=
Content-Type: text/plain; charset="US-ASCII"

ahh thank you.. i try that.



Von:    Christian Kapeller <christian.kapeller@cmotion.eu>
An:     christian.buettner@rafi.de, 
Kopie:  barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Datum:  16.07.2012 16:26
Betreff:        Re: Antwort: Re: Antwort: Re: Antwort: Re: Antwort: Re: 
barebox image size



On 07/16/2012 03:52 PM, christian.buettner@rafi.de wrote:
> Thx for the hint.
> What i don't understand is that barebox boots from nand but the
> environement can't..

Good point. In any case the driver isn't able to recognize your nand
device. I see from you supplied code snipplets, that your barebox is
at least two weeks old. Maybe you use the upstream tree, as maybe there
are already fixes for imx53 nand flash.

Also you may want to activate mtd debugging:

#define CONFIG_MTD_DEBUG
#define CONFIG_MTD_DEBUG_VERBOSE 3

for example to  your include/linux/mtd/mtd.h file. (Those are config
settings, but they don't appear in any Kconfig file, hence supply them
manually)

good luck.

> 
> 
>> I flashed from 0x0 to 0x7FFFF (image size: 479K).
>> I flashed the environment image (image size: 3K) from 0x80000 to 
0xFFFFF
>> and changed the config code from barebox/environs/common/config to:
>>
>> ...
>> nand_parts="512k(barebox)ro,768k(bareboxenv),4M(kernel),120M(root)"
>> ...
>>
>> Barebox can boot now but the startup log says:
>> barebox 2012.03.0-dirty (Jul 16 2012 - 09:01:01)
>>
>> Board: i.MX53
>> eth@eth0: got MAC address from EEPROM: *********************
>> nand_get_flash_type: second ID read did not match ef,ef against c0,c0
>> No NAND device found (-19)!
>> Malloc space: 0x7df00000 -> 0x7fefffff (size 32 MB)
>> Stack space : 0x7def8000 -> 0x7df00000 (size 32 kB)
>> Open /dev/env0 No such file or directory
>> running /env/bin/init...
>> not found
>> barebox:/
>>
>> How can i get the environment loaded?
> 
> Normally you would issue 'saveenv' which writes the environment to the
> environment partition. On subsequent boots the environment will be 
loaded.
> 
> But the flash device on your board isn't detected by barebox, so you
> will have to fix the detection first.
> 
>> nand_get_flash_type: second ID read did not match ef,ef against c0,c0
> 
> This line suggests, that the nand flash isn't working property. The line
> is generated in drivers/mtd/nand/nand_base.c, after reading manufacturer
> id and chip id two times, and checking them for equality.
> 
> Not only does your board different values for manufacturer and flash id
> on first and second read, but they are also the same. manuf id=ef and
> chip id=ef isn't plausible. Maybe you should check your hardware.
> 
> Regards
> Christian
> 


-- 
Christian Kapeller
cmotion GmbH
Kriehubergasse 16
1050 Wien / Austria
http://www.cmotion.eu

christian.kapeller@cmotion.eu
Phone: +43 1 789 1096 38




--=_alternative 004FA722C1257A3D_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">ahh thank you.. i try that.</font>
<br>
<br>
<br>
<br><font size=1 color=#5f5f5f face="sans-serif">Von: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">Christian Kapeller
&lt;christian.kapeller@cmotion.eu&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">An: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">christian.buettner@rafi.de,
</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Kopie: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">barebox@lists.infradead.org,
Sascha Hauer &lt;s.hauer@pengutronix.de&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Datum: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">16.07.2012 16:26</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Betreff: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">Re: Antwort:
Re: Antwort: Re: Antwort: Re: Antwort: Re: barebox image size</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=2>On 07/16/2012 03:52 PM, christian.buettner@rafi.de
wrote:<br>
&gt; Thx for the hint.<br>
&gt; What i don't understand is that barebox boots from nand but the<br>
&gt; environement can't..<br>
<br>
Good point. In any case the driver isn't able to recognize your nand<br>
device. I see from you supplied code snipplets, that your barebox is<br>
at least two weeks old. Maybe you use the upstream tree, as maybe there<br>
are already fixes for imx53 nand flash.<br>
<br>
Also you may want to activate mtd debugging:<br>
<br>
#define CONFIG_MTD_DEBUG<br>
#define CONFIG_MTD_DEBUG_VERBOSE 3<br>
<br>
for example to &nbsp;your include/linux/mtd/mtd.h file. (Those are config<br>
settings, but they don't appear in any Kconfig file, hence supply them<br>
manually)<br>
<br>
good luck.<br>
<br>
&gt; <br>
&gt; <br>
&gt;&gt; I flashed from 0x0 to 0x7FFFF (image size: 479K).<br>
&gt;&gt; I flashed the environment image (image size: 3K) from 0x80000
to 0xFFFFF<br>
&gt;&gt; and changed the config code from barebox/environs/common/config
to:<br>
&gt;&gt;<br>
&gt;&gt; ...<br>
&gt;&gt; nand_parts=&quot;512k(barebox)ro,768k(bareboxenv),4M(kernel),120M(root)&quot;<br>
&gt;&gt; ...<br>
&gt;&gt;<br>
&gt;&gt; Barebox can boot now but the startup log says:<br>
&gt;&gt; barebox 2012.03.0-dirty (Jul 16 2012 - 09:01:01)<br>
&gt;&gt;<br>
&gt;&gt; Board: i.MX53<br>
&gt;&gt; eth@eth0: got MAC address from EEPROM: *********************<br>
&gt;&gt; nand_get_flash_type: second ID read did not match ef,ef against
c0,c0<br>
&gt;&gt; No NAND device found (-19)!<br>
&gt;&gt; Malloc space: 0x7df00000 -&gt; 0x7fefffff (size 32 MB)<br>
&gt;&gt; Stack space : 0x7def8000 -&gt; 0x7df00000 (size 32 kB)<br>
&gt;&gt; Open /dev/env0 No such file or directory<br>
&gt;&gt; running /env/bin/init...<br>
&gt;&gt; not found<br>
&gt;&gt; barebox:/<br>
&gt;&gt;<br>
&gt;&gt; How can i get the environment loaded?<br>
&gt; <br>
&gt; Normally you would issue 'saveenv' which writes the environment to
the<br>
&gt; environment partition. On subsequent boots the environment will be
loaded.<br>
&gt; <br>
&gt; But the flash device on your board isn't detected by barebox, so you<br>
&gt; will have to fix the detection first.<br>
&gt; <br>
&gt;&gt; nand_get_flash_type: second ID read did not match ef,ef against
c0,c0<br>
&gt; <br>
&gt; This line suggests, that the nand flash isn't working property. The
line<br>
&gt; is generated in drivers/mtd/nand/nand_base.c, after reading manufacturer<br>
&gt; id and chip id two times, and checking them for equality.<br>
&gt; <br>
&gt; Not only does your board different values for manufacturer and flash
id<br>
&gt; on first and second read, but they are also the same. manuf id=ef
and<br>
&gt; chip id=ef isn't plausible. Maybe you should check your hardware.<br>
&gt; <br>
&gt; Regards<br>
&gt; Christian<br>
&gt; <br>
<br>
<br>
-- <br>
Christian Kapeller<br>
cmotion GmbH<br>
Kriehubergasse 16<br>
1050 Wien / Austria<br>
</font></tt><a href=http://www.cmotion.eu/><tt><font size=2>http://www.cmotion.eu</font></tt></a><tt><font size=2><br>
<br>
christian.kapeller@cmotion.eu<br>
Phone: +43 1 789 1096 38<br>
<br>
<br>
</font></tt>
<br>
--=_alternative 004FA722C1257A3D_=--


--===============3217078007420192340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3217078007420192340==--
