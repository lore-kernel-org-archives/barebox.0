Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ua1tH-0006M9-MK
 for barebox@lists.infradead.org; Wed, 08 May 2013 10:46:36 +0000
Date: Wed, 8 May 2013 12:46:06 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130508124606.228f1433@skate>
In-Reply-To: <51898E2F.3010404@free-electrons.com>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <51898E2F.3010404@free-electrons.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 0/7] Basic support for Marvell Armada 370/XP SoC
To: Gregory CLEMENT <gregory.clement@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Dear Gregory CLEMENT,

On Wed, 08 May 2013 01:28:47 +0200, Gregory CLEMENT wrote:

> it was a great work, I am currently trying to use but unfortunately,
> I didn't managed to run barebox on the Armada XP OpenBlocks AX3 from
> Plathome :/
> 
> I get something like that:
> 
> kwboot -t -b barebix.bin.kw -B 115200 /dev/ttyUSB0
> Sending boot message. Please reboot the target...-
> 
> [here I power up the AX3]
> 
> Sending boot image...
>   0 % [......................................................................]
>   4 % [......................................................................]
>   9 % [......................................................................]
>  14 % [......................................................................]
>  18 % [......................................................................]
>  23 % [......................................................................]
>  28 % [......................................................................]
>  33 % [......................................................................]
>  37 % [......................................................................]
>  42 % [......................................................................]
>  47 % [......................................................................]
>  52 % [.............................................................BootROM: Invalid header ID
> Booting from NOR flash
> DDR3 Training Sequence - Ver 3.0.0

Thanks for testing!

The kwbimage.cfg for the OpenBlocks AX3 was wrong in this first version
of the patches. 'BOOT_FROM spi' should have been 'BOOT_FROM uart' if
you want the image to be bootable from the UART.

> >    An image is then later created with:
> > 
> >     ./scripts/kwbimage -x -i <path/to/kwbimage.cfg> -o <image>
> 
> I think it should be:
> ./scripts/kwbimage -c -i <path/to/kwbimage.cfg> -o <image>

Correct, will fix!

I plan to send a v2 either today or tomorrow.

Thanks again for the testing,

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
