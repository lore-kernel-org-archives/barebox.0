Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PsyQY-0004nB-SU
	for barebox@lists.infradead.org; Fri, 25 Feb 2011 14:13:51 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Fri, 25 Feb 2011 15:13:48 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00CD5@SRV-VS06.TELEVIC.COM>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00CD1@SRV-VS06.TELEVIC.COM>
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00CD1@SRV-VS06.TELEVIC.COM>
Content-Language: en-US
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: writing environment in NAND flash
To: Vanalme Filip <F.Vanalme@TELEVIC.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: barebox-bounces@lists.infradead.org [mailto:barebox-
> bounces@lists.infradead.org] On Behalf Of Vanalme Filip
> Sent: vrijdag 25 februari 2011 14:50
> To: barebox@lists.infradead.org
> Subject: writing environment in NAND flash
> 
> I have problems to save my environment settings. Although I set e.g. the MAC
> address and some other values and do the saveenv command, after reset, all
> settings have disappeared.
> In the logging on the console port, I detected this :
> "wrong crc on env
> no valid environment found on /dev/env0. Using default environment"
> 
> That will be, of course, the cause why the settings disappear.
> Further investigation with debugging enabled in nand_imx.c showed that Barebox
> reads 4 pages when starting up (0x80..0x83). That looks OK, because the
> environment's size is 6156 bytes. So, indeen 4 pages needed. However, when
> saving the environment, I only see appear one page write, i.e. on page 0x80. Of
> course, when reading back the four pages, the 2nd, 3rd and 4th page have all FF
> because they have never been written (causing a wrong CRC). Any idea why I
> only see 1 page write when saving the environment although the size is 6156
> bytes ? Any hints where to look in the sources ?
> 
> Thanks in advance !
> 
> 
> 
> Filip
> 
[Filip]  Sorry for sending this message twice to the mailing list....

I have found the cause of this problem.
I have CONFIG_MTD_NAND_VERIFY_WRITE=y.
So, after a write, the code performs a read to verify the written data. For i.MX27, this mean that the function imx_nand_very_buf() is called. Well, that function looks like this :

static int
imx_nand_verify_buf (struct mtd_info *mtd, const u_char * buf, int len) {
  return -EFAULT;
}

Yep...verification always fails... !
Must be a function that still is under development, no ? (although I would have expected a "TODO" somewhere in that function....).

Two things I can do : set the configuration flag to n or add code to this function to really verify the written data.

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
