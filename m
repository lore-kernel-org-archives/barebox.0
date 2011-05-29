Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out5.bezeqint.net ([192.115.188.200])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QQZBh-0007Ao-C6
	for barebox@lists.infradead.org; Sun, 29 May 2011 06:09:23 +0000
Message-ID: <4DE1E2FA.1090907@wellsense-tech.com>
Date: Sun, 29 May 2011 09:08:58 +0300
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
MIME-Version: 1.0
References: <39A4B204C321D34DA3490E3B119D5A6C68C006F8A2@SBS2008.wellsense.local>
	<201103081635.29082.marc@cpdesign.com.au>
	<39A4B204C321D34DA3490E3B119D5A6C68C006F8A4@SBS2008.wellsense.local>
	<20110308071058.GB22012@jasper.tkos.co.il>
In-Reply-To: <20110308071058.GB22012@jasper.tkos.co.il>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1424481655=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: iMX35 3stack framebuffer problem
To: Baruch Siach <baruch@tkos.co.il>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============1424481655==
Content-Type: multipart/alternative;
	boundary="------------070100010805090101000609"

--------------070100010805090101000609
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Revisiting the issue below, it there a convinient way
to use the FB in barebox without creating a flicker on the LCD in the 
transition
from Barebox to the kernel?

Thanks,

Boaz.

On 03/08/11 09:10, Baruch Siach wrote:
> Hi Boaz,
>
> On Tue, Mar 08, 2011 at 09:03:55AM +0200, Boaz Ben-David wrote:
>> Yes, I am using the freescale kernel unfotunately.
>> Do you know of some way to fix this (a patch for the freescale kernel
>> maybe)?
> A simple way to check whether this is the problems is to just disable the
> framebuffer in the kernel build, and make sure that you can boot again.
>
> Then, the fix for this problem is to move the request_irq() call to the end of
> the .probe routine.
>
> You should not expect any kind of support from Freescale for their released
> Linux kernels.
>
> baruch
>
>> On Tue, 2011-03-08 at 16:35 +1100, Marc Reilly wrote:
>>> On Tuesday, March 08, 2011 03:35:10 am Boaz Ben-David wrote:
>>>> Hi,
>>>>
>>>> When using the iMX35 freescale 3stack we are having some issues with the FB
>>>> driver. On device boot we enable the fb using "fb0.enable=1" and then try
>>>> to boot the kernel from nand. The problem is that after the kernel is
>>>> loaded to RAM and extracted the board hangs. If we do not init the fb0
>>>> device but simply boot the kernel it works fine. Trying "fb0.enable=0"
>>>> before booting also did not help.
>>>> Did anyone encounter this issue yet or are we doing something wrong?
>>> Are you using the freescale kernel? It doesn't handle loading the IPU driver
>>> if the IPU has been enabled previously.. (an IRQ fires before all the driver
>>> structures have been initialized and crashes)
>>>
>>> Cheers,
>>> Marc


-- 


*Boaz Ben-David*
R&D Engineer

	

cid:image001.jpg@01CBF829.06DE9870

*Tel:*+972.2.6470.709

	

*Mob:*+972.54.678.1511**

	

*Email**: *boaz.bd@wellsense-tech.com

	

www.themapsystem.com 
<redir.aspx?C=e6361e2526464b699e255e33ea5cfebb&URL=http%3a%2f%2fwww.themapsystem.com%2f>

cid:image002.gif@01CBF829.06DE9870 Please consider the impact on the 
environment before printing this e-mail and/or the attachment(s).



--------------070100010805090101000609
Content-Type: multipart/related;
	boundary="------------090109030000040803010503"

--------------090109030000040803010503
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#ffffff" text="#000000">
    Hi,<br>
    <br>
    Revisiting the issue below, it there a convinient way<br>
    to use the FB in barebox without creating a flicker on the LCD in
    the transition <br>
    from Barebox to the kernel?<br>
    <br>
    Thanks,<br>
    <br>
    Boaz.<br>
    <br>
    On 03/08/11 09:10, Baruch Siach wrote:
    <blockquote cite="mid:20110308071058.GB22012@jasper.tkos.co.il"
      type="cite">
      <pre wrap="">Hi Boaz,

On Tue, Mar 08, 2011 at 09:03:55AM +0200, Boaz Ben-David wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Yes, I am using the freescale kernel unfotunately.
Do you know of some way to fix this (a patch for the freescale kernel
maybe)?
</pre>
      </blockquote>
      <pre wrap="">
