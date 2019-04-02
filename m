Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBJlK-0003EP-Eq
 for barebox@lists.infradead.org; Tue, 02 Apr 2019 13:47:40 +0000
Received: from [2001:67c:670:100:6a05:caff:fe2d:a9b1]
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <a.fatoum@pengutronix.de>) id 1hBJlF-0007Qo-HA
 for barebox@lists.infradead.org; Tue, 02 Apr 2019 15:47:33 +0200
References: <1554211376557.9520@mixed-mode.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0a215323-8865-8099-7397-fa3222241d0d@pengutronix.de>
Date: Tue, 2 Apr 2019 15:47:30 +0200
MIME-Version: 1.0
In-Reply-To: <1554211376557.9520@mixed-mode.de>
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
Subject: Re: Issues with SPI on iMX7 Sabre Board
To: barebox@lists.infradead.org

Hello Kai,

On 4/2/19 3:22 PM, Kai Che wrote:
> Hi all,
> 
> I'm trying to communicate with SPI in barebox on the MC iMX7 Sabre Board.
> 
> I added the options in my barebox config:
> 
> CONFIG_SPI=y
> CONFIG_CMD_SPI=y

How about CONFIG_DRIVER_SPI_IMX?

> 
> But there is no SPI bus when I try to communicate with:
> 
> barebox@Freescale i.MX7 SabreSD Board:/ spi 0x1
> spi bus 0 not found
> spi: No such device
>    
> Could someone please tell me if a SPI driver exists for the iMX7 Sabre Board?
> 
> Thanks a lot,
> 
> Kai
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
