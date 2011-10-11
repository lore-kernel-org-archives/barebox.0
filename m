Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out5.bezeqint.net ([192.115.188.200])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RDW1K-0002jW-E5
	for barebox@lists.infradead.org; Tue, 11 Oct 2011 06:41:01 +0000
Message-ID: <4E93E4F4.8040604@wellsense-tech.com>
Date: Tue, 11 Oct 2011 08:40:52 +0200
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
MIME-Version: 1.0
References: <39A4B204C321D34DA3490E3B119D5A6C68C006F8A2@SBS2008.wellsense.local>
	<201103081635.29082.marc@cpdesign.com.au>
	<39A4B204C321D34DA3490E3B119D5A6C68C006F8A4@SBS2008.wellsense.local>
	<20110308071058.GB22012@jasper.tkos.co.il>
	<4DE1E2FA.1090907@wellsense-tech.com>
	<20110529063350.GB32378@jasper.tkos.co.il>
	<4DE1F253.4050504@wellsense-tech.com>
	<20110529072803.GE32378@jasper.tkos.co.il>
	<4E9148E5.6070102@wellsense-tech.com>
	<20111010044451.GA28707@sapphire.tkos.co.il>
In-Reply-To: <20111010044451.GA28707@sapphire.tkos.co.il>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1632694390=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: iMX35 3stack framebuffer problem
To: Baruch Siach <baruch@tkos.co.il>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

--===============1632694390==
Content-Type: multipart/alternative;
	boundary="------------000401090805060902050101"

--------------000401090805060902050101
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/10/11 06:44, Baruch Siach wrote:
> Hi Boaz,
>
> On Sun, Oct 09, 2011 at 09:10:29AM +0200, Boaz Ben-David wrote:
>> I haven't been able to solve this problem.
>> The issue I'm having here is that when I'm using a GPIO to power
>> down the LCD during the kernel boot
> [snip]
>
> My suggestion was to disable LCD backlight from Barebox BEFORE booting Linux.
> Something along the lines of:
>
> fb0.enable=0
> bootz /dev/nand0.kernel.bb
>
> (assuming that your .enable framebuffer callback does the right thing.)
> Then, once Linux boots and the kernel framebuffer driver is loaded, enable LCD
> backlight from your board's kernel code, or a shell script. This blanks you
> LCD for a relatively short time during kernel boot, which is better than
> having random flicker.
>
> baruch
>
>> On 05/29/11 10:28, Baruch Siach wrote:
>>> On Sun, May 29, 2011 at 10:14:27AM +0300, Boaz Ben-David wrote:
>>>> I think I will have to be creative on this.
>>>> The only GPIO I can use is the same as the LCD contrast pin.
>>> You probably mean LCD brightness here. If so, this is probably the best you
>>> can do if you can't power down the LCD completely with a GPIO.
>>>
>>>> I think I need to
>>>> start it as a GPIO, put 0 on it and after the FB is inited mux it
>>>> back to LCD contrast function,  if that is possible.
>>> Ugly, but definitely possible. You have the .enable callback for that.
>>>
>>> baruch
>>>
>>>> On 05/29/11 09:33, Baruch Siach wrote:
>>>>> Hi Boaz,
>>>>>
>>>>> On Sun, May 29, 2011 at 09:08:58AM +0300, Boaz Ben-David wrote:
>>>>>> Revisiting the issue below, it there a convinient way
>>>>>> to use the FB in barebox without creating a flicker on the LCD in
>>>>>> the transition from Barebox to the kernel?
>>>>> Probably not, at the moment.
>>>>>
>>>>> One big problem (not the only one) is that the mx3fb driver uses DMA to
>>>>> transfer the display image from the system RAM to the LCD. The ARM booting
>>>>> document, however, requires the bootloader to "quiesce all DMA capable
>>>>> devices" (Documentation/arm/Booting).
>>>>>
>>>>> The best you can achieve (assuming you have designed your hardware correctly)
>>>>> is to blank your LCD using a GPIO just before booting the kernel, and then
>>>>> switch this GPIO again just after painting your logo from the newly boot
>>>>> kernel.
>>>>>
>>>>> baruch
>>>>>
>>>>>> On 03/08/11 09:10, Baruch Siach wrote:
>>>>>>> Hi Boaz,
>>>>>>>
>>>>>>> On Tue, Mar 08, 2011 at 09:03:55AM +0200, Boaz Ben-David wrote:
>>>>>>>> Yes, I am using the freescale kernel unfotunately.
>>>>>>>> Do you know of some way to fix this (a patch for the freescale kernel
>>>>>>>> maybe)?
>>>>>>> A simple way to check whether this is the problems is to just disable the
>>>>>>> framebuffer in the kernel build, and make sure that you can boot again.
>>>>>>>
>>>>>>> Then, the fix for this problem is to move the request_irq() call to the end of
>>>>>>> the .probe routine.
>>>>>>>
>>>>>>> You should not expect any kind of support from Freescale for their released
>>>>>>> Linux kernels.
>>>>>>>
>>>>>>> baruch
>>>>>>>
>>>>>>>> On Tue, 2011-03-08 at 16:35 +1100, Marc Reilly wrote:
>>>>>>>>> On Tuesday, March 08, 2011 03:35:10 am Boaz Ben-David wrote:
>>>>>>>>>> Hi,
>>>>>>>>>>
>>>>>>>>>> When using the iMX35 freescale 3stack we are having some issues with the FB
>>>>>>>>>> driver. On device boot we enable the fb using "fb0.enable=1" and then try
>>>>>>>>>> to boot the kernel from nand. The problem is that after the kernel is
>>>>>>>>>> loaded to RAM and extracted the board hangs. If we do not init the fb0
>>>>>>>>>> device but simply boot the kernel it works fine. Trying "fb0.enable=0"
>>>>>>>>>> before booting also did not help.
>>>>>>>>>> Did anyone encounter this issue yet or are we doing something wrong?
>>>>>>>>> Are you using the freescale kernel? It doesn't handle loading the IPU driver
>>>>>>>>> if the IPU has been enabled previously.. (an IRQ fires before all the driver
>>>>>>>>> structures have been initialized and crashes)
>>>>>>>>>
>>>>>>>>> Cheers,
>>>>>>>>> Marc

