Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdL6T-0000xs-8z
 for barebox@lists.infradead.org; Mon, 13 Feb 2017 18:11:59 +0000
Received: by mail-it0-x244.google.com with SMTP id 203so14825975ith.2
 for <barebox@lists.infradead.org>; Mon, 13 Feb 2017 10:11:34 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170213082526.nwkiozcgh5ijpvhc@pengutronix.de>
References: <CAAMcf8C8_QiEOdNz+_AYYo31SSqkCJM9rjdp3cPSoX0JKAMCrA@mail.gmail.com>
 <20170213082526.nwkiozcgh5ijpvhc@pengutronix.de>
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 13 Feb 2017 19:11:33 +0100
Message-ID: <CAAMcf8BRYe3WWL84HsDtN9q6xdA_xJHvJ9P08_UbrB42nnun=w@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [USB BOOT] Help needed
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 13, 2017 at 9:25 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Vincente,
>
> On Sat, Feb 11, 2017 at 02:50:12PM +0100, Vicente Bergas wrote:
>> Hello
>>
>> Background on the issue
>> #######################
>>
>> Some time ago functionality was added to enable OMAP4 to boot over USB:
>> https://git.pengutronix.de/cgit/barebox/commit/?id=6b4dc4d4f128bd22df4d022ad37285ce4858e1e8
>> That implementation uses the usb library stored in the OMAP4 ROM.
>> The use of the OMAP4 ROM is problematic as it requires interrupts
>> and also does not allow the MMU to be enabled.
>> In fact there is an open issue with it:
>> http://lists.infradead.org/pipermail/barebox/2016-August/027880.html
>>
>> More recently a similar functionality was added to OMAP3:
>> https://git.pengutronix.de/cgit/barebox/commit/?id=1d7c8ec1431aec1c75c79dc17ecad0ab80435311
>> That implementation is using it's own way to access
>> the usb device and has no dependencies on the ROM.
>>
>> Proposed changes
>> ################
>>
>> Given this scenario I modified the OMAP4 code to access the
>> usb device directly, bypassing the ROM library, the same way
>> the OMAP3 code does.
>> Both OMAP3 and OMAP4 use the same usb device (musb, mentor-usb),
>> the only change is the base address.
>> So this modification tries to make it generic for both OMAPs,
>> although it has not been tested on OMAP3.
>> The patch with this modification follows.
>>
>> What is wrong with it
>> #####################
>>
>> Unfortunately, this modification is not working.
>> The observed behaviour is:
>> 1.- The console over usb works fine, as long as
>> there is constant activity. If there are no transfers
>> for approximately 4 seconds then the usb link is lost.
>
> Do there have to be activity from the host to the device or is it enough
> to do a "while true; do echo "huhu"; sleep 3; done" on the barebox
> console?
>

For debugging purposes barebox is using two consoles simultaneously,
one through USB and another through Serial.
If constant activity is maintained at the USB interface then there is data
sent from host to BB and BB replies echos back and it works.
If the constant activity is maintained at the Serial interface then at the
USB side there are only the echos from BB and this also works. So, no
host side transfers are required to keep the USB link alive.

> I don't exactly know how this internally works, but with USB all
> traffic is initiated by the host. If the device never answers a packet
> since it has nothing to say at the moment it might happen that the host
> thinks the device is dead. It's just an idea that you have to send some
> dummy data every few seconds.
>
>> 2.- The file system over usb works fine. Checked MD5 sums
>> of kernel image and initial ram disk, all OK.
>> 3.- Barebox reaches the start_linux function and executes
>> the kernel function pointer, so, control is transferred
>> to linux-land. But linux does not boot and
>> nothing is printed on the serial console.
>
> Have you tried earlyprintk in the Kernel? Do you also use the same
> serial console in barebox, or do you only use console over USB?
> Sometimes it happens that Linux does not have all initialization code so
> that a device does not work in Linux when it hasn't been used in barebox
> before.
>

No time has been spent in this front yet, but, the kernel is expected to use
the serial interface as console.
The kernel knows nothing about the custom protocol used in BB
 for communicating via USB.

As a side note: It would be nice if BB could use a full USB device stack
appearing as a composite gadget with serial and ethernet, all from the spl :)
But size restrictions may make this impossible.

> Sascha
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
