Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f42.google.com ([209.85.214.42])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VddFM-00049s-NI
 for barebox@lists.infradead.org; Tue, 05 Nov 2013 09:48:29 +0000
Received: by mail-bk0-f42.google.com with SMTP id w16so1003070bkz.29
 for <barebox@lists.infradead.org>; Tue, 05 Nov 2013 01:48:04 -0800 (PST)
Message-ID: <5278BED1.1010805@kiwigrid.com>
Date: Tue, 05 Nov 2013 10:48:01 +0100
From: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
MIME-Version: 1.0
References: <52778B89.3000208@kiwigrid.com>
 <20131105074459.GA24559@pengutronix.de>
In-Reply-To: <20131105074459.GA24559@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox on i.MX53 in serial downloader boot mode
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 11/05/2013 08:44 AM, Sascha Hauer wrote:
> Hi Wjatscheslaw,
>
> On Mon, Nov 04, 2013 at 12:56:57PM +0100, Wjatscheslaw Stoljarski (Slawa) wrote:
>> Hi,
>>
>> has anyone tried to start barebox on i.MX53 in 11 boot mode (serial
>> downloader)? I've tried on Freescale Loco board with pmic da9053,
>> but without success. In 00 boot mode (internal boot) works
>> perfectly. U-Boot works in both modes. DCD in u-boot and in barebox
>> is the same. Even I can turn on LEDs with DCD in 11 boot mode on
>> Loco.
> The imx-usb-loader tool generally works here.
Yes, I can with the imx-usb-loader boot a u-boot image, but not barebox.
> I don't have a DA9053
> based Loco here. It may be that there is some bug in the code preventing
> this board to run.
May be. But I have the exact same result with a custom board that uses 
the MC34709VK PMIC.
> I just did a quick:
>
> git checkout master
> make imx_v7_defconfig
> cat images/barebox-freescale-imx53-loco.img > /dev/sde
>
> The resulting SD card works here.
>
> Could you try booting from SD card? Does that work?
In 00 boot mode it boots fine from SD and from USB. I just checked 
again. I have trouble with the 11 boot mode.

Wjatscheslaw

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
