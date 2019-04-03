Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBcAs-000252-Ij
 for barebox@lists.infradead.org; Wed, 03 Apr 2019 09:27:19 +0000
References: <1554211376557.9520@mixed-mode.de>
 <0a215323-8865-8099-7397-fa3222241d0d@pengutronix.de>
 <1554224044879.18784@mixed-mode.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ca4fb822-f08f-711a-3f11-92b08c43bd95@pengutronix.de>
Date: Wed, 3 Apr 2019 11:27:12 +0200
MIME-Version: 1.0
In-Reply-To: <1554224044879.18784@mixed-mode.de>
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
Subject: Re: AW: Issues with SPI on iMX7 Sabre Board
To: Kai Che <Kai.Che@mixed-mode.de>
Cc: Barebox List <barebox@lists.infradead.org>

Please keep the barebox mailing list <barebox@lists.infradead.org> in CC.

On 2/4/19 18:54, Kai Che wrote:
> Hi,
> 
> Good point! But unfortunately nothing changed.

Nothing? It appears barebox reports SPI buses now unlike before.

> 
> I did some debugging in /drivers/spi/spi.c and apparently there are two SPI Masters.
> 
> One has the bus number (master->bus_num =) 2  and the other one on bus number = 32767
> 
> The bus on number 2 seems to be connected to the pins on the board, but only the MOSI and CLK seems to be working when checking with the logic analyzer.

The MISO is driven by the slave. You sure it's wired up correctly?
Can you short MISO and MOSI and check if you can receive what's transmitted?

> 
> barebox@Freescale i.MX7 SabreSD Board:/ spi -v -b 2 0x2
> device config
>     bus_num       = 2
>     max_speed_hz  = 1000000
>     chip_select   = 0
>     mode          = 0x0
>     bits_per_word = 8
> 
> wrote 1 bytes
> 00000000: 02                                                 .
> read 0 bytes
> 00000000:    
> 
> The Chip Select is always low no matter what I send.

chip select is usually active low. Does the chip select change at all?

> 
> I have no idea what the SPI on bus 32767 is doing.
> 
> Did someone managed to make SPI work on the Sabre Board?

I haven't used SPI in barebox before. Maybe someone with more experience can chime in,
but that's what I could think of.

> 
> Maybe my Chip Select Pin is broken.
> 
> Kind Regards,
> 
> Kai
> 
> ________________________________________
> Von: barebox <barebox-bounces@lists.infradead.org> im Auftrag von Ahmad Fatoum <a.fatoum@pengutronix.de>
> Gesendet: Dienstag, 2. April 2019 15:47
> An: barebox@lists.infradead.org
> Betreff: Re: Issues with SPI on iMX7 Sabre Board
> 
> Hello Kai,
> 
> On 4/2/19 3:22 PM, Kai Che wrote:
>> Hi all,
>>
>> I'm trying to communicate with SPI in barebox on the MC iMX7 Sabre Board.
>>
>> I added the options in my barebox config:
>>
>> CONFIG_SPI=y
>> CONFIG_CMD_SPI=y
> 
> How about CONFIG_DRIVER_SPI_IMX?
> 
>>
>> But there is no SPI bus when I try to communicate with:
>>
>> barebox@Freescale i.MX7 SabreSD Board:/ spi 0x1
>> spi bus 0 not found
>> spi: No such device
>>
>> Could someone please tell me if a SPI driver exists for the iMX7 Sabre Board?
>>
>> Thanks a lot,
>>
>> Kai
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
> 
> 
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
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
