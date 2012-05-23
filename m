Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SX6yR-0007Ka-1A
 for barebox@lists.infradead.org; Wed, 23 May 2012 08:31:16 +0000
Received: by yenr9 with SMTP id r9so7031070yen.36
 for <barebox@lists.infradead.org>; Wed, 23 May 2012 01:31:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120522184838.GN30400@pengutronix.de>
References: <CAONxwYMN4tDV-0vcophuLRA0rJC_T6OaLNyZM22yoso09cJFRg@mail.gmail.com>
 <20120522184838.GN30400@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Wed, 23 May 2012 10:30:52 +0200
Message-ID: <CAONxwYOMMoeRwyUoLwQkLO6eN3M-X0Wq6nS=LNZk_+oX7U97Bw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8252391483846978049=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: SD card probe failure
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============8252391483846978049==
Content-Type: multipart/alternative; boundary=14dae93403d73d130804c0aff5fd

--14dae93403d73d130804c0aff5fd
Content-Type: text/plain; charset=ISO-8859-1

Hi Sascha

Thanks for your reply.

>  No information available:

>  >   MCI card not probed yet
> > Parameters:
> >            probe = 0
> > sid1-noah:/ mci0.probe=1
> > imx-esdhc@imx-esdhc0: timeout 1
> > Cannot reset the SD/MMC card
> > set parameter: Connection timed out
> > sid1-noah:/
> >
> > Any ideas? What are possible causes of this?
>
> Does the SD card work in the first stage loader? If yes, you could try
> to remove the mux setup from barebox, so that you can be sure that you
> do not misconfigure things that were already configured correctly.
> I have no hardware handy to test the driver on a i.MX25, but Erics
> Eukrea board has MMC support, so I believe the driver should work in
> general.
>
>
I have sprinkled some printf's over the code and enabled DEBUG in the mci
driver. It goes into timeout:

Board: SID1 NOAH
registered netconsole as cs1
imx-esdhc@mci0: registered as mci0
esdhc_init: enble cache snooping
esdhc_init: reset host controller
esdhc_init: controller available
esdhc_init: set clock
esdhc_init: disable BRR and BWR bits
esdhc_init: Put PROCTL reg back
esdhc_init: Set timeout to max value
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=0
esdhc_send_cmd: send transfer type=0
esdhc_send_cmd: wait on timeout
imx-esdhc@imx-esdhc0: timeout 1
mci_go_idle: send command returned with -110
mci@mci0: Activating IDLE state failed: -110
Cannot reset the SD/MMC card
ehci@ehci0: USB EHCI 1.00
cfi_flash@cfi_flash0: found cfi flash at a0000000, size 67108864
Malloc space: 0x83b00000 -> 0x83efffff (size  4 MB)
Stack space : 0x83af8000 -> 0x83b00000 (size 32 kB)
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

Checking drivers/mci/imx-esdhc.c:

       /* Wait for the command to complete */
        ret = wait_on_timeout(100 * MSECOND,
                        esdhc_read32(&regs->irqstat) & IRQSTAT_CC);
        if (ret) {
                dev_err(host->dev, "timeout 1\n");
                return -ETIMEDOUT;
        }

One would suppose that 100msecs should be more than enough, considering the
slow speed one would see. Could there be an issue with the dozen or so
errata from Freescale with regard to SD card? What else could cause the
card not to reply within the large timeout specified?

Funny enough, commenting the following IOMUX pad settings specific to the
ESDHC:

       // MX25_PAD_SD1_CMD__SD1_CMD,
       // MX25_PAD_SD1_CLK__SD1_CLK,
       // MX25_PAD_SD1_DATA0__SD1_DATA0,
       // MX25_PAD_SD1_DATA1__SD1_DATA1,
       // MX25_PAD_SD1_DATA2__SD1_DATA2,
       // MX25_PAD_SD1_DATA3__SD1_DATA3,

shows promising results:

Board: SID1 NOAH
registered netconsole as cs1
imx-esdhc@mci0: registered as mci0
esdhc_init: enble cache snooping
esdhc_init: reset host controller
esdhc_init: controller available
esdhc_init: set clock
esdhc_init: disable BRR and BWR bits
esdhc_init: Put PROCTL reg back
esdhc_init: Set timeout to max value
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=0
esdhc_send_cmd: send transfer type=0
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
mci_go_idle: send command returned with 0
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=426
esdhc_send_cmd: send transfer type=135921664
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
mci@mci0: SD Card Rev. 2.00 or later detected
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=0
esdhc_send_cmd: send transfer type=924450816
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=1077280768
esdhc_send_cmd: send transfer type=687996928
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=0
esdhc_send_cmd: send transfer type=924450816
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=1077280768
esdhc_send_cmd: send transfer type=687996928
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=0
esdhc_send_cmd: send transfer type=924450816
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=1077280768
esdhc_send_cmd: send transfer type=687996928
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=0
esdhc_send_cmd: send transfer type=924450816
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=1077280768
esdhc_send_cmd: send transfer type=687996928
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=0
esdhc_send_cmd: send transfer type=924450816
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=1077280768
esdhc_send_cmd: send transfer type=687996928
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
mci@mci0: Put the Card in Identify Mode
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=0
esdhc_send_cmd: send transfer type=34144256
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
mci@mci0: Card's identification data is: 1B534D30-30303030-101ABB6A-9500AB00
mci@mci0: Get/Set relative address
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=0
esdhc_send_cmd: send transfer type=52035584
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
mci@mci0: Get card's specific data
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=131072
esdhc_send_cmd: send transfer type=151584768
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
mci@mci0: Card's specific data is: 007FFF32-5B5A83BA-F6DBDFFF-0E800000
mci@mci0: Transfer speed: 25000000
mci@mci0: Max. block length are: Write=1024, Read=1024 Bytes
mci@mci0: Capacity: 1910 MiB
mci@mci0: Limiting max. read block size down to 512
mci@mci0: Limiting max. write block size down to 512
mci@mci0: Read block length: 512, Write block length: 512
mci@mci0: Select the card, and put it into Transfer Mode
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=131072
esdhc_send_cmd: send transfer type=119209984
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
mci@mci0: Changing transfer frequency
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=131072
esdhc_send_cmd: send transfer type=924450816
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
mci@mci0: Trying to read the SCR (try 1 of 3)
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: setup data transfer
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=0
esdhc_send_cmd: send transfer type=859439121
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: setup data transfer
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=16777201
esdhc_send_cmd: send transfer type=104464401
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: setup data transfer
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=-2130706447
esdhc_send_cmd: send transfer type=104464401
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
mci@mci0: Prepare for bus width change
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=131072
esdhc_send_cmd: send transfer type=924450816
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
mci@mci0: Set SD bus width to 4 bit
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=2
esdhc_send_cmd: send transfer type=102367232
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=512
esdhc_send_cmd: send transfer type=270139392
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
mci@mci0: Card is up and running now, registering as a disk
mci@mci0: registered disk0
mci@mci0: mci_sd_read: Read 1 block(s), starting at 0
esdhc_send_cmd: wait at least 8 SD clock cycles
esdhc_send_cmd: setup data transfer
esdhc_send_cmd: figure out transfer arguments
esdhc_send_cmd: send command=0
esdhc_send_cmd: send transfer type=289013777
esdhc_send_cmd: wait on timeout
esdhc_send_cmd: wait for command to complete
mci@mci0: No partition table found
mci@mci0: SD Card successfully added
ehci@ehci0: USB EHCI 1.00
cfi_flash@cfi_flash0: found cfi flash at a0000000, size 67108864
Malloc space: 0x83b00000 -> 0x83efffff (size  4 MB)
Stack space : 0x83af8000 -> 0x83b00000 (size 32 kB)
envfs: wrong magic on /dev/env0
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
id1-noah:/ devinfo mci0
resources:
driver: mci

 Card:
  Attached is an SD Card (Version: 2.0)
  Capacity: 1910 MiB
   CID: 1B534D30-30303030-101ABB6A-9500AB00
   CSD: 007FFF32-5B5A83BA-F6DBDFFF-0E800000
  Max. transfer speed: 25000000 Hz
  Manufacturer ID: 1B
  OEM/Application ID: 534D
  Product name: '00000'
  Product revision: 1.0
  Serial no: 448490133
  Manufacturing date: 11.2010