A simple way to check whether this is the problems is to just disable the 
framebuffer in the kernel build, and make sure that you can boot again.

Then, the fix for this problem is to move the request_irq() call to the end of 
the .probe routine.

You should not expect any kind of support from Freescale for their released 
Linux kernels.

baruch

</pre>
      <blockquote type="cite">
        <pre wrap="">On Tue, 2011-03-08 at 16:35 +1100, Marc Reilly wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">On Tuesday, March 08, 2011 03:35:10 am Boaz Ben-David wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="">Hi,

When using the iMX35 freescale 3stack we are having some issues with the FB
driver. On device boot we enable the fb using "fb0.enable=1" and then try
to boot the kernel from nand. The problem is that after the kernel is
loaded to RAM and extracted the board hangs. If we do not init the fb0
device but simply boot the kernel it works fine. Trying "fb0.enable=0"
before booting also did not help.
Did anyone encounter this issue yet or are we doing something wrong?
</pre>
          </blockquote>
          <pre wrap="">
Are you using the freescale kernel? It doesn't handle loading the IPU driver 
if the IPU has been enabled previously.. (an IRQ fires before all the driver 
structures have been initialized and crashes)

Cheers,
Marc
</pre>
        </blockquote>
      </blockquote>
      <pre wrap="">
</pre>
    </blockquote>
    <br>
    <br>
    <div class="moz-signature">-- <br>
      <meta http-equiv="content-type" content="text/html;
        charset=ISO-8859-1">
      <title></title>
      <div class="moz-signature">
        <div class="moz-signature">
          <div>
            <table class="x_MsoNormalTable" border="0" cellpadding="0"
              cellspacing="0">
              <tbody>
                <tr>
                  <td style="padding: 0cm;"><br>
                  </td>
                </tr>
                <tr>
                  <td style="padding: 0cm;">
                    <table class="x_MsoNormalTable" border="0"
                      cellpadding="0" cellspacing="0">
                      <tbody>
                        <tr>
                          <td style="padding: 0cm;">
                            <table class="x_MsoNormalTable"
                              style="width: 100%;" border="0"
                              cellpadding="0" width="100%">
                              <tbody>
                                <tr>
                                  <td style="padding: 1.5pt 1.5pt 1.5pt
                                    3pt;">
                                    <p class="x_MsoNormal"
                                      style="text-align: left;
                                      line-height: 115%; direction: ltr;
                                      unicode-bidi: embed;"> <span
                                        style="color: rgb(31, 73, 125);"><br>
                                      </span><b><span style="color:
                                          rgb(102, 102, 102);">Boaz
                                          Ben-David</span></b><span
                                        style="color: rgb(102, 102,
                                        102);"><br>
                                        R&amp;D Engineer</span><span
                                        style="color: rgb(102, 102,
                                        102);"></span></p>
                                  </td>
                                  <td style="width: 112.5pt; padding:
                                    1.5pt 1.5pt 1.5pt 3pt;"
                                    valign="bottom" width="150">
                                    <p class="x_MsoNormal"
                                      style="text-align: left;
                                      line-height: 115%; direction: ltr;
                                      unicode-bidi: embed;"> <span
                                        style="font-size: 10pt;
                                        line-height: 115%; color:
                                        rgb(31, 73, 125);"><img
                                          id="x_Picture_x0020_1"
                                          src="cid:part1.02050307.05010406@wellsense-tech.com"