Hi Baruch,


Yes, I didn't mention it, but I tried your suggestion. It works (meaning 
there's no flicker) but

the problem is that the screen is blank for about 8 seconds before I 
have control again to init it.

People here said they prefer flicker over 8 seconds of blank time...

So, this got me to trying to blank the screen from inside the kernel and 
the unblank it after it has been inited properly.

Problem is that when the GPIO module is inited the flicker has already 
happened.

Is there some hope or what I am trying to do is practically imposibble?


Thanks,


Boaz.


--------------000401090805060902050101
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html style="direction: ltr;">
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
    <style>body p { margin-bottom: 0cm; margin-top: 0pt; } </style>
  </head>
  <body style="direction: ltr;"
    bidimailui-detected-decoding-type="latin-charset" bgcolor="#ffffff"
    text="#000000">
    On 10/10/11 06:44, Baruch Siach wrote:
    <blockquote cite="mid:20111010044451.GA28707@sapphire.tkos.co.il"
      type="cite">
      <pre wrap="">Hi Boaz,

On Sun, Oct 09, 2011 at 09:10:29AM +0200, Boaz Ben-David wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">I haven't been able to solve this problem.
The issue I'm having here is that when I'm using a GPIO to power
down the LCD during the kernel boot
</pre>
      </blockquote>
      <pre wrap="">
[snip]

My suggestion was to disable LCD backlight from Barebox BEFORE booting Linux.  
Something along the lines of:

fb0.enable=0
bootz /dev/nand0.kernel.bb