no parameters available

What's going on here? I'll investigate this further, because in real life I
have massive SD card write speed issues on my mx25 device on any kernel
tested from 2.6.37 to 3.3.4 so far.

Best regards
Roberto

--14dae93403d73d130804c0aff5fd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Sascha<div><br></div><div>Thanks for your reply.<br><br></div><div>&gt; =
=A0No information available:<br><div class=3D"gmail_quote"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">


<div><div>
&gt; =A0 MCI card not probed yet<br>
&gt; Parameters:<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0probe =3D 0<br>
&gt; sid1-noah:/ mci0.probe=3D1<br>
&gt; imx-esdhc@imx-esdhc0: timeout 1<br>
&gt; Cannot reset the SD/MMC card<br>
&gt; set parameter: Connection timed out<br>
&gt; sid1-noah:/<br>
&gt;<br>
&gt; Any ideas? What are possible causes of this?<br>
<br>
</div></div>Does the SD card work in the first stage loader? If yes, you co=
uld try<br>
to remove the mux setup from barebox, so that you can be sure that you<br>
do not misconfigure things that were already configured correctly.<br>
I have no hardware handy to test the driver on a i.MX25, but Erics<br>
Eukrea board has MMC support, so I believe the driver should work in<br>
general.<br><font color=3D"#888888"><br></font></blockquote><div><br></div>=
<div>I have sprinkled some printf&#39;s over the code and enabled DEBUG in =
the mci driver. It goes into timeout:</div><div><br></div><div><div>Board: =
SID1 NOAH</div>


<div>registered netconsole as cs1</div><div>imx-esdhc@mci0: registered as m=
ci0</div><div>esdhc_init: enble cache snooping</div><div>esdhc_init: reset =
host controller</div><div>esdhc_init: controller available</div><div>esdhc_=
init: set clock</div>


<div>esdhc_init: disable BRR and BWR bits</div><div>esdhc_init: Put PROCTL =
reg back</div><div>esdhc_init: Set timeout to max value</div><div>esdhc_sen=
d_cmd: wait at least 8 SD clock cycles</div><div>esdhc_send_cmd: figure out=
 transfer arguments</div>


<div>esdhc_send_cmd: send command=3D0</div><div>esdhc_send_cmd: send transf=
er type=3D0</div><div>esdhc_send_cmd: wait on timeout</div><div>imx-esdhc@i=
mx-esdhc0: timeout 1</div><div>mci_go_idle: send command returned with -110=
</div>


<div>mci@mci0: Activating IDLE state failed: -110</div><div>Cannot reset th=
e SD/MMC card</div><div>ehci@ehci0: USB EHCI 1.00</div><div>cfi_flash@cfi_f=
lash0: found cfi flash at a0000000, size 67108864</div><div>Malloc space: 0=
x83b00000 -&gt; 0x83efffff (size =A04 MB)</div>


<div>Stack space : 0x83af8000 -&gt; 0x83b00000 (size 32 kB)</div><div>envfs=
: wrong magic on /dev/env0</div><div>no valid environment found on /dev/env=
0. Using default environment</div><div>running /env/bin/init...</div></div>


<div><br></div><div>Checking=A0drivers/mci/imx-esdhc.c:</div><div><br></div=
><div>=A0 =A0 =A0 =A0/* Wait for the command to complete */</div><div>=A0 =
=A0 =A0 =A0 ret =3D wait_on_timeout(100 * MSECOND,</div><div>=A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 esdhc_read32(&amp;regs-&gt;irqstat) &am=
p; IRQSTAT_CC);</div>


