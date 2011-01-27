Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vms173013pub.verizon.net ([206.46.173.13])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PiQbB-0000d9-AL
	for barebox@lists.infradead.org; Thu, 27 Jan 2011 12:05:14 +0000
Received: from [192.168.1.8] ([unknown] [74.106.17.249])
	by vms173013.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0LFO00EVKK7WW340@vms173013.mailsrvcs.net> for
	barebox@lists.infradead.org; Thu, 27 Jan 2011 06:04:45 -0600 (CST)
Message-id: <4D415F49.2040705@verizon.net>
Date: Thu, 27 Jan 2011 07:04:25 -0500
From: James Robinson <jmrobinson3@verizon.net>
MIME-version: 1.0
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FEA303C69@SRV-VS06.TELEVIC.COM>
	<20110127074023.GS9041@pengutronix.de>
In-reply-to: <20110127074023.GS9041@pengutronix.de>
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
Subject: Re: i.MX27 ?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Vanalme Filip <F.Vanalme@TELEVIC.com>

On 01/27/2011 02:40 AM, Sascha Hauer wrote:
> Hi,
>
> On Wed, Jan 26, 2011 at 09:20:11AM +0100, Vanalme Filip wrote:
>> Hi,
>>
>> Anyone ported Barebox to Freescale's i.MX27PDK 3-stack ?  I'm new to
>> Barebox (or any bootloader...) and I try to port it for my i.MX27PDK,
>> but did not succeed yet. I don't get anything on the console port yet.
>> I took the i.MX27ADS as a reference, copied all its files to a new
>> board directory, and started adjusting the files. Via the debug board
>> of the i.MX27PDK (containing a CPLD), I should be able to turn on some
>> debug leds very early in the boot process, but even this did not
>> succeed (yet...). I made changes in board_init_lowlevel() of
>> lowlevel_init.S to initialize the hardware. I guess
>> board_init_lowlevel() is one of the first functions that is executed.
>> Correct ?  Because I didn't get it up and running, I tried to do
>> debugging with a PEEDI debugger. Anyone experience with it for
>> debugging Barebox ? I'm using PEEDI in combination with Eclipse
>> (Zylin) debugger. It looks like I have problems when trying to step in
>> assembler sources...
> As a first step I would try to use barebox as a second stage loader
> behind U-Boot or redboot or whatever is on your board. What do you have
> on your board?
> When using barebox as a second stage loader you can comment out
> everything in board_init_lowlevel. Provided that you are using the
> correct UART you should see something at this stage.
> What silicon revision do you have on your board? Our i.MX27ads is rev
> 1 which has some incompatibilities to other revs, so maybe this is
> where it breaks. Also, make sure that the SDRAM setup fits for your
> board. For the lowlevel setup you might want to look at Freescale
> provided sources.
>
> Hope that helps
>   Sascha
>
>
I ported Barebox to our MX27 based design a while ago. Our design was 
based on the IP-Cam, and I was able to get the I2C,Ethernet, and the HS 
USB port running. I found the hardest part was getting the PLL config 
work right. I finally just commented it out and let the defaults take 
over. There are some nice ports already and I would suggest looking at 
the systems part of Barebox already. Also start simple, disable 
everything! Even tho the board has all the hardware, don't include it in 
the beginning. I disabled USB,Ethernet,Display,I2C, and it helped a-lot. 
After serial, I would add Ethernet if you are using it. I was simple as 
turning it on. You will need to configure your MAC address. ;-)

As for debugging, I use a cheep olimex arm-usb-ocd (didn't have access 
to the JTAG debuggers at work). Remember you have to setup your ram 
before sending code to the board.  As for a debugger, used gnu tools and 
for the IDE I used insight. I run under Ubuntu and compiled the tools 
from source. (bintools,gcc,gdb, insight)

Hope it helped.
James

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