alt="cid:image001.jpg@01CBF829.06DE9870" height="51" width="148"></span><span
                                        style="font-size: 10pt;
                                        line-height: 115%; color:
                                        rgb(31, 73, 125);"></span></p>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </td>
                        </tr>
                        <tr>
                          <td style="padding: 0cm;">
                            <table class="x_MsoNormalTable"
                              style="width: 97.84%; border-width: 1pt
                              medium medium; border-style: solid none
                              none; border-color: rgb(153, 153, 153)
                              -moz-use-text-color -moz-use-text-color;"
                              border="1" cellpadding="0" width="97%">
                              <tbody>
                                <tr>
                                  <td style="border-width: medium 1pt
                                    medium medium; border-style: none
                                    solid none none; border-color:
                                    -moz-use-text-color rgb(153, 153,
                                    153) -moz-use-text-color
                                    -moz-use-text-color; padding: 0cm
                                    3.75pt 0.75pt 3pt;" nowrap="nowrap">
                                    <p class="x_MsoNormal"
                                      style="margin-right: 1.5pt;
                                      text-align: center; line-height:
                                      115%; direction: ltr;
                                      unicode-bidi: embed;"
                                      align="center"> <b><span
                                          style="font-size: 9pt;
                                          line-height: 115%; color:
                                          rgb(102, 102, 102);">Tel:</span></b><span
                                        style="font-size: 9pt;
                                        line-height: 115%; color:
                                        rgb(102, 102, 102);">
                                        +972.2.6470.709</span><span
                                        style="font-size: 9pt;
                                        line-height: 115%; color:
                                        rgb(102, 102, 102);"></span></p>
                                  </td>
                                  <td style="border-width: medium 1pt
                                    medium medium; border-style: none
                                    solid none none; border-color:
                                    -moz-use-text-color rgb(153, 153,
                                    153) -moz-use-text-color
                                    -moz-use-text-color; padding: 0cm
                                    3.75pt 0.75pt 3pt;" nowrap="nowrap">
                                    <p class="x_MsoNormal"
                                      style="margin-right: 1.5pt;
                                      text-align: center; line-height:
                                      115%; direction: ltr;
                                      unicode-bidi: embed;"
                                      align="center"> <b><span
                                          style="font-size: 9pt;
                                          line-height: 115%; color:
                                          rgb(102, 102, 102);">Mob:</span></b><span
                                        style="font-size: 9pt;
                                        line-height: 115%; color:
                                        rgb(102, 102, 102);">
                                        +972.54.678.1511</span><b><span
                                          style="font-size: 9pt;
                                          line-height: 115%; color:
                                          rgb(102, 102, 102);"></span></b></p>
                                  </td>
                                  <td style="border-width: medium 1pt
                                    medium medium; border-style: none
                                    solid none none; border-color:
                                    -moz-use-text-color rgb(153, 153,
                                    153) -moz-use-text-color
                                    -moz-use-text-color; padding: 0cm
                                    3.75pt 0.75pt 3pt;" nowrap="nowrap">
                                    <p class="x_MsoNormal"
                                      style="margin-right: 1.5pt;
                                      text-align: center; line-height:
                                      115%; direction: ltr;
                                      unicode-bidi: embed;"
                                      align="center"> <b><span
                                          style="font-size: 9pt;
                                          line-height: 115%; color:
                                          rgb(102, 102, 102);">Email</span></b><b><span
                                          style="font-size: 9pt;
                                          line-height: 115%; color:
                                          rgb(127, 127, 127);">: </span></b><span
                                        style="font-size: 9pt;
                                        line-height: 115%; color:
                                        rgb(127, 127, 127);"><a class="moz-txt-link-abbreviated" href="mailto:boaz.bd@wellsense-tech.com">boaz.bd@wellsense-tech.com</a></span><span
                                        style="font-size: 9pt;
                                        line-height: 115%; color:
                                        rgb(127, 127, 127);"></span></p>
                                  </td>
                                  <td style="border: medium none;
                                    padding: 0cm 0.75pt 0.75pt 3pt;"
                                    nowrap="nowrap">
                                    <p class="x_MsoNormal"
                                      style="margin-right: 1.5pt;
                                      text-align: right; line-height:
                                      115%; direction: ltr;
                                      unicode-bidi: embed;"
                                      align="right"> <span
                                        style="font-size: 9pt;
                                        line-height: 115%; color:
                                        rgb(102, 102, 102);">&nbsp;</span></p>
                                    <p class="x_MsoNormal"
                                      style="margin-right: 1.5pt;
                                      text-align: right; line-height:
                                      115%; direction: ltr;
                                      unicode-bidi: embed;"
                                      align="right"> <span
                                        style="font-size: 9pt;
                                        line-height: 115%; color:
                                        rgb(102, 102, 102);"><a