<div>=A0 =A0 =A0 =A0 if (ret) {</div><div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 d=
ev_err(host-&gt;dev, &quot;timeout 1\n&quot;);</div><div>=A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 return -ETIMEDOUT;</div><div>=A0 =A0 =A0 =A0 }</div><div><b=
r></div><div>One would suppose that 100msecs should be more than enough, co=
nsidering the slow speed one would see. Could there be an issue with the do=
zen or so errata from Freescale with regard to SD card? What else could cau=
se the card not to reply within the large timeout specified?</div>


<div><br></div><div>Funny enough, commenting the following IOMUX pad settin=
gs specific to the ESDHC:</div><div>=A0</div><div><div>=A0 =A0 =A0 =A0// MX=
25_PAD_SD1_CMD__SD1_CMD,</div><div>=A0 =A0 =A0 =A0// MX25_PAD_SD1_CLK__SD1_=
CLK,</div><div>

=A0 =A0 =A0 =A0// MX25_PAD_SD1_DATA0__SD1_DATA0,</div><div>=A0 =A0 =A0 =A0/=
/ MX25_PAD_SD1_DATA1__SD1_DATA1,</div><div>=A0 =A0 =A0 =A0// MX25_PAD_SD1_D=
ATA2__SD1_DATA2,</div><div>=A0 =A0 =A0 =A0// MX25_PAD_SD1_DATA3__SD1_DATA3,=
</div></div><div><br></div>
<div>
shows promising results:</div>
<div><br></div><div><div>Board: SID1 NOAH</div><div>registered netconsole a=
s cs1</div><div>imx-esdhc@mci0: registered as mci0</div><div>esdhc_init: en=
ble cache snooping</div><div>esdhc_init: reset host controller</div><div>


esdhc_init: controller available</div><div>esdhc_init: set clock</div><div>=
esdhc_init: disable BRR and BWR bits</div><div>esdhc_init: Put PROCTL reg b=
ack</div><div>esdhc_init: Set timeout to max value</div><div>esdhc_send_cmd=
: wait at least 8 SD clock cycles</div>


<div>esdhc_send_cmd: figure out transfer arguments</div><div>esdhc_send_cmd=
: send command=3D0</div><div>esdhc_send_cmd: send transfer type=3D0</div><d=
iv>esdhc_send_cmd: wait on timeout</div><div>esdhc_send_cmd: wait for comma=
nd to complete</div>


<div>mci_go_idle: send command returned with 0</div><div>esdhc_send_cmd: wa=
it at least 8 SD clock cycles</div><div>esdhc_send_cmd: figure out transfer=
 arguments</div><div>esdhc_send_cmd: send command=3D426</div><div>esdhc_sen=
d_cmd: send transfer type=3D135921664</div>


<div>esdhc_send_cmd: wait on timeout</div><div>esdhc_send_cmd: wait for com=
mand to complete</div><div>mci@mci0: SD Card Rev. 2.00 or later detected</d=
iv><div>esdhc_send_cmd: wait at least 8 SD clock cycles</div><div>esdhc_sen=
d_cmd: figure out transfer arguments</div>


<div>esdhc_send_cmd: send command=3D0</div><div>esdhc_send_cmd: send transf=
er type=3D924450816</div><div>esdhc_send_cmd: wait on timeout</div><div>esd=
hc_send_cmd: wait for command to complete</div><div>esdhc_send_cmd: wait at=
 least 8 SD clock cycles</div>


<div>esdhc_send_cmd: figure out transfer arguments</div><div>esdhc_send_cmd=
: send command=3D1077280768</div><div>esdhc_send_cmd: send transfer type=3D=
687996928</div><div>esdhc_send_cmd: wait on timeout</div><div>esdhc_send_cm=
d: wait for command to complete</div>


