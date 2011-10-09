Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out3.bezeqint.net ([192.115.188.209])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RCnXB-0008KB-Be
	for barebox@lists.infradead.org; Sun, 09 Oct 2011 07:10:56 +0000
Received: from remote.wellsense-tech.com (bzq-218-57-225.cablep.bezeqint.net
	[81.218.57.225])
	by out3.bezeqint.net (Postfix) with ESMTPA id 7AB3A5E4D2A
	for <barebox@lists.infradead.org>; Sun,  9 Oct 2011 09:10:47 +0200 (IST)
Message-ID: <4E9148E5.6070102@wellsense-tech.com>
Date: Sun, 9 Oct 2011 09:10:29 +0200
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
In-Reply-To: <20110529072803.GE32378@jasper.tkos.co.il>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: iMX35 3stack framebuffer problem
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi all,

I haven't been able to solve this problem.
The issue I'm having here is that when I'm using a GPIO to power down 
the LCD during the kernel boot
the flicker had already happened. Meaning, when I finally have control 
over the GPIOs it is too late.
As far as I understand the arch specific code is called in the 
start_kernel function, and what I would like to
do is set the controlling GPIO to low before the setup_arch function is 
called in start_kernel function.
Is that even possible? I've been trying to fiddle around using physical 
addresses to do that but all I achieved is
getting the kernel stuck at boot.

Thanks,

Boaz.

On 05/29/11 10:28, Baruch Siach wrote:
> Hi Boaz,
>
> On Sun, May 29, 2011 at 10:14:27AM +0300, Boaz Ben-David wrote:
>> I think I will have to be creative on this.
>> The only GPIO I can use is the same as the LCD contrast pin.
> You probably mean LCD brightness here. If so, this is probably the best you
> can do if you can't power down the LCD completely with a GPIO.
>
>> I think I need to
>> start it as a GPIO, put 0 on it and after the FB is inited mux it
>> back to LCD contrast function,  if that is possible.
> Ugly, but definitely possible. You have the .enable callback for that.
>
> baruch
>
>> On 05/29/11 09:33, Baruch Siach wrote:
>>> Hi Boaz,
>>>
>>> On Sun, May 29, 2011 at 09:08:58AM +0300, Boaz Ben-David wrote:
>>>> Revisiting the issue below, it there a convinient way
>>>> to use the FB in barebox without creating a flicker on the LCD in
>>>> the transition from Barebox to the kernel?
>>> Probably not, at the moment.
>>>
>>> One big problem (not the only one) is that the mx3fb driver uses DMA to
>>> transfer the display image from the system RAM to the LCD. The ARM booting
>>> document, however, requires the bootloader to "quiesce all DMA capable
>>> devices" (Documentation/arm/Booting).
>>>
>>> The best you can achieve (assuming you have designed your hardware correctly)
>>> is to blank your LCD using a GPIO just before booting the kernel, and then
>>> switch this GPIO again just after painting your logo from the newly boot
>>> kernel.
>>>
>>> baruch
>>>
>>>> On 03/08/11 09:10, Baruch Siach wrote:
>>>>> Hi Boaz,
>>>>>
>>>>> On Tue, Mar 08, 2011 at 09:03:55AM +0200, Boaz Ben-David wrote:
>>>>>> Yes, I am using the freescale kernel unfotunately.
>>>>>> Do you know of some way to fix this (a patch for the freescale kernel
>>>>>> maybe)?
>>>>> A simple way to check whether this is the problems is to just disable the
>>>>> framebuffer in the kernel build, and make sure that you can boot again.
>>>>>
>>>>> Then, the fix for this problem is to move the request_irq() call to the end of
>>>>> the .probe routine.
>>>>>
>>>>> You should not expect any kind of support from Freescale for their released
>>>>> Linux kernels.
>>>>>
>>>>> baruch
>>>>>
>>>>>> On Tue, 2011-03-08 at 16:35 +1100, Marc Reilly wrote:
>>>>>>> On Tuesday, March 08, 2011 03:35:10 am Boaz Ben-David wrote:
>>>>>>>> Hi,
>>>>>>>>
>>>>>>>> When using the iMX35 freescale 3stack we are having some issues with the FB
>>>>>>>> driver. On device boot we enable the fb using "fb0.enable=1" and then try
>>>>>>>> to boot the kernel from nand. The problem is that after the kernel is
>>>>>>>> loaded to RAM and extracted the board hangs. If we do not init the fb0
>>>>>>>> device but simply boot the kernel it works fine. Trying "fb0.enable=0"
>>>>>>>> before booting also did not help.
>>>>>>>> Did anyone encounter this issue yet or are we doing something wrong?
>>>>>>> Are you using the freescale kernel? It doesn't handle loading the IPU driver
>>>>>>> if the IPU has been enabled previously.. (an IRQ fires before all the driver
>>>>>>> structures have been initialized and crashes)
>>>>>>>
>>>>>>> Cheers,
>>>>>>> Marc
>>
>> --
>>
>>
>> *Boaz Ben-David*
>> R&D Engineer
>>
>>
>>
>> cid:image001.jpg@01CBF829.06DE9870
>>
>> *Tel:*+972.2.6470.709
>>
>>
>>
>> *Mob:*+972.54.678.1511**
>>
>>
>>
>> *Email**: *boaz.bd@wellsense-tech.com
>>
>>
>>
>> www.themapsystem.com<redir.aspx?C=e6361e2526464b699e255e33ea5cfebb&URL=http%3a%2f%2fwww.themapsystem.com%2f>
>>
>> cid:image002.gif@01CBF829.06DE9870 Please consider the impact on the
>> environment before printing this e-mail and/or the attachment(s).
>>
>>
> --
>                                                       ~. .~   Tk Open Systems
> =}------------------------------------------------ooO--U--Ooo------------{=
>     - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -
>
>
> __________ Information from ESET NOD32 Antivirus, version of virus signature database 6185 (20110606) __________
>
> The message was checked by ESET NOD32 Antivirus.
>
> http://www.eset.com
>



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