(assuming that your .enable framebuffer callback does the right thing.)
Then, once Linux boots and the kernel framebuffer driver is loaded, enable LCD 
backlight from your board's kernel code, or a shell script. This blanks you 
LCD for a relatively short time during kernel boot, which is better than 
having random flicker.

baruch

</pre>
      <blockquote type="cite">
        <pre wrap="">On 05/29/11 10:28, Baruch Siach wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">On Sun, May 29, 2011 at 10:14:27AM +0300, Boaz Ben-David wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="">I think I will have to be creative on this.
The only GPIO I can use is the same as the LCD contrast pin.
</pre>
          </blockquote>
          <pre wrap="">You probably mean LCD brightness here. If so, this is probably the best you
can do if you can't power down the LCD completely with a GPIO.

</pre>
          <blockquote type="cite">
            <pre wrap="">I think I need to
start it as a GPIO, put 0 on it and after the FB is inited mux it
back to LCD contrast function,  if that is possible.
</pre>
          </blockquote>
          <pre wrap="">Ugly, but definitely possible. You have the .enable callback for that.

baruch

</pre>
          <blockquote type="cite">
            <pre wrap="">On 05/29/11 09:33, Baruch Siach wrote:
</pre>
            <blockquote type="cite">
              <pre wrap="">Hi Boaz,

On Sun, May 29, 2011 at 09:08:58AM +0300, Boaz Ben-David wrote:
</pre>
              <blockquote type="cite">
                <pre wrap="">Revisiting the issue below, it there a convinient way
to use the FB in barebox without creating a flicker on the LCD in
the transition from Barebox to the kernel?
</pre>
              </blockquote>
              <pre wrap="">Probably not, at the moment.

One big problem (not the only one) is that the mx3fb driver uses DMA to
transfer the display image from the system RAM to the LCD. The ARM booting
document, however, requires the bootloader to "quiesce all DMA capable
devices" (Documentation/arm/Booting).

The best you can achieve (assuming you have designed your hardware correctly)
is to blank your LCD using a GPIO just before booting the kernel, and then
switch this GPIO again just after painting your logo from the newly boot
kernel.

baruch

</pre>
              <blockquote type="cite">
                <pre wrap="">On 03/08/11 09:10, Baruch Siach wrote:
</pre>
                <blockquote type="cite">
                  <pre wrap="">Hi Boaz,

On Tue, Mar 08, 2011 at 09:03:55AM +0200, Boaz Ben-David wrote:
</pre>
                  <blockquote type="cite">
                    <pre wrap="">Yes, I am using the freescale kernel unfotunately.
Do you know of some way to fix this (a patch for the freescale kernel
maybe)?
</pre>
                  </blockquote>
                  <pre wrap="">A simple way to check whether this is the problems is to just disable the
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
                      <pre wrap="">Are you using the freescale kernel? It doesn't handle loading the IPU driver
if the IPU has been enabled previously.. (an IRQ fires before all the driver
structures have been initialized and crashes)

Cheers,
Marc
</pre>
                    </blockquote>
                  </blockquote>
                </blockquote>
              </blockquote>
            </blockquote>
          </blockquote>
        </blockquote>
      </blockquote>
      <pre wrap="">
</pre>
    </blockquote>
    <p>Hi Baruch,</p>
    <p><br>
    </p>
    <p>Yes, I didn't mention it, but I tried your suggestion. It works
      (meaning there's no flicker) but</p>
    <p>the problem is that the screen is blank for about 8 seconds
      before I have control again to init it.</p>
    <p>People here said they prefer flicker over 8 seconds of blank
      time...</p>
    <p>So, this got me to trying to blank the screen from inside the
      kernel and the unblank it after it has been inited properly.</p>
    <p>Problem is that when the GPIO module is inited the flicker has
      already happened.</p>
    <p>Is there some hope or what I am trying to do is practically
      imposibble?</p>
    <p><br>
    </p>
    <p>Thanks,</p>
    <p><br>
    </p>
    <p>Boaz.<br>
    </p>
  </body>
</html>

--------------000401090805060902050101--


--===============1632694390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1632694390==--