<div>esdhc_send_cmd: wait at least 8 SD clock cycles</div><div>esdhc_send_c=
md: figure out transfer arguments</div><div>esdhc_send_cmd: send command=3D=
0</div><div>esdhc_send_cmd: send transfer type=3D924450816</div><div>esdhc_=
send_cmd: wait on timeout</div>


<div>esdhc_send_cmd: wait for command to complete</div><div>esdhc_send_cmd:=
 wait at least 8 SD clock cycles</div><div>esdhc_send_cmd: figure out trans=
fer arguments</div><div>esdhc_send_cmd: send command=3D1077280768</div><div=
>


esdhc_send_cmd: send transfer type=3D687996928</div><div>esdhc_send_cmd: wa=
it on timeout</div><div>esdhc_send_cmd: wait for command to complete</div><=
div>esdhc_send_cmd: wait at least 8 SD clock cycles</div><div>esdhc_send_cm=
d: figure out transfer arguments</div>


<div>esdhc_send_cmd: send command=3D0</div><div>esdhc_send_cmd: send transf=
er type=3D924450816</div><div>esdhc_send_cmd: wait on timeout</div><div>esd=
hc_send_cmd: wait for command to complete</div><div>esdhc_send_cmd: wait at=
 least 8 SD clock cycles</div>


<div>esdhc_send_cmd: figure out transfer arguments</div><div>esdhc_send_cmd=
: send command=3D1077280768</div><div>esdhc_send_cmd: send transfer type=3D=
687996928</div><div>esdhc_send_cmd: wait on timeout</div><div>esdhc_send_cm=
d: wait for command to complete</div>


<div>esdhc_send_cmd: wait at least 8 SD clock cycles</div><div>esdhc_send_c=
md: figure out transfer arguments</div><div>esdhc_send_cmd: send command=3D=
0</div><div>esdhc_send_cmd: send transfer type=3D924450816</div><div>esdhc_=
send_cmd: wait on timeout</div>


<div>esdhc_send_cmd: wait for command to complete</div><div>esdhc_send_cmd:=
 wait at least 8 SD clock cycles</div><div>esdhc_send_cmd: figure out trans=
fer arguments</div><div>esdhc_send_cmd: send command=3D1077280768</div><div=
>


esdhc_send_cmd: send transfer type=3D687996928</div><div>esdhc_send_cmd: wa=
it on timeout</div><div>esdhc_send_cmd: wait for command to complete</div><=
div>esdhc_send_cmd: wait at least 8 SD clock cycles</div><div>esdhc_send_cm=
d: figure out transfer arguments</div>


<div>esdhc_send_cmd: send command=3D0</div><div>esdhc_send_cmd: send transf=
er type=3D924450816</div><div>esdhc_send_cmd: wait on timeout</div><div>esd=
hc_send_cmd: wait for command to complete</div><div>esdhc_send_cmd: wait at=
 least 8 SD clock cycles</div>


<div>esdhc_send_cmd: figure out transfer arguments</div><div>esdhc_send_cmd=
: send command=3D1077280768</div><div>esdhc_send_cmd: send transfer type=3D=
687996928</div><div>esdhc_send_cmd: wait on timeout</div><div>esdhc_send_cm=
d: wait for command to complete</div>


<div>mci@mci0: Put the Card in Identify Mode</div><div>esdhc_send_cmd: wait=
 at least 8 SD clock cycles</div><div>esdhc_send_cmd: figure out transfer a=
rguments</div><div>esdhc_send_cmd: send command=3D0</div><div>esdhc_send_cm=
d: send transfer type=3D34144256</div>


<div>esdhc_send_cmd: wait on timeout</div><div>esdhc_send_cmd: wait for com=
mand to complete</div><div>mci@mci0: Card&#39;s identification data is: 1B5=
34D30-30303030-101ABB6A-9500AB00</div><div>mci@mci0: Get/Set relative addre=
ss</div>


