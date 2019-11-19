Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX0dx-0004O0-UM
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:22:01 +0000
References: <20190819133847.17015-1-s.hauer@pengutronix.de>
 <20190819133847.17015-7-s.hauer@pengutronix.de>
 <27e33ef9-bb89-dcd0-9829-6dd3036eeae9@pengutronix.de>
 <98fca2ef-9c7b-0570-ef4d-11ff92b33fa4@rempel-privat.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <bdfb5299-841a-1637-0226-f8bdfd994d76@pengutronix.de>
Date: Tue, 19 Nov 2019 11:21:56 +0100
MIME-Version: 1.0
In-Reply-To: <98fca2ef-9c7b-0570-ef4d-11ff92b33fa4@rempel-privat.de>
Content-Language: en-US
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
Subject: Re: [PATCH 6/8] ARM: Add generic device tree 2nd stage support
To: Oleksij Rempel <linux@rempel-privat.de>, barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

Hello Oleksij,

On 11/19/19 10:41 AM, Oleksij Rempel wrote:
> Am 19.11.19 um 09:26 schrieb Ahmad Fatoum:
>> I am asking because I am testing use of the generic ARM board as default
>> second stage image for the multi-image AT91s. The board specific entry point
>> generates only the PBL, which runs in SRAM to do DRAM setup and chainloads
>> the generic dt barebox from MMC to start of SDRAM and then calls it along
>> with the dtb.
> 
> Hm.. Is it possible that you can get an exception vector in the star of SDRAM?

Not when I chainload a barebox PBL. In that case, __barebox_arm_head is the
start of SDRAM and when barebox reconfigures the vector table, it will be
some bytes after that.
The exceptions vectors before barebox configures them are probably
0x0 because the ROM code didn't change it.

Why are you asking?

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
