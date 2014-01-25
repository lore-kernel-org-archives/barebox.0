Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22a.google.com ([2a00:1450:4013:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W72hH-0001cm-3F
 for barebox@lists.infradead.org; Sat, 25 Jan 2014 12:50:51 +0000
Received: by mail-ee0-f42.google.com with SMTP id e49so1431737eek.1
 for <barebox@lists.infradead.org>; Sat, 25 Jan 2014 04:50:28 -0800 (PST)
Message-ID: <52E3B30F.6010509@gmail.com>
Date: Sat, 25 Jan 2014 13:50:23 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1390505010-7546-1-git-send-email-m.grzeschik@pengutronix.de>
 <1390505010-7546-3-git-send-email-m.grzeschik@pengutronix.de>
 <52E19CFB.1040908@gmail.com> <20140124130757.GB25691@pengutronix.de>
 <52E2BC43.5040601@gmail.com> <20140125094411.GD25691@pengutronix.de>
In-Reply-To: <20140125094411.GD25691@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] net: mv643xx: add driver support
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: barebox@lists.infradead.org

On 01/25/2014 10:44 AM, Michael Grzeschik wrote:
> On Fri, Jan 24, 2014 at 08:17:23PM +0100, Sebastian Hesselbarth wrote:
>> On 01/24/2014 02:07 PM, Michael Grzeschik wrote:
>>> It would be nice to see if it is also working if barebox running as
>>> first stage bootloader. Can you try to get the UART-Image [1] via xmodem
>>> transfer running?
>>
>> Booting the UART image does work with current barebox master
>>   d9a08d8bc5da ("net: phy: Fix crash when no phy is found")
>> and without your patch. I haven't applied your patch, yet.
>
> I can not reproduce that. My Images are not working with the
> uart boot mechanism. Even the first merged patches to support
> that do not boot here. What I do:
>
> sx -vv images/barebox-solidrun-cubox-uart.img < /dev/ttyUSB0 > /dev/ttyUSB0; microcom  -p /dev/ttyUSB0
> ending images/barebox-solidrun-cubox-uart.img, 1448 blocks: Give your local XMODEM receive command now.
> Bytes Sent: 185472   BPS:9738
>
> Transfer complete
> connected to /dev/ttyUSB0
> Escape character: Ctrl-\
> Type the escape character followed by c to get to the menu or q to quit
>
> ----------
>  From this point there is just silence.

I did the same except I am using minicom:

sx -vv images/barebox-solidrun-cubox-uart.img < /dev/ttyUSB0 > 
/dev/ttyUSB0; minicom -D /dev/ttyUSB0

Then hit return and you see the barebox prompt.

BTW, you can also use kwboot that is also part of barebox:

./scripts/kwboot -t -B 115200 -D 
./images/barebox-solidrun-cubox-uart.img /dev/ttyUSB0

If that also does not work, start from scratch:
make distclean
make solidrun_cubox_defconfig
make
and kwboot above

Just for the record, you are not trying this on a CuBox Pro, are you?
That would require a different RAM setup as it has 2GB and the one
shipped with barebox is for ES/1GB only.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
