Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ffpj7-0003pL-TC
 for barebox@lists.infradead.org; Wed, 18 Jul 2018 16:55:02 +0000
Received: by mail-it0-x244.google.com with SMTP id p17-v6so5284880itc.2
 for <barebox@lists.infradead.org>; Wed, 18 Jul 2018 09:54:47 -0700 (PDT)
MIME-Version: 1.0
References: <461871869.117927.1531898866247@mail.vodafone.de>
In-Reply-To: <461871869.117927.1531898866247@mail.vodafone.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 18 Jul 2018 09:54:34 -0700
Message-ID: <CAHQ1cqFHRFYzKnjhD4-2+=-5dC8AGQNYKyuPZbwp8yWUauXAfw@mail.gmail.com>
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
Subject: Re: imx7d enable second core
To: giorgio.nicole@arcor.de
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jul 18, 2018 at 12:28 AM Giorgio Dal Molin
<giorgio.nicole@arcor.de> wrote:
>
> Hi all,
>
> I'm currently working with the imx7d sabre board from NXP.
>
> I have now a running barebox bootloader and a booting kernel.
>
> My problem is now that, apparently, only one core is active:
>
> ...
> commandline: console=ttymxc0,115200n8 ip=11.0.0.4::11.0.0.2:255.0.0.0::eth0: root=/dev/mmcblk0p2 rootdelay=1
> Starting kernel in secure mode

AFAIK, this means that you are booting in secure mode and secure
monitor code, which also implements PSCI needed for SMP to work, will
_not_ be installed by Barebox. One way to fix this would be to set:

 global.bootm.secure_state=nonsecure

before booting Linux. Doing that I get:

# lscpu -e
CPU SOCKET CORE ONLINE MAXMHZ   MINMHZ
0   0      0    yes    996.0000 792.0000
1   0      1    yes    996.0000 792.0000
#

on my SabreSD board.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