<div>esdhc_send_cmd: wait at least 8 SD clock cycles</div><div>esdhc_send_c=
md: figure out transfer arguments</div><div>esdhc_send_cmd: send command=3D=
0</div><div>esdhc_send_cmd: send transfer type=3D52035584</div><div>esdhc_s=
end_cmd: wait on timeout</div>


<div>esdhc_send_cmd: wait for command to complete</div><div>mci@mci0: Get c=
ard&#39;s specific data</div><div>esdhc_send_cmd: wait at least 8 SD clock =
cycles</div><div>esdhc_send_cmd: figure out transfer arguments</div><div>


esdhc_send_cmd: send command=3D131072</div><div>esdhc_send_cmd: send transf=
er type=3D151584768</div><div>esdhc_send_cmd: wait on timeout</div><div>esd=
hc_send_cmd: wait for command to complete</div><div>mci@mci0: Card&#39;s sp=
ecific data is: 007FFF32-5B5A83BA-F6DBDFFF-0E800000</div>


<div>mci@mci0: Transfer speed: 25000000</div><div>mci@mci0: Max. block leng=
th are: Write=3D1024, Read=3D1024 Bytes</div><div>mci@mci0: Capacity: 1910 =
MiB</div><div>mci@mci0: Limiting max. read block size down to 512</div><div=
>


mci@mci0: Limiting max. write block size down to 512</div><div>mci@mci0: Re=
ad block length: 512, Write block length: 512</div><div>mci@mci0: Select th=
e card, and put it into Transfer Mode</div><div>esdhc_send_cmd: wait at lea=
st 8 SD clock cycles</div>


<div>esdhc_send_cmd: figure out transfer arguments</div><div>esdhc_send_cmd=
: send command=3D131072</div><div>esdhc_send_cmd: send transfer type=3D1192=
09984</div><div>esdhc_send_cmd: wait on timeout</div><div>esdhc_send_cmd: w=
ait for command to complete</div>


<div>mci@mci0: Changing transfer frequency</div><div>esdhc_send_cmd: wait a=
t least 8 SD clock cycles</div><div>esdhc_send_cmd: figure out transfer arg=
uments</div><div>esdhc_send_cmd: send command=3D131072</div><div>esdhc_send=
_cmd: send transfer type=3D924450816</div>


<div>esdhc_send_cmd: wait on timeout</div><div>esdhc_send_cmd: wait for com=
mand to complete</div><div>mci@mci0: Trying to read the SCR (try 1 of 3)</d=
iv><div>esdhc_send_cmd: wait at least 8 SD clock cycles</div><div>esdhc_sen=
d_cmd: setup data transfer</div>


<div>esdhc_send_cmd: figure out transfer arguments</div><div>esdhc_send_cmd=
: send command=3D0</div><div>esdhc_send_cmd: send transfer type=3D859439121=
</div><div>esdhc_send_cmd: wait on timeout</div><div>esdhc_send_cmd: wait f=
or command to complete</div>


<div>esdhc_send_cmd: wait at least 8 SD clock cycles</div><div>esdhc_send_c=
md: setup data transfer</div><div>esdhc_send_cmd: figure out transfer argum=
ents</div><div>esdhc_send_cmd: send command=3D16777201</div><div>esdhc_send=
_cmd: send transfer type=3D104464401</div>


<div>esdhc_send_cmd: wait on timeout</div><div>esdhc_send_cmd: wait for com=
mand to complete</div><div>esdhc_send_cmd: wait at least 8 SD clock cycles<=
/div><div>esdhc_send_cmd: setup data transfer</div><div>esdhc_send_cmd: fig=
ure out transfer arguments</div>


<div>esdhc_send_cmd: send command=3D-2130706447</div><div>esdhc_send_cmd: s=
end transfer type=3D104464401</div><div>esdhc_send_cmd: wait on timeout</di=
v><div>esdhc_send_cmd: wait for command to complete</div><div>mci@mci0: Pre=
pare for bus width change</div>