href="redir.aspx?C=e6361e2526464b699e255e33ea5cfebb&amp;URL=http%3a%2f%2fwww.themapsystem.com%2f"
                                          target="_blank"><span
                                            style="line-height: 115%;">www.themapsystem.com</span></a></span></p>
                                    <p class="x_MsoNormal"
                                      style="margin-right: 1.5pt;
                                      text-align: right; line-height:
                                      115%; direction: ltr;
                                      unicode-bidi: embed;"
                                      align="right"> <span
                                        style="font-size: 9pt;
                                        line-height: 115%; color:
                                        rgb(102, 102, 102);">&nbsp;</span><span
                                        style="font-size: 9pt;
                                        line-height: 115%; color:
                                        rgb(102, 102, 102);"></span></p>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </td>
                        </tr>
                        <tr style="height: 0.75pt;">
                          <td style="padding: 0cm; height: 0.75pt;">
                            <table class="x_MsoNormalTable" border="0"
                              cellpadding="0">
                              <tbody>
                                <tr style="height: 32.25pt;">
                                  <td style="padding: 0.75pt 0.75pt
                                    0.75pt 3pt; height: 32.25pt;"
                                    valign="top">
                                    <p class="x_MsoNormal"
                                      style="text-align: left;
                                      line-height: 115%; direction: ltr;
                                      unicode-bidi: embed;"> <span
                                        style="font-size: 7pt;
                                        line-height: 115%; color:
                                        rgb(102, 102, 102);"><img
                                          id="x_Picture_x0020_2"
                                          src="cid:part2.03000407.09080305@wellsense-tech.com"
alt="cid:image002.gif@01CBF829.06DE9870" border="0" height="11"
                                          width="11">&nbsp;Please consider
                                        the impact on the environment
                                        before printing this e-mail
                                        and/or the attachment(s).</span><span
                                        style="font-size: 7pt;
                                        line-height: 115%; color:
                                        rgb(102, 102, 102);"></span></p>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
                <tr style="height: 0.75pt;">
                  <td style="padding: 0cm; height: 0.75pt;"><br>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>

--------------090109030000040803010503
Content-Type: image/jpeg; name="image001.jpg"
Content-Transfer-Encoding: base64
Content-ID: <part1.02050307.05010406@wellsense-tech.com>
Content-Disposition: inline; filename="image001.jpg"

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8l
JCIfIiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/2wBDAQoLCw4NDhwQEBw7KCIo
Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozv/wAAR
CAAzAJQDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAA
AgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkK
FhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWG
h4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl
5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREA
AgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYk
NOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOE
hYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk
5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2aimo6SLuR1YeqnIp1ABRTY5EljWSN1dG
GVZTkEUrMqKWZgqjqScAUALRUU1zBbxebPNHFH/fdgo/M0lvd212he2uIp1HVo3DD9KAOXuv
+St2P/YIk/8ARgo8E/8AIX8Vf9hZv/QRRdf8lbsf+wRJ/wCjBR4J/wCQv4q/7Czf+gigZ11F
UINd0i5vDZwapaS3A48pJ1Lflmr9AgorMk8S6FDcfZ5dZsUlzjY1wgIP51orIjxiRXVkIyGB
yCPXNADqKrjULJoZJlvIDFH99xINq/U54qCy13SNSlMNjqdpcyDqkUysfyBoAv0UyWWKCJpZ
pEjjQZZ3YAAe5NVrHWNM1QsLDULa6KfeEMquR9cGgC5RTZJEhjaSV1RFGWZjgAfWs6DxJodz
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
HAAHSloooAKKKKAP/9k=
--------------090109030000040803010503
Content-Type: image/gif; name="image002.gif"
Content-Transfer-Encoding: base64
Content-ID: <part2.03000407.09080305@wellsense-tech.com>
Content-Disposition: inline; filename="image002.gif"

R0lGODlhCwALAOYAANzrzZ3Hc8Dbpvf68/v9+Ov04vv9+cHbp/X58f/+/rHSkP7//qLKfKXL
f5LBZKTKftrpy9/s0qTLf6XMgNvry6fMgvf79cffsMDbpZrFb6DJeJ7IdZrGbtTmwp3IdNDj
vPL47b/apOTv2O/26I6+XsjgsqPLfpzHcvb687bVl7fWl5fDat7s0LvYnfn89qvPh9Llv6HK
e5jEbcrhtPT58PL37JHAY/H37LDSjarPhuHu1J/Id7zYn5XDac3iufH2657Hdfz9+5TCZpfE
a6/RjtbnxZrFcKnOhcngsv///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAALAAsAAAdbgEmCSQYAFAiDgiwXJTtA
EzeDKBs5GgEZJxVICzQYCg9GHD0yNiEJBQ1HJkIkDjErAhY1PBIvOC1EDEMeOgQiERAdM0U+
Hz+JSQAHyIkDKS7Mgyoj0UlBMCCJgQA7
--------------090109030000040803010503--

--------------070100010805090101000609--


--===============1424481655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1424481655==--