<div>esdhc_send_cmd: wait at least 8 SD clock cycles</div><div>esdhc_send_c=
md: figure out transfer arguments</div><div>esdhc_send_cmd: send command=3D=
131072</div><div>esdhc_send_cmd: send transfer type=3D924450816</div><div>

esdhc_send_cmd: wait on timeout</div>
<div>esdhc_send_cmd: wait for command to complete</div><div>mci@mci0: Set S=
D bus width to 4 bit</div><div>esdhc_send_cmd: wait at least 8 SD clock cyc=
les</div><div>esdhc_send_cmd: figure out transfer arguments</div><div>

esdhc_send_cmd: send command=3D2</div>
<div>esdhc_send_cmd: send transfer type=3D102367232</div><div>esdhc_send_cm=
d: wait on timeout</div><div>esdhc_send_cmd: wait for command to complete</=
div><div>esdhc_send_cmd: wait at least 8 SD clock cycles</div><div>esdhc_se=
nd_cmd: figure out transfer arguments</div>


<div>esdhc_send_cmd: send command=3D512</div><div>esdhc_send_cmd: send tran=
sfer type=3D270139392</div><div>esdhc_send_cmd: wait on timeout</div><div>e=
sdhc_send_cmd: wait for command to complete</div><div>mci@mci0: Card is up =
and running now, registering as a disk</div>


<div>mci@mci0: registered disk0</div><div>mci@mci0: mci_sd_read: Read 1 blo=
ck(s), starting at 0</div><div>esdhc_send_cmd: wait at least 8 SD clock cyc=
les</div><div>esdhc_send_cmd: setup data transfer</div><div>esdhc_send_cmd:=
 figure out transfer arguments</div>


<div>esdhc_send_cmd: send command=3D0</div><div>esdhc_send_cmd: send transf=
er type=3D289013777</div><div>esdhc_send_cmd: wait on timeout</div><div>esd=
hc_send_cmd: wait for command to complete</div><div>mci@mci0: No partition =
table found</div>


<div>mci@mci0: SD Card successfully added</div><div>ehci@ehci0: USB EHCI 1.=
00</div><div>cfi_flash@cfi_flash0: found cfi flash at a0000000, size 671088=
64</div><div>Malloc space: 0x83b00000 -&gt; 0x83efffff (size =A04 MB)</div>


<div>Stack space : 0x83af8000 -&gt; 0x83b00000 (size 32 kB)</div><div>envfs=
: wrong magic on /dev/env0</div><div>no valid environment found on /dev/env=
0. Using default environment</div><div>running /env/bin/init...</div><div>


id1-noah:/ devinfo mci0</div><div>resources:</div><div>driver: mci</div><di=
v><br></div><div>=A0Card:</div><div>=A0 Attached is an SD Card (Version: 2.=
0)</div><div>=A0 Capacity: 1910 MiB</div><div>=A0 =A0CID: 1B534D30-30303030=
-101ABB6A-9500AB00</div>


<div>=A0 =A0CSD: 007FFF32-5B5A83BA-F6DBDFFF-0E800000</div><div>=A0 Max. tra=
nsfer speed: 25000000 Hz</div><div>=A0 Manufacturer ID: 1B</div><div>=A0 OE=
M/Application ID: 534D</div><div>=A0 Product name: &#39;00000&#39;</div><di=
v>=A0 Product revision: 1.0</div>


<div>=A0 Serial no: 448490133</div><div>=A0 Manufacturing date: 11.2010</di=
v><div>no parameters available</div></div><div><br></div><div>What&#39;s go=
ing on here? I&#39;ll investigate this further, because in real life I have=
 massive SD card write speed issues on my mx25 device on any kernel tested =
from 2.6.37 to 3.3.4 so far.</div>


<div><br></div><div>Best regards</div><div>Roberto</div></div></div>

--14dae93403d73d130804c0aff5fd--


--===============8252391483846978049==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8252391483846978049==--
